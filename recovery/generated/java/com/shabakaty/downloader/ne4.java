package com.shabakaty.downloader;

import com.liulishuo.filedownloader.BuildConfig;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: StringsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class ne4 extends me4 {
    public static boolean B(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        j32.e(str, "<this>");
        j32.e(str2, "suffix");
        return !z ? str.endsWith(str2) : E(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static final boolean C(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static final boolean D(CharSequence charSequence) {
        boolean z;
        j32.e(charSequence, "<this>");
        if (charSequence.length() == 0) {
            return true;
        }
        Iterable n22Var = new n22(0, charSequence.length() - 1);
        if ((n22Var instanceof Collection) && ((Collection) n22Var).isEmpty()) {
            z = true;
        } else {
            Iterator<Integer> it = n22Var.iterator();
            while (((m22) it).t) {
                if (!z02.r(charSequence.charAt(((k22) it).a()))) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public static final boolean E(String str, int i, String str2, int i2, int i3, boolean z) {
        j32.e(str, "<this>");
        j32.e(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static final String F(CharSequence charSequence, int i) {
        int i2 = 1;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i + '.').toString());
        }
        if (i != 0) {
            if (i == 1) {
                return charSequence.toString();
            }
            int length = charSequence.length();
            if (length != 0) {
                if (length == 1) {
                    char cCharAt = charSequence.charAt(0);
                    char[] cArr = new char[i];
                    for (int i3 = 0; i3 < i; i3++) {
                        cArr[i3] = cCharAt;
                    }
                    return new String(cArr);
                }
                StringBuilder sb = new StringBuilder(charSequence.length() * i);
                if (1 <= i) {
                    while (true) {
                        int i4 = i2 + 1;
                        sb.append(charSequence);
                        if (i2 == i) {
                            break;
                        }
                        i2 = i4;
                    }
                }
                String string = sb.toString();
                j32.d(string, "{\n                    va…tring()\n                }");
                return string;
            }
        }
        return BuildConfig.FLAVOR;
    }

    public static String G(String str, char c, char c2, boolean z, int i) {
        int i2 = 0;
        if ((i & 4) != 0) {
            z = false;
        }
        j32.e(str, "<this>");
        if (!z) {
            String strReplace = str.replace(c, c2);
            j32.d(strReplace, "this as java.lang.String…replace(oldChar, newChar)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            i2++;
            if (z02.f(cCharAt, c, z)) {
                cCharAt = c2;
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        j32.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public static String H(String str, String str2, String str3, boolean z, int i) {
        int i2 = 0;
        if ((i & 4) != 0) {
            z = false;
        }
        j32.e(str, "<this>");
        int iP = re4.P(str, str2, 0, z);
        if (iP < 0) {
            return str;
        }
        int length = str2.length();
        int i3 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i2, iP);
            sb.append(str3);
            i2 = iP + length;
            if (iP >= str.length()) {
                break;
            }
            iP = re4.P(str, str2, iP + i3, z);
        } while (iP > 0);
        sb.append((CharSequence) str, i2, str.length());
        String string = sb.toString();
        j32.d(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    public static final boolean I(String str, String str2, int i, boolean z) {
        j32.e(str, "<this>");
        j32.e(str2, "prefix");
        return !z ? str.startsWith(str2, i) : E(str, i, str2, 0, str2.length(), z);
    }

    public static final boolean J(String str, String str2, boolean z) {
        j32.e(str, "<this>");
        j32.e(str2, "prefix");
        return !z ? str.startsWith(str2) : E(str, 0, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean K(String str, String str2, int i, boolean z, int i2) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return I(str, str2, i, z);
    }

    public static /* synthetic */ boolean L(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        return J(str, str2, z);
    }
}
