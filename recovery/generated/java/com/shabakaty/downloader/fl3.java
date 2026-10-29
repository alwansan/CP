package com.shabakaty.downloader;

import android.opengl.GLES20;
import android.opengl.GLU;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class fl3 {
    public static void a(int i, String str, int i2) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String strGlGetShaderInfoLog = GLES20.glGetShaderInfoLog(iGlCreateShader);
            StringBuilder sb = new StringBuilder(dl3.a(str, dl3.a(strGlGetShaderInfoLog, 10)));
            sb.append(strGlGetShaderInfoLog);
            sb.append(", source: ");
            sb.append(str);
            Log.e("GlUtil", sb.toString());
        }
        GLES20.glAttachShader(i2, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        g();
    }

    public static List<byte[]> b(byte[] bArr) {
        long j = (((long) (((bArr[11] & FileDownloadStatus.error) << 8) | (bArr[10] & FileDownloadStatus.error))) * 1000000000) / 48000;
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(c(j));
        arrayList.add(c(80000000L));
        return arrayList;
    }

    public static byte[] c(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    public static void d(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int f(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    public static void g() {
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                return;
            }
            String strValueOf = String.valueOf(GLU.gluErrorString(iGlGetError));
            Log.e("GlUtil", strValueOf.length() != 0 ? "glError ".concat(strValueOf) : new String("glError "));
        }
    }

    public static <T> T h(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void i(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static int j(String str, String str2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        g();
        a(35633, str, iGlCreateProgram);
        a(35632, str2, iGlCreateProgram);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            String strValueOf = String.valueOf(GLES20.glGetProgramInfoLog(iGlCreateProgram));
            Log.e("GlUtil", strValueOf.length() != 0 ? "Unable to link shader program: \n".concat(strValueOf) : new String("Unable to link shader program: \n"));
        }
        g();
        return iGlCreateProgram;
    }

    public static FloatBuffer k(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static void l(String str, String str2, Object obj) {
        Log.d(p(str), String.format(str2, obj));
    }

    public static void m(String str, String str2, Object... objArr) {
        Log.d(p(str), String.format(str2, objArr));
    }

    public static void n(String str, String str2, Throwable th) {
        Log.e(p(str), str2, th);
    }

    public static final NavController o(Fragment fragment) {
        j32.f(fragment, "$this$findNavController");
        NavController navControllerX1 = NavHostFragment.X1(fragment);
        j32.b(navControllerX1, "NavHostFragment.findNavController(this)");
        return navControllerX1;
    }

    public static String p(String str) {
        return el3.a("TransportRuntime.", str);
    }

    public static void q(String str, String str2) {
        Log.i(p(str), str2);
    }

    public static int r(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* bridge */ /* synthetic */ boolean s(byte b) {
        return b >= 0;
    }

    public static boolean t(byte b) {
        return b > -65;
    }
}
