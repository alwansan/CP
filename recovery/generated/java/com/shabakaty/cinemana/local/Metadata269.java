package com.shabakaty.cinemana.local;

import androidx.recyclerview.widget.RecyclerView;
import com.liulishuo.filedownloader.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import zendesk.core.Constants;

/* JADX INFO: loaded from: classes11.dex */
public final class Metadata269 {
    static final String[] KEYS = {"nb", "ar_title", "en_title", "custom_ar_title", "custom_en_title", "kind", "rootSeries", "season", "episodeNummer", "episode_flag", "imgObjUrl", "imgThumbObjUrl", "imgMediumThumbObjUrl", "year", "duration", "publishDate", "rate", "stars", "filmRating", "seriesRating", "finished", "ar_content", "en_content"};
    static final Map<String, Long> attempted = new LinkedHashMap();

    static boolean category(Object obj) {
        try {
            if (Arrays.asList("religious", "program", "dialogue", "biopic series", "bollywood", "entertaining", "reality", "war & politics", "soap").contains(String.valueOf(obj.getClass().getField("enTitle").get(obj)).trim().toLowerCase(Locale.ROOT).replaceAll("\\s+", " "))) {
                return false;
            }
        } catch (Exception unused) {
        }
        String[] strArr = {"imgObjUrl", "imgMediumThumbObjUrl", "imgThumbObjUrl"};
        for (int i = 0; i < 3; i++) {
            try {
                Object obj2 = obj.getClass().getField(strArr[i]).get(obj);
                if (obj2 instanceof String) {
                    URI uri = new URI((String) obj2);
                    String path = uri.getPath();
                    if (("https".equals(uri.getScheme()) || "http".equals(uri.getScheme())) && uri.getHost() != null && path != null) {
                        String strSubstring = path.substring(path.lastIndexOf(47) + 1);
                        if (strSubstring.length() > 5 && !strSubstring.toLowerCase(Locale.ROOT).matches("(null|undefined|0|_thumb|_medium_thumb)(\\.[a-z]+)?")) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    static JSONObject enrich(LocalAccountStore.Item item) throws Exception {
        String str;
        JSONObject jSONObjectLocal = local(item.id);
        if (!item.payload.isEmpty()) {
            jSONObjectLocal = merge(jSONObjectLocal, new JSONObject(item.payload));
        }
        jSONObjectLocal.put("nb", item.id);
        if (title(jSONObjectLocal, BuildConfig.FLAVOR).isEmpty()) {
            if (item.title.isEmpty()) {
                str = "عمل " + item.id;
            } else {
                str = item.title;
            }
            jSONObjectLocal.put("en_title", str);
        }
        if (!jSONObjectLocal.has("kind")) {
            jSONObjectLocal.put("kind", "1");
        }
        return jSONObjectLocal;
    }

    static String get(String str, int i) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://cinemana.shabakaty.cc/api/android/" + str).openConnection();
        try {
            httpURLConnection.setConnectTimeout(3000);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty(Constants.ACCEPT_HEADER, Constants.APPLICATION_JSON);
            try {
                Field declaredField = Class.forName("com.shabakaty.downloader.ns0").getDeclaredField("a");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                if ((obj instanceof String) && !((String) obj).isEmpty()) {
                    httpURLConnection.setRequestProperty("User-Agent", (String) obj);
                }
            } catch (Exception unused) {
            }
            httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
            int responseCode = httpURLConnection.getResponseCode();
            LocalRuntime.log("catalogue_refresh route=" + str.split("/")[0] + " status=" + responseCode);
            if (responseCode != 200) {
                throw new IOException("catalogue HTTP " + responseCode);
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            String string = byteArrayOutputStream.toString("UTF-8");
                            byteArrayOutputStream.close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            httpURLConnection.disconnect();
                            return string;
                        }
                        if (byteArrayOutputStream.size() + i2 > i) {
                            throw new IOException("catalogue limit");
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                    }
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Throwable th5) {
            httpURLConnection.disconnect();
            throw th5;
        }
    }

    static void hydrate(List<LocalAccountStore.Item> list) {
        if (LocalRuntime.app == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() + 12000;
        int i = 0;
        for (LocalAccountStore.Item item : list) {
            if (i >= 5 || System.currentTimeMillis() > jCurrentTimeMillis) {
                return;
            }
            try {
                JSONObject jSONObjectEnrich = enrich(item);
                if (missing(jSONObjectEnrich)) {
                    Map<String, Long> map = attempted;
                    Long l = map.get(item.id);
                    if (l == null || System.currentTimeMillis() - l.longValue() >= 300000) {
                        map.put(item.id, Long.valueOf(System.currentTimeMillis()));
                        while (true) {
                            Map<String, Long> map2 = attempted;
                            if (map2.size() <= 128) {
                                break;
                            } else {
                                map2.remove(map2.keySet().iterator().next());
                            }
                        }
                        i++;
                        LocalRuntime.log("metadata_repair_begin id=" + LocalRuntime.safeId(item.id));
                        JSONObject jSONObject = new JSONObject(get("allVideoInfo/id/" + item.id, 1048576));
                        if (!item.id.equals(jSONObject.optString("nb"))) {
                            throw new IOException("metadata identity");
                        }
                        persist(item.id, jSONObject);
                        LocalRuntime.log("metadata_repaired id=" + LocalRuntime.safeId(item.id));
                    }
                } else {
                    persist(item.id, jSONObjectEnrich);
                }
            } catch (Exception e) {
                LocalRuntime.failure("metadata_repair", e);
            }
        }
    }

    static JSONObject local(String str) throws Exception {
        String str2;
        LocalAccountStore.Item itemFind;
        JSONObject jSONObject = new JSONObject();
        synchronized (LocalRuntime.cache) {
            str2 = LocalRuntime.cache.get(str);
        }
        if (str2 != null) {
            jSONObject = merge(jSONObject, new JSONObject(str2));
        }
        for (LocalAccountStore.ListKind listKind : LocalAccountStore.ListKind.values()) {
            if (listKind != LocalAccountStore.ListKind.STATE && (itemFind = LocalRuntime.data().find(listKind, str)) != null && !itemFind.payload.isEmpty()) {
                jSONObject = merge(jSONObject, new JSONObject(itemFind.payload));
            }
        }
        return jSONObject;
    }

    static JSONObject merge(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        for (String str : KEYS) {
            Object objOpt = jSONObject.opt(str);
            if (!present(objOpt)) {
                objOpt = jSONObject2.opt(str);
            }
            if (present(objOpt)) {
                if (objOpt instanceof String) {
                    String str2 = (String) objOpt;
                    if (str2.length() > 4000) {
                        objOpt = str2.substring(0, 4000);
                    }
                }
                jSONObject3.put(str, objOpt);
            }
        }
        return jSONObject3;
    }

    static boolean missing(JSONObject jSONObject) {
        return title(jSONObject, BuildConfig.FLAVOR).isEmpty() || jSONObject.optString("imgObjUrl").isEmpty() || jSONObject.optString("stars").isEmpty() || jSONObject.optString("year").isEmpty();
    }

    static void persist(String str, JSONObject jSONObject) throws Exception {
        JSONObject jSONObjectMerge = merge(jSONObject, local(str));
        jSONObjectMerge.put("nb", str);
        String string = jSONObjectMerge.toString();
        if (string.length() > 20000) {
            throw new IOException("metadata limit");
        }
        LocalRuntime.data().refreshMetadata(new LocalAccountStore.Item(str, title(jSONObjectMerge, "عمل " + str), 0L, string));
        synchronized (LocalRuntime.cache) {
            LocalRuntime.cache.put(str, string);
            while (LocalRuntime.cache.size() > 64) {
                LocalRuntime.cache.remove(LocalRuntime.cache.keySet().iterator().next());
            }
        }
    }

    static boolean present(Object obj) {
        return (obj == null || obj == JSONObject.NULL || String.valueOf(obj).isEmpty() || String.valueOf(obj).equals("null")) ? false : true;
    }

    static String title(JSONObject jSONObject, String str) {
        String strOptString = jSONObject.optString("ar_title");
        if (strOptString.isEmpty()) {
            strOptString = jSONObject.optString("en_title");
        }
        return strOptString.isEmpty() ? str : strOptString;
    }
}
