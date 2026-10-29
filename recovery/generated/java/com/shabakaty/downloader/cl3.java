package com.shabakaty.downloader;

import android.app.AppOpsManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import com.connectsdk.etc.helper.HttpMessage;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class cl3 {
    public static void a(Object obj, StringBuilder sb) {
        int iLastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(iLastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static int b(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        int i3 = Build.VERSION.SDK_INT;
        String strPermissionToOp = i3 >= 23 ? AppOpsManager.permissionToOp(str) : null;
        if (strPermissionToOp == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return (i3 >= 23 ? ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, str2) : 1) != 0 ? -2 : 0;
    }

    public static int c(Context context, String str) {
        return b(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static String d(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    public static final ih2 e(rh2 rh2Var) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        vl2 vl2Var;
        j32.e(rh2Var, "$this$lifecycleScope");
        androidx.lifecycle.e lifecycle = rh2Var.getLifecycle();
        j32.d(lifecycle, "lifecycle");
        do {
            lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) lifecycle.a.get();
            if (lifecycleCoroutineScopeImpl == null) {
                me0.b bVarA = md0.a(null, 1);
                pe0 pe0Var = hu0.a;
                vl2Var = wl2.a;
                lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(lifecycle, me0.b.a.d((l92) bVarA, vl2Var.M()));
            }
            return lifecycleCoroutineScopeImpl;
        } while (!lifecycle.a.compareAndSet(null, lifecycleCoroutineScopeImpl));
        nh3.y(lifecycleCoroutineScopeImpl, vl2Var.M(), 0, new lh2(lifecycleCoroutineScopeImpl, null), 2, null);
        return lifecycleCoroutineScopeImpl;
    }

    public static int f(int i, int i2, boolean z) {
        int i3 = z ? ((i2 - i) + 360) % 360 : (i2 + i) % 360;
        if (vk2.c("CameraOrientationUtil")) {
            vk2.a("CameraOrientationUtil", String.format("getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z), Integer.valueOf(i3)), null);
        }
        return i3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int g(String str) {
        byte b;
        String str2 = str;
        if (str2 == null) {
            return -1;
        }
        ArrayList<nt2.a> arrayList = nt2.a;
        byte b2 = 2;
        switch (str.hashCode()) {
            case -1007807498:
                if (!str2.equals("audio/x-flac")) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -586683234:
                if (!str2.equals("audio/x-wav")) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 187090231:
                if (!str2.equals("audio/mp3")) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                str2 = "audio/flac";
                break;
            case 1:
                str2 = "audio/wav";
                break;
            case 2:
                str2 = "audio/mpeg";
                break;
        }
        switch (str2.hashCode()) {
            case -2123537834:
                if (!str2.equals("audio/eac3-joc")) {
                    b2 = -1;
                } else {
                    b2 = 0;
                }
                break;
            case -1662384011:
                if (!str2.equals("video/mp2p")) {
                    b2 = -1;
                } else {
                    b2 = 1;
                }
                break;
            case -1662384007:
                if (!str2.equals("video/mp2t")) {
                    b2 = -1;
                }
                break;
            case -1662095187:
                if (!str2.equals("video/webm")) {
                    b2 = -1;
                } else {
                    b2 = 3;
                }
                break;
            case -1606874997:
                if (!str2.equals("audio/amr-wb")) {
                    b2 = -1;
                } else {
                    b2 = 4;
                }
                break;
            case -1487394660:
                if (!str2.equals("image/jpeg")) {
                    b2 = -1;
                } else {
                    b2 = 5;
                }
                break;
            case -1248337486:
                if (!str2.equals("application/mp4")) {
                    b2 = -1;
                } else {
                    b2 = 6;
                }
                break;
            case -1004728940:
                if (!str2.equals("text/vtt")) {
                    b2 = -1;
                } else {
                    b2 = 7;
                }
                break;
            case -387023398:
                if (!str2.equals("audio/x-matroska")) {
                    b2 = -1;
                } else {
                    b2 = 8;
                }
                break;
            case -43467528:
                if (!str2.equals("application/webm")) {
                    b2 = -1;
                } else {
                    b2 = 9;
                }
                break;
            case 13915911:
                if (!str2.equals("video/x-flv")) {
                    b2 = -1;
                } else {
                    b2 = 10;
                }
                break;
            case 187078296:
                if (!str2.equals("audio/ac3")) {
                    b2 = -1;
                } else {
                    b2 = FileDownloadStatus.toFileDownloadService;
                }
                break;
            case 187078297:
                if (!str2.equals("audio/ac4")) {
                    b2 = -1;
                } else {
                    b2 = 12;
                }
                break;
            case 187078669:
                if (!str2.equals("audio/amr")) {
                    b2 = -1;
                } else {
                    b2 = 13;
                }
                break;
            case 187090232:
                if (!str2.equals("audio/mp4")) {
                    b2 = -1;
                } else {
                    b2 = 14;
                }
                break;
            case 187091926:
                if (!str2.equals("audio/ogg")) {
                    b2 = -1;
                } else {
                    b2 = 15;
                }
                break;
            case 187099443:
                if (!str2.equals("audio/wav")) {
                    b2 = -1;
                } else {
                    b2 = 16;
                }
                break;
            case 1331848029:
                if (!str2.equals("video/mp4")) {
                    b2 = -1;
                } else {
                    b2 = 17;
                }
                break;
            case 1503095341:
                if (!str2.equals("audio/3gpp")) {
                    b2 = -1;
                } else {
                    b2 = 18;
                }
                break;
            case 1504578661:
                if (!str2.equals("audio/eac3")) {
                    b2 = -1;
                } else {
                    b2 = 19;
                }
                break;
            case 1504619009:
                if (!str2.equals("audio/flac")) {
                    b2 = -1;
                } else {
                    b2 = 20;
                }
                break;
            case 1504831518:
                if (!str2.equals("audio/mpeg")) {
                    b2 = -1;
                } else {
                    b2 = 21;
                }
                break;
            case 1505118770:
                if (!str2.equals("audio/webm")) {
                    b2 = -1;
                } else {
                    b2 = 22;
                }
                break;
            case 2039520277:
                if (!str2.equals("video/x-matroska")) {
                    b2 = -1;
                } else {
                    b2 = 23;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
            case 11:
            case 19:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case 8:
            case 9:
            case 22:
            case 23:
                return 6;
            case 4:
            case 13:
            case 18:
                return 3;
            case 5:
                return 14;
            case 6:
            case 14:
            case 17:
                return 8;
            case 7:
                return 13;
            case 10:
                return 5;
            case 12:
                return 1;
            case 15:
                return 9;
            case 16:
                return 12;
            case 20:
                return 4;
            case 21:
                return 7;
            default:
                return -1;
        }
    }

    public static int h(Map<String, List<String>> map) {
        List<String> list = map.get(HttpMessage.CONTENT_TYPE_HEADER);
        return g((list == null || list.isEmpty()) ? null : list.get(0));
    }

    public static int i(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return 0;
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return 1;
        }
        if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            return 2;
        }
        if (lastPathSegment.endsWith(".amr")) {
            return 3;
        }
        if (lastPathSegment.endsWith(".flac")) {
            return 4;
        }
        if (lastPathSegment.endsWith(".flv")) {
            return 5;
        }
        if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            return 9;
        }
        if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            return 12;
        }
        if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            return 13;
        }
        return (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) ? 14 : -1;
    }

    public static boolean j(XmlPullParser xmlPullParser, String str) {
        return (xmlPullParser.getEventType() == 3) && xmlPullParser.getName().equals(str);
    }

    public static boolean k(XmlPullParser xmlPullParser) {
        return xmlPullParser.getEventType() == 2;
    }

    public static boolean l(XmlPullParser xmlPullParser, String str) {
        return k(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static Integer m(String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "REPEAT_ALL_AND_SHUFFLE":
                return 3;
            case "REPEAT_SINGLE":
                return 2;
            case "REPEAT_ALL":
                return 1;
            case "REPEAT_OFF":
                return 0;
            default:
                return null;
        }
    }

    public static or4 n(or4 or4Var, String[] strArr, Map<String, or4> map) {
        int i = 0;
        if (or4Var == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                or4 or4Var2 = new or4();
                int length = strArr.length;
                while (i < length) {
                    or4Var2.a(map.get(strArr[i]));
                    i++;
                }
                return or4Var2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                or4Var.a(map.get(strArr[0]));
                return or4Var;
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    or4Var.a(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return or4Var;
    }

    public static int o(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 90;
        }
        if (i == 2) {
            return 180;
        }
        if (i == 3) {
            return 270;
        }
        throw new IllegalArgumentException(bl3.a("Unsupported surface rotation: ", i));
    }

    public static String p(Integer num) {
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        if (iIntValue == 0) {
            return "REPEAT_OFF";
        }
        if (iIntValue == 1) {
            return "REPEAT_ALL";
        }
        if (iIntValue == 2) {
            return "REPEAT_SINGLE";
        }
        if (iIntValue != 3) {
            return null;
        }
        return "REPEAT_ALL_AND_SHUFFLE";
    }
}
