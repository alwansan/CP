package com.shabakaty.cinemana.local;

import com.connectsdk.service.airplay.PListParser;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes11.dex */
public final class BackupState {
    private static final int CHUNK = 2000;
    private static final int LIMIT = 2097152;

    static boolean allowed(String str) {
        return "ca1_continue106".equals(str) || "ca1_episode_context107".equals(str);
    }

    public static Map<String, Map<String, Object>> decode(List<LocalAccountStore.Item> list) throws Exception {
        Object objValueOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (LocalAccountStore.Item item : list) {
            if (!item.id.equals("settings")) {
                JSONObject jSONObject = new JSONObject(item.payload);
                String string = jSONObject.getString("pref");
                String string2 = jSONObject.getString(PListParser.TAG_KEY);
                String string3 = jSONObject.getString("type");
                if (!allowed(string) || string2.length() > 256) {
                    throw new IOException("invalid preference");
                }
                if (string3.equals("StringChunk")) {
                    int i = jSONObject.getInt(FileDownloadModel.TOTAL);
                    int i2 = jSONObject.getInt("part");
                    if (i <= 0 || i > 1049 || i2 < 0 || i2 >= i) {
                        throw new IOException("invalid chunk");
                    }
                    String strKey = key(string, string2);
                    String[] strArr = (String[]) linkedHashMap2.get(strKey);
                    if (strArr == null) {
                        strArr = new String[i];
                        linkedHashMap2.put(strKey, strArr);
                        linkedHashMap3.put(strKey, jSONObject);
                    }
                    if (strArr.length != i || strArr[i2] != null) {
                        throw new IOException("duplicate chunk");
                    }
                    String string4 = jSONObject.getString("value");
                    if (string4.length() > CHUNK) {
                        throw new IOException("chunk limit");
                    }
                    strArr[i2] = string4;
                } else {
                    if (string3.equals("String")) {
                        objValueOf = jSONObject.getString("value");
                    } else if (string3.equals("Long")) {
                        objValueOf = Long.valueOf(jSONObject.getLong("value"));
                    } else if (string3.equals("Integer")) {
                        objValueOf = Integer.valueOf(jSONObject.getInt("value"));
                    } else if (string3.equals("Boolean")) {
                        objValueOf = Boolean.valueOf(jSONObject.getBoolean("value"));
                    } else {
                        if (!string3.equals("Float")) {
                            throw new IOException("unsupported preference");
                        }
                        double d = jSONObject.getDouble("value");
                        if (Double.isNaN(d) || Double.isInfinite(d) || Math.abs(d) > 3.4028234663852886E38d) {
                            throw new IOException("invalid float");
                        }
                        objValueOf = Float.valueOf((float) d);
                    }
                    put(linkedHashMap, string, string2, objValueOf);
                }
            }
        }
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            StringBuilder sb = new StringBuilder();
            for (String str : (String[]) entry.getValue()) {
                if (str == null) {
                    throw new IOException("missing chunk");
                }
                sb.append(str);
                if (sb.length() > LIMIT) {
                    throw new IOException("preference limit");
                }
            }
            JSONObject jSONObject2 = (JSONObject) linkedHashMap3.get(entry.getKey());
            put(linkedHashMap, jSONObject2.getString("pref"), jSONObject2.getString(PListParser.TAG_KEY), sb.toString());
        }
        return linkedHashMap;
    }

    public static List<LocalAccountStore.Item> encode(String str, String str2, Object obj) throws Exception {
        if (!allowed(str) || str2.length() > 256 || obj == null) {
            throw new IOException("invalid preference");
        }
        JSONObject jSONObjectPut = new JSONObject().put("pref", str).put(PListParser.TAG_KEY, str2).put("type", obj.getClass().getSimpleName()).put("value", obj);
        String strKey = key(str, str2);
        String string = jSONObjectPut.toString();
        int i = 0;
        if (string.length() <= 20000) {
            return Arrays.asList(new LocalAccountStore.Item(strKey, BuildConfig.FLAVOR, 0L, string));
        }
        if (obj instanceof String) {
            String str3 = (String) obj;
            if (str3.length() <= LIMIT) {
                int length = (str3.length() + 1999) / CHUNK;
                ArrayList arrayList = new ArrayList();
                while (i < length) {
                    String str4 = strKey + "_" + i;
                    JSONObject jSONObjectPut2 = new JSONObject().put("pref", str).put(PListParser.TAG_KEY, str2).put("type", "StringChunk").put("part", i).put(FileDownloadModel.TOTAL, length);
                    int i2 = i * CHUNK;
                    i++;
                    arrayList.add(new LocalAccountStore.Item(str4, BuildConfig.FLAVOR, 0L, jSONObjectPut2.put("value", str3.substring(i2, Math.min(str3.length(), i * CHUNK))).toString()));
                }
                return arrayList;
            }
        }
        throw new IOException("preference limit");
    }

    static String key(String str, String str2) throws Exception {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest((str + ":" + str2).getBytes("UTF-8"));
        StringBuilder sb = new StringBuilder();
        for (byte b : bArrDigest) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & FileDownloadStatus.error)));
        }
        return sb.toString();
    }

    static void put(Map<String, Map<String, Object>> map, String str, String str2, Object obj) throws IOException {
        Map<String, Object> linkedHashMap = map.get(str);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap<>();
            map.put(str, linkedHashMap);
        }
        if (linkedHashMap.containsKey(str2)) {
            throw new IOException("duplicate preference");
        }
        linkedHashMap.put(str2, obj);
    }
}
