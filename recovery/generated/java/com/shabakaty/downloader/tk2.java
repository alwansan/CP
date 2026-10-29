package com.shabakaty.downloader;

import android.util.Log;
import com.liulishuo.filedownloader.BuildConfig;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes.dex */
public class tk2 {
    public static final TimeZone a = TimeZone.getTimeZone("UTC");
    public static final List<c> b = new ArrayList();
    public static c c;
    public static boolean d;

    /* JADX INFO: compiled from: Logger.java */
    public static class a implements c {
        @Override // com.shabakaty.downloader.tk2.c
        public void a(d dVar, String str, String str2, Throwable th) {
            String strSubstring;
            int iMin;
            int i = 0;
            if (fe4.c(str)) {
                strSubstring = "Zendesk";
            } else {
                strSubstring = str.length() > 23 ? str.substring(0, 23) : str;
            }
            if ((fe4.a(str) && (str.endsWith("Provider") || str.endsWith("Service"))) && d.ERROR == dVar) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
                simpleDateFormat.setTimeZone(tk2.a);
                Log.println(6, strSubstring, "Time in UTC: " + simpleDateFormat.format(new Date()));
            }
            if (th != null) {
                StringBuilder sbA = um3.a(str2);
                sbA.append(fe4.b);
                sbA.append(Log.getStackTraceString(th));
                str2 = sbA.toString();
            }
            ArrayList arrayList = new ArrayList();
            if (!fe4.a(str2)) {
                arrayList.add(BuildConfig.FLAVOR);
            } else if (str2.length() < 4000) {
                arrayList.add(str2);
            } else {
                int length = str2.length();
                while (i < length) {
                    int iIndexOf = str2.indexOf(fe4.b, i);
                    if (iIndexOf == -1) {
                        iIndexOf = length;
                    }
                    while (true) {
                        iMin = Math.min(iIndexOf, i + 4000);
                        arrayList.add(str2.substring(i, iMin));
                        if (iMin >= iIndexOf) {
                            break;
                        } else {
                            i = iMin;
                        }
                    }
                    i = iMin + 1;
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Log.println(dVar == null ? 4 : dVar.r, strSubstring, (String) it.next());
            }
        }
    }

    /* JADX INFO: compiled from: Logger.java */
    public static class b implements c {
        @Override // com.shabakaty.downloader.tk2.c
        public void a(d dVar, String str, String str2, Throwable th) {
            StringBuilder sbA = ei.a(100, "[");
            sbA.append(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US).format(new Date()));
            sbA.append("]");
            sbA.append(" ");
            sbA.append(dVar == null ? j96.e(4) : j96.e(dVar.r));
            sbA.append("/");
            if (!fe4.a(str)) {
                str = "UNKNOWN";
            }
            sbA.append(str);
            sbA.append(": ");
            sbA.append(str2);
            System.out.println(sbA.toString());
            if (th != null) {
                th.printStackTrace(System.out);
            }
        }
    }

    /* JADX INFO: compiled from: Logger.java */
    public interface c {
        void a(d dVar, String str, String str2, Throwable th);
    }

    /* JADX INFO: compiled from: Logger.java */
    public enum d {
        /* JADX INFO: Fake field, exist only in values array */
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);

        public final int r;

        d(int i) {
            this.r = i;
        }
    }

    static {
        try {
            Class.forName("android.os.Build");
            c = new a();
        } catch (ClassNotFoundException unused) {
            if (c == null) {
                c = new b();
            }
        } catch (Throwable th) {
            if (c == null) {
                c = new b();
            }
            throw th;
        }
        d = false;
    }

    public static void a(String str, String str2, Object... objArr) {
        e(d.DEBUG, str, str2, null, objArr);
    }

    public static void b(String str, z41 z41Var) {
        StringBuilder sb = new StringBuilder();
        if (z41Var != null) {
            sb.append("Network Error: ");
            sb.append(z41Var.c());
            sb.append(", Status Code: ");
            sb.append(z41Var.getStatus());
            if (fe4.a(z41Var.b())) {
                sb.append(", Reason: ");
                sb.append(z41Var.b());
            }
        }
        String string = sb.toString();
        d dVar = d.ERROR;
        if (!fe4.a(string)) {
            string = "Unknown error";
        }
        e(dVar, str, string, null, new Object[0]);
    }

    public static void c(String str, String str2, Object... objArr) {
        e(d.ERROR, str, str2, null, objArr);
    }

    public static void d(String str, String str2, Object... objArr) {
        e(d.INFO, str, str2, null, objArr);
    }

    public static void e(d dVar, String str, String str2, Throwable th, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str2 = String.format(Locale.US, str2, objArr);
        }
        if (d) {
            c.a(dVar, str, str2, th);
            Iterator it = ((ArrayList) b).iterator();
            while (it.hasNext()) {
                ((c) it.next()).a(dVar, str, str2, th);
            }
        }
    }

    public static void f(String str, String str2, Object... objArr) {
        e(d.WARN, str, str2, null, objArr);
    }
}
