package com.shabakaty.downloader;

import com.connectsdk.discovery.provider.ssdp.SSDPPacket;
import com.connectsdk.service.airplay.PListParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes2.dex */
public class re4 extends ne4 {
    public static boolean M(CharSequence charSequence, char c, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        j32.e(charSequence, "<this>");
        return S(charSequence, c, 0, z, 2) >= 0;
    }

    public static boolean N(CharSequence charSequence, CharSequence charSequence2, boolean z, int i) {
        boolean z2 = (i & 2) != 0 ? false : z;
        j32.e(charSequence, "<this>");
        j32.e(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (T(charSequence, (String) charSequence2, 0, z2, 2) < 0) {
                return false;
            }
        } else if (R(charSequence, charSequence2, 0, charSequence.length(), z2, false, 16) < 0) {
            return false;
        }
        return true;
    }

    public static final int O(CharSequence charSequence) {
        j32.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int P(CharSequence charSequence, String str, int i, boolean z) {
        j32.e(charSequence, "<this>");
        j32.e(str, PListParser.TAG_STRING);
        return (z || !(charSequence instanceof String)) ? R(charSequence, str, i, charSequence.length(), z, false, 16) : ((String) charSequence).indexOf(str, i);
    }

    public static final int Q(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        l22 l22VarG;
        if (z2) {
            int iO = O(charSequence);
            if (i > iO) {
                i = iO;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            l22VarG = rm3.g(i, i2);
        } else {
            if (i < 0) {
                i = 0;
            }
            int length = charSequence.length();
            if (i2 > length) {
                i2 = length;
            }
            l22VarG = new n22(i, i2);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int i3 = l22VarG.r;
            int i4 = l22VarG.s;
            int i5 = l22VarG.t;
            if ((i5 <= 0 || i3 > i4) && (i5 >= 0 || i4 > i3)) {
                return -1;
            }
            while (true) {
                int i6 = i3 + i5;
                if (ne4.E((String) charSequence2, 0, (String) charSequence, i3, charSequence2.length(), z)) {
                    return i3;
                }
                if (i3 == i4) {
                    return -1;
                }
                i3 = i6;
            }
        } else {
            int i7 = l22VarG.r;
            int i8 = l22VarG.s;
            int i9 = l22VarG.t;
            if ((i9 <= 0 || i7 > i8) && (i9 >= 0 || i8 > i7)) {
                return -1;
            }
            while (true) {
                int i10 = i7 + i9;
                if (Z(charSequence2, 0, charSequence, i7, charSequence2.length(), z)) {
                    return i7;
                }
                if (i7 == i8) {
                    return -1;
                }
                i7 = i10;
            }
        }
    }

    public static /* synthetic */ int R(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3) {
        return Q(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    public static int S(CharSequence charSequence, char c, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        j32.e(charSequence, "<this>");
        return (z || !(charSequence instanceof String)) ? U(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int T(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return P(charSequence, str, i, z);
    }

    public static final int U(CharSequence charSequence, char[] cArr, int i, boolean z) {
        boolean z2;
        j32.e(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(id.Y(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int iO = O(charSequence);
        if (i > iO) {
            return -1;
        }
        while (true) {
            int i2 = i + 1;
            char cCharAt = charSequence.charAt(i);
            int length = cArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z2 = false;
                    break;
                }
                char c = cArr[i3];
                i3++;
                if (z02.f(c, cCharAt, z)) {
                    z2 = true;
                    break;
                }
            }
            if (z2) {
                return i;
            }
            if (i == iO) {
                return -1;
            }
            i = i2;
        }
    }

    public static int V(CharSequence charSequence, char c, int i, boolean z, int i2) {
        boolean z2;
        if ((i2 & 2) != 0) {
            i = O(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        if (!z) {
            return ((String) charSequence).lastIndexOf(c, i);
        }
        char[] cArr = {c};
        if (!z) {
            return ((String) charSequence).lastIndexOf(id.Y(cArr), i);
        }
        int iO = O(charSequence);
        if (i > iO) {
            i = iO;
        }
        if (i >= 0) {
            while (true) {
                int i3 = i - 1;
                char cCharAt = charSequence.charAt(i);
                int i4 = 0;
                while (true) {
                    if (i4 >= 1) {
                        z2 = false;
                        break;
                    }
                    char c2 = cArr[i4];
                    i4++;
                    if (z02.f(c2, cCharAt, z)) {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    return i;
                }
                if (i3 >= 0) {
                    i = i3;
                }
            }
        }
        return -1;
    }

    public static int W(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = O(charSequence);
        }
        int i3 = i;
        boolean z2 = (i2 & 4) != 0 ? false : z;
        j32.e(charSequence, "<this>");
        j32.e(str, PListParser.TAG_STRING);
        return (z2 || !(charSequence instanceof String)) ? Q(charSequence, str, i3, 0, z2, true) : ((String) charSequence).lastIndexOf(str, i3);
    }

    public static final List<String> X(CharSequence charSequence) {
        return t04.J(t04.G(Y(charSequence, new String[]{"\r\n", SSDPPacket.LF, "\r"}, 0, false, 0, 2), new qe4(charSequence)));
    }

    public static l04 Y(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        b0(i2);
        return new cq0(charSequence, i, i2, new pe4(hd.F(strArr), z));
    }

    public static final boolean Z(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        j32.e(charSequence, "<this>");
        j32.e(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        int i4 = 0;
        while (i4 < i3) {
            int i5 = i4 + 1;
            if (!z02.f(charSequence.charAt(i + i4), charSequence2.charAt(i4 + i2), z)) {
                return false;
            }
            i4 = i5;
        }
        return true;
    }

    public static final String a0(String str, CharSequence charSequence) {
        j32.e(str, "<this>");
        if (!ne4.L(str, (String) charSequence, false, 2)) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        j32.d(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    public static final void b0(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(j32.j("Limit must be non-negative, but was ", Integer.valueOf(i)).toString());
        }
    }

    public static final List<String> c0(CharSequence charSequence, String str, boolean z, int i) {
        b0(i);
        int length = 0;
        int iP = P(charSequence, str, 0, z);
        if (iP != -1) {
            if (i != 1) {
                boolean z2 = i > 0;
                int i2 = 10;
                if (z2 && i <= 10) {
                    i2 = i;
                }
                ArrayList arrayList = new ArrayList(i2);
                do {
                    arrayList.add(charSequence.subSequence(length, iP).toString());
                    length = str.length() + iP;
                    if (z2 && arrayList.size() == i - 1) {
                        break;
                    }
                    iP = P(charSequence, str, length, z);
                } while (iP != -1);
                arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
                return arrayList;
            }
        }
        return iq6.o(charSequence.toString());
    }

    public static List d0(CharSequence charSequence, char[] cArr, boolean z, int i, int i2) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        j32.e(charSequence, "<this>");
        if (cArr.length == 1) {
            return c0(charSequence, String.valueOf(cArr[0]), z, i);
        }
        b0(i);
        t04.a aVar = new t04.a(new cq0(charSequence, 0, i, new oe4(cArr, z)));
        ArrayList arrayList = new ArrayList(i50.O(aVar, 10));
        Iterator it = aVar.iterator();
        while (it.hasNext()) {
            arrayList.add(f0(charSequence, (n22) it.next()));
        }
        return arrayList;
    }

    public static List e0(CharSequence charSequence, String[] strArr, boolean z, int i, int i2) {
        boolean z2 = (i2 & 2) != 0 ? false : z;
        int i3 = (i2 & 4) != 0 ? 0 : i;
        j32.e(charSequence, "<this>");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                return c0(charSequence, str, z2, i3);
            }
        }
        t04.a aVar = new t04.a(Y(charSequence, strArr, 0, z2, i3, 2));
        ArrayList arrayList = new ArrayList(i50.O(aVar, 10));
        Iterator it = aVar.iterator();
        while (it.hasNext()) {
            arrayList.add(f0(charSequence, (n22) it.next()));
        }
        return arrayList;
    }

    public static final String f0(CharSequence charSequence, n22 n22Var) {
        j32.e(charSequence, "<this>");
        j32.e(n22Var, "range");
        return charSequence.subSequence(Integer.valueOf(n22Var.r).intValue(), Integer.valueOf(n22Var.s).intValue() + 1).toString();
    }

    public static final String g0(String str, String str2, String str3) {
        j32.e(str, "<this>");
        j32.e(str2, "delimiter");
        j32.e(str3, "missingDelimiterValue");
        int iT = T(str, str2, 0, false, 6);
        if (iT == -1) {
            return str3;
        }
        String strSubstring = str.substring(str2.length() + iT, str.length());
        j32.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final String i0(String str, char c, String str2) {
        j32.e(str, "<this>");
        j32.e(str2, "missingDelimiterValue");
        int iV = V(str, c, 0, false, 6);
        if (iV == -1) {
            return str2;
        }
        String strSubstring = str.substring(iV + 1, str.length());
        j32.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String k0(String str, char c, String str2, int i) {
        String str3 = (i & 2) != 0 ? str : null;
        j32.e(str, "<this>");
        j32.e(str3, "missingDelimiterValue");
        int iS = S(str, c, 0, false, 6);
        if (iS == -1) {
            return str3;
        }
        String strSubstring = str.substring(0, iS);
        j32.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static String l0(String str, String str2, String str3, int i) {
        String str4 = (i & 2) != 0 ? str : null;
        j32.e(str, "<this>");
        j32.e(str4, "missingDelimiterValue");
        int iT = T(str, str2, 0, false, 6);
        if (iT == -1) {
            return str4;
        }
        String strSubstring = str.substring(0, iT);
        j32.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final CharSequence m0(CharSequence charSequence) {
        j32.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zR = z02.r(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zR) {
                    break;
                }
                length--;
            } else if (zR) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }
}
