package com.shabakaty.downloader;

import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Regex.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class mq3 implements Serializable {
    public final Pattern r;

    /* JADX INFO: compiled from: Regex.kt */
    public static final class a implements Serializable {
        public final String r;
        public final int s;

        public a(String str, int i) {
            this.r = str;
            this.s = i;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.r, this.s);
            j32.d(patternCompile, "compile(pattern, flags)");
            return new mq3(patternCompile);
        }
    }

    public mq3(Pattern pattern) {
        this.r = pattern;
    }

    private final Object writeReplace() {
        String strPattern = this.r.pattern();
        j32.d(strPattern, "nativePattern.pattern()");
        return new a(strPattern, this.r.flags());
    }

    public final boolean a(CharSequence charSequence) {
        j32.e(charSequence, "input");
        return this.r.matcher(charSequence).matches();
    }

    public final String b(CharSequence charSequence, String str) {
        String strReplaceAll = this.r.matcher(charSequence).replaceAll(str);
        j32.d(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return strReplaceAll;
    }

    public String toString() {
        String string = this.r.toString();
        j32.d(string, "nativePattern.toString()");
        return string;
    }

    public mq3(String str) {
        j32.e(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        j32.d(patternCompile, "compile(pattern)");
        this.r = patternCompile;
    }
}
