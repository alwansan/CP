package com.shabakaty.cinemana.ca1;

import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.service.NetcastTVService;
import com.connectsdk.service.command.ServiceCommand;
import com.liulishuo.filedownloader.BuildConfig;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class Sizes {
    static final Map<String, Entry> CACHE = Collections.synchronizedMap(new LinkedHashMap<String, Entry>(RecyclerView.b0.FLAG_TMP_DETACHED, 0.75f, true) { // from class: com.shabakaty.cinemana.ca1.Sizes.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Entry> entry) {
            return size() > 2048;
        }
    });
    static final ConcurrentHashMap<String, FutureTask<Long>> RUNNING = new ConcurrentHashMap<>();

    static class Entry {
        final long bytes;
        final long time = System.currentTimeMillis();

        Entry(long j) {
            this.bytes = j;
        }
    }

    static void log(String str, String str2, String str3, Throwable th) {
        try {
            Class.forName("com.shabakaty.cinemana.ca1.BatchLog").getDeclaredMethod(NetcastTVService.UDAP_API_EVENT, String.class, String.class, String.class, Throwable.class).invoke(null, str, str2, str3, th);
        } catch (Exception e) {
        }
    }

    static String safe(String str) {
        try {
            URI uri = new URI(str);
            return new URI(uri.getScheme(), null, uri.getHost(), uri.getPort(), uri.getPath(), null, null).toString();
        } catch (Exception e) {
            return "invalid-url";
        }
    }

    public static long probe(final String str, final String str2, final String str3) {
        Map<String, Entry> map = CACHE;
        Entry entry = map.get(str);
        if (entry != null && System.currentTimeMillis() - entry.time < 300000) {
            log(str2, "size_cache", "id=" + str3 + " bytes=" + entry.bytes, null);
            return entry.bytes;
        }
        FutureTask<Long> futureTask = new FutureTask<>(new Callable() { // from class: com.shabakaty.cinemana.ca1.Sizes$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Long.valueOf(Sizes.measure(str, str2, str3));
            }
        });
        ConcurrentHashMap<String, FutureTask<Long>> concurrentHashMap = RUNNING;
        FutureTask<Long> futureTaskPutIfAbsent = concurrentHashMap.putIfAbsent(str, futureTask);
        if (futureTaskPutIfAbsent != null) {
            try {
                return futureTaskPutIfAbsent.get(18L, TimeUnit.SECONDS).longValue();
            } catch (Exception e) {
                log(str2, "size_dedup_wait_error", "id=" + str3, e);
                return -1L;
            }
        }
        try {
            try {
                futureTask.run();
                long jLongValue = futureTask.get().longValue();
                if (jLongValue >= 0) {
                    map.put(str, new Entry(jLongValue));
                }
                concurrentHashMap.remove(str, futureTask);
                return jLongValue;
            } catch (Exception e2) {
                log(str2, "size_error", "id=" + str3, e2);
                RUNNING.remove(str, futureTask);
                return -1L;
            }
        } catch (Throwable th) {
            RUNNING.remove(str, futureTask);
            throw th;
        }
    }

    static long headers(int i, String str, String str2, String str3, String str4) {
        if (str3 == null || str3.trim().isEmpty() || str3.equalsIgnoreCase("identity")) {
            String lowerCase = str4 == null ? BuildConfig.FLAVOR : str4.toLowerCase(Locale.ROOT);
            if (!lowerCase.contains("text/") && !lowerCase.contains("json") && !lowerCase.contains("xml") && !lowerCase.contains("mpegurl")) {
                try {
                    if (i == 206) {
                        if (str2 == null) {
                            return -1L;
                        }
                        Matcher matcher = Pattern.compile("bytes\\s+0-0\\s*/\\s*([0-9]+)", 2).matcher(str2.trim());
                        if (!matcher.matches()) {
                            return -1L;
                        }
                        long j = Long.parseLong(matcher.group(1));
                        if (j > 0) {
                            return j;
                        }
                        return -1L;
                    }
                    if (i == 200 && str != null && str.trim().matches("[0-9]+")) {
                        return Long.parseLong(str.trim());
                    }
                } catch (NumberFormatException e) {
                }
            }
            return -1L;
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d8  */
    static long measure(String str, String str2, String str3) throws Throwable {
        HttpURLConnection httpURLConnection;
        String str4;
        String[] strArr;
        int i;
        String str5;
        HttpURLConnection httpURLConnection2;
        String str6 = str2;
        String str7 = ServiceCommand.TYPE_GET;
        String[] strArr2 = {"HEAD", ServiceCommand.TYPE_GET};
        int i2 = 0;
        while (i2 < 2) {
            String str8 = strArr2[i2];
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                URL url = new URL(str);
                if (!url.getProtocol().equals("https") && !url.getProtocol().equals("http")) {
                    return -1L;
                }
                HttpURLConnection httpURLConnection3 = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        httpURLConnection3.setConnectTimeout(4000);
                        httpURLConnection3.setReadTimeout(4000);
                        httpURLConnection3.setInstanceFollowRedirects(true);
                        httpURLConnection3.setUseCaches(false);
                        httpURLConnection3.setRequestMethod(str8);
                        httpURLConnection3.setRequestProperty("Accept-Encoding", "identity");
                        httpURLConnection3.setRequestProperty("User-Agent", "Cinemana-CA1/1.4");
                        if (str8.equals(str7)) {
                            try {
                                httpURLConnection3.setRequestProperty("Range", "bytes=0-0");
                            } catch (Exception e) {
                                e = e;
                                str4 = str7;
                                strArr = strArr2;
                                httpURLConnection = httpURLConnection3;
                                i = i2;
                                str5 = str8;
                                try {
                                    log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                httpURLConnection = httpURLConnection3;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        }
                        int responseCode = httpURLConnection3.getResponseCode();
                        String headerField = httpURLConnection3.getHeaderField("Content-Length");
                        String headerField2 = httpURLConnection3.getHeaderField("Content-Range");
                        str4 = str7;
                        try {
                            String headerField3 = httpURLConnection3.getHeaderField("Content-Encoding");
                            strArr = strArr2;
                            try {
                                String contentType = httpURLConnection3.getContentType();
                                i = i2;
                                try {
                                    try {
                                        long jHeaders = headers(responseCode, headerField, headerField2, headerField3, contentType);
                                        try {
                                            str5 = str8;
                                            try {
                                                StringBuilder sbAppend = new StringBuilder().append("id=").append(str3).append(" method=").append(str8).append(" code=").append(responseCode).append(" bytes=").append(jHeaders).append(" length=").append(headerField).append(" range=").append(headerField2).append(" encoding=").append(headerField3).append(" type=").append(contentType).append(" elapsed_ms=").append(System.currentTimeMillis() - jCurrentTimeMillis).append(" url=").append(safe(httpURLConnection3.getURL().toString())).append(" etag=");
                                                httpURLConnection2 = httpURLConnection3;
                                                try {
                                                    try {
                                                        str6 = str2;
                                                        try {
                                                            log(str6, "size_http", sbAppend.append(httpURLConnection2.getHeaderField("ETag")).append(" modified=").append(httpURLConnection2.getHeaderField("Last-Modified")).toString(), null);
                                                            if (jHeaders >= 0) {
                                                                if (httpURLConnection2 != null) {
                                                                    httpURLConnection2.disconnect();
                                                                }
                                                                return jHeaders;
                                                            }
                                                            if (httpURLConnection2 != null) {
                                                                httpURLConnection2.disconnect();
                                                            }
                                                            i2 = i + 1;
                                                            str7 = str4;
                                                            strArr2 = strArr;
                                                        } catch (Exception e2) {
                                                            e = e2;
                                                            httpURLConnection = httpURLConnection2;
                                                            log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                                                            if (httpURLConnection != null) {
                                                                httpURLConnection.disconnect();
                                                            }
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        httpURLConnection = httpURLConnection2;
                                                        if (httpURLConnection != null) {
                                                            httpURLConnection.disconnect();
                                                        }
                                                        throw th;
                                                    }
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    str6 = str2;
                                                }
                                            } catch (Exception e4) {
                                                e = e4;
                                                str6 = str2;
                                                httpURLConnection2 = httpURLConnection3;
                                                httpURLConnection = httpURLConnection2;
                                                log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                                                if (httpURLConnection != null) {
                                                    httpURLConnection.disconnect();
                                                }
                                                i2 = i + 1;
                                                str7 = str4;
                                                strArr2 = strArr;
                                            }
                                        } catch (Exception e5) {
                                            e = e5;
                                            str6 = str2;
                                            str5 = str8;
                                            httpURLConnection2 = httpURLConnection3;
                                            httpURLConnection = httpURLConnection2;
                                            log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                            i2 = i + 1;
                                            str7 = str4;
                                            strArr2 = strArr;
                                        }
                                    } catch (Exception e6) {
                                        e = e6;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    httpURLConnection2 = httpURLConnection3;
                                }
                            } catch (Exception e7) {
                                e = e7;
                                httpURLConnection2 = httpURLConnection3;
                                i = i2;
                                str5 = str8;
                                httpURLConnection = httpURLConnection2;
                                log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                i2 = i + 1;
                                str7 = str4;
                                strArr2 = strArr;
                            }
                        } catch (Exception e8) {
                            e = e8;
                            strArr = strArr2;
                            httpURLConnection2 = httpURLConnection3;
                            i = i2;
                            str5 = str8;
                            httpURLConnection = httpURLConnection2;
                            log(str6, "size_http_error", "id=" + str3 + " method=" + str5 + " url=" + safe(str), e);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            i2 = i + 1;
                            str7 = str4;
                            strArr2 = strArr;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        str4 = str7;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    httpURLConnection2 = httpURLConnection3;
                }
            } catch (Exception e10) {
                e = e10;
                str4 = str7;
                strArr = strArr2;
                i = i2;
                str5 = str8;
                httpURLConnection = null;
            } catch (Throwable th6) {
                th = th6;
                httpURLConnection = null;
            }
        }
        log(str6, "size_unknown", "id=" + str3 + " reason=no_valid_file_length url=" + safe(str), null);
        return -1L;
    }
}
