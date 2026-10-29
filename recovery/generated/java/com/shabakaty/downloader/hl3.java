package com.shabakaty.downloader;

import android.hardware.camera2.CameraCharacteristics;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.liulishuo.filedownloader.BuildConfig;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
public class hl3 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final androidx.navigation.fragment.a.b a(Pair<? extends View, String>... pairArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair<? extends View, String> pair : pairArr) {
            linkedHashMap.put((View) pair.r, (String) pair.s);
        }
        return new androidx.navigation.fragment.a.b(linkedHashMap);
    }

    public static void b() {
        fl3.i(f(), "Not in application's main thread");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    public static al3 c(zs zsVar) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Integer num = (Integer) zsVar.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num != null && num.intValue() == 2) {
            arrayList.add(new x4(zsVar));
        }
        Integer num2 = (Integer) zsVar.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num2 != null && num2.intValue() == 2 && Build.VERSION.SDK_INT == 21) {
            arrayList.add(new ld());
        }
        Set<String> set = o92.a;
        Integer num3 = (Integer) zsVar.a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        Objects.requireNonNull(num3);
        int iIntValue = num3.intValue();
        if (((HashSet) o92.a).contains(Build.DEVICE.toLowerCase(Locale.US))) {
            z = ((HashSet) o92.b).contains(Integer.valueOf(iIntValue));
        }
        if (z) {
            arrayList.add(new o92());
        }
        return new al3(arrayList);
    }

    public static yl0 d(int i) {
        return new yl0(Uri.parse(sy4.n("%s:%d", "rtp://0.0.0.0", Integer.valueOf(i))));
    }

    public static final se0 e(o35 o35Var) {
        se0 se0Var = (se0) o35Var.getTag("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY");
        if (se0Var != null) {
            return se0Var;
        }
        me0.b bVarA = md0.a(null, 1);
        pe0 pe0Var = hu0.a;
        Object tagIfAbsent = o35Var.setTagIfAbsent("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY", new e40(me0.b.a.d((l92) bVarA, wl2.a.M())));
        j32.d(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (se0) tagIfAbsent;
    }

    public static boolean f() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public static void g(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static InputConnection h(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                if (parent instanceof f75) {
                    editorInfo.hintText = ((f75) parent).a();
                    break;
                }
            }
        }
        return inputConnection;
    }

    public static void i(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(gl3.a(15, "csd-", i), ByteBuffer.wrap(list.get(i)));
        }
    }

    public static int j(int i, byte[] bArr, int i2, int i3, kl5 kl5Var) throws cx5 {
        if ((i >>> 3) == 0) {
            throw cx5.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return q(bArr, i2, kl5Var);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return n(bArr, i2, kl5Var) + kl5Var.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw cx5.b();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = n(bArr, i2, kl5Var);
            i6 = kl5Var.a;
            if (i6 == i5) {
                break;
            }
            i2 = j(i6, bArr, i2, i3, kl5Var);
        }
        if (i2 > i3 || i6 != i5) {
            throw cx5.c();
        }
        return i2;
    }

    public static int k(int i, byte[] bArr, int i2, int i3, bx5<?> bx5Var, kl5 kl5Var) {
        pv5 pv5Var = (pv5) bx5Var;
        int iN = n(bArr, i2, kl5Var);
        while (true) {
            pv5Var.m(pv5Var.t, kl5Var.a);
            if (iN >= i3) {
                break;
            }
            int iN2 = n(bArr, iN, kl5Var);
            if (i != kl5Var.a) {
                break;
            }
            iN = n(bArr, iN2, kl5Var);
        }
        return iN;
    }

    public static int l(int i, byte[] bArr, int i2, int i3, y96 y96Var, kl5 kl5Var) throws cx5 {
        if ((i >>> 3) == 0) {
            throw cx5.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iQ = q(bArr, i2, kl5Var);
            y96Var.b(i, Long.valueOf(kl5Var.b));
            return iQ;
        }
        if (i4 == 1) {
            y96Var.b(i, Long.valueOf(u(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iN = n(bArr, i2, kl5Var);
            int i5 = kl5Var.a;
            y96Var.b(i, i5 == 0 ? hn5.s : hn5.m(bArr, iN, i5));
            return iN + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw cx5.b();
            }
            y96Var.b(i, Integer.valueOf(r(bArr, i2)));
            return i2 + 4;
        }
        y96 y96VarE = y96.e();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (i2 < i3) {
            int iN2 = n(bArr, i2, kl5Var);
            int i8 = kl5Var.a;
            i7 = i8;
            if (i8 == i6) {
                i2 = iN2;
                break;
            }
            int iL = l(i7, bArr, iN2, i3, y96VarE, kl5Var);
            i7 = i8;
            i2 = iL;
        }
        if (i2 > i3 || i7 != i6) {
            throw cx5.c();
        }
        y96Var.b(i, y96VarE);
        return i2;
    }

    public static int m(int i, byte[] bArr, int i2, kl5 kl5Var) {
        int i3;
        int i4;
        int i5 = i & 127;
        int i6 = i2 + 1;
        byte b = bArr[i2];
        if (b < 0) {
            int i7 = i5 | ((b & 127) << 7);
            int i8 = i6 + 1;
            byte b2 = bArr[i6];
            if (b2 >= 0) {
                i3 = b2 << 14;
            } else {
                i5 = i7 | ((b2 & 127) << 14);
                i6 = i8 + 1;
                byte b3 = bArr[i8];
                if (b3 >= 0) {
                    i4 = b3 << 21;
                } else {
                    i7 = i5 | ((b3 & 127) << 21);
                    i8 = i6 + 1;
                    byte b4 = bArr[i6];
                    if (b4 >= 0) {
                        i3 = b4 << 28;
                    } else {
                        int i9 = i7 | ((b4 & 127) << 28);
                        while (true) {
                            int i10 = i8 + 1;
                            if (bArr[i8] >= 0) {
                                kl5Var.a = i9;
                                return i10;
                            }
                            i8 = i10;
                        }
                    }
                }
            }
            kl5Var.a = i7 | i3;
            return i8;
        }
        i4 = b << 7;
        kl5Var.a = i5 | i4;
        return i6;
    }

    public static int n(byte[] bArr, int i, kl5 kl5Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m(b, bArr, i2, kl5Var);
        }
        kl5Var.a = b;
        return i2;
    }

    public static int o(byte[] bArr, int i, bx5<?> bx5Var, kl5 kl5Var) throws cx5 {
        pv5 pv5Var = (pv5) bx5Var;
        int iN = n(bArr, i, kl5Var);
        int i2 = kl5Var.a + iN;
        while (iN < i2) {
            iN = n(bArr, iN, kl5Var);
            pv5Var.m(pv5Var.t, kl5Var.a);
        }
        if (iN == i2) {
            return iN;
        }
        throw cx5.a();
    }

    public static void p(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException {
        if (obj != null) {
            if (!(obj instanceof rf6)) {
                String strW = w(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(strW);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String strConcat = (String) obj;
                    if (!strConcat.startsWith("http") && strConcat.length() > 200) {
                        strConcat = String.valueOf(strConcat.substring(0, 200)).concat("[...]");
                    }
                    int length = strConcat.length();
                    StringBuilder sb = new StringBuilder(length);
                    for (int i = 0; i < length; i++) {
                        char cCharAt = strConcat.charAt(i);
                        if (cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\'') {
                            sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            sb.append(cCharAt);
                        }
                    }
                    String string = sb.toString();
                    stringBuffer2.append("\"");
                    stringBuffer2.append(string);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    stringBuffer2.append('\"');
                    for (byte b : (byte[]) obj) {
                        int i2 = b & FileDownloadStatus.error;
                        if (i2 == 92 || i2 == 34) {
                            stringBuffer2.append('\\');
                        } else {
                            if (i2 < 32 || i2 >= 127) {
                                stringBuffer2.append(String.format("\\%03o", Integer.valueOf(i2)));
                            }
                        }
                        stringBuffer2.append((char) i2);
                    }
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append(SSDPPacket.LF);
                return;
            }
            int length2 = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(w(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                        p(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int i3 = 0; i3 < length3; i3++) {
                            p(name, Array.get(obj2, i3), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String strSubstring = name2.substring(3);
                    try {
                        String strValueOf = String.valueOf(strSubstring);
                        if (((Boolean) cls.getMethod(strValueOf.length() != 0 ? "has".concat(strValueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            String strValueOf2 = String.valueOf(strSubstring);
                            p(strSubstring, cls.getMethod(strValueOf2.length() != 0 ? "get".concat(strValueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length2);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        }
    }

    public static int q(byte[] bArr, int i, kl5 kl5Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            kl5Var.b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        kl5Var.b = j2;
        return i3;
    }

    public static int r(byte[] bArr, int i) {
        return ((bArr[i + 3] & FileDownloadStatus.error) << 24) | (bArr[i] & FileDownloadStatus.error) | ((bArr[i + 1] & FileDownloadStatus.error) << 8) | ((bArr[i + 2] & FileDownloadStatus.error) << 16);
    }

    public static int s(byte[] bArr, int i, kl5 kl5Var) {
        int iN = n(bArr, i, kl5Var);
        int i2 = kl5Var.a;
        if (i2 == 0) {
            kl5Var.c = BuildConfig.FLAVOR;
            return iN;
        }
        kl5Var.c = new String(bArr, iN, i2, vv5.a);
        return iN + i2;
    }

    public static int t(byte[] bArr, int i, kl5 kl5Var) throws cx5 {
        int iN = n(bArr, i, kl5Var);
        int i2 = kl5Var.a;
        if (i2 == 0) {
            kl5Var.c = BuildConfig.FLAVOR;
            return iN;
        }
        int i3 = iN + i2;
        if (!zb6.e(bArr, iN, i3)) {
            throw cx5.d();
        }
        kl5Var.c = new String(bArr, iN, i2, vv5.a);
        return i3;
    }

    public static long u(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static int v(byte[] bArr, int i, kl5 kl5Var) {
        int iN = n(bArr, i, kl5Var);
        int i2 = kl5Var.a;
        if (i2 == 0) {
            kl5Var.c = hn5.s;
            return iN;
        }
        kl5Var.c = hn5.m(bArr, iN, i2);
        return iN + i2;
    }

    public static String w(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (i == 0) {
                cCharAt = Character.toLowerCase(cCharAt);
            } else if (Character.isUpperCase(cCharAt)) {
                stringBuffer.append('_');
                cCharAt = Character.toLowerCase(cCharAt);
            }
            stringBuffer.append(cCharAt);
        }
        return stringBuffer.toString();
    }
}
