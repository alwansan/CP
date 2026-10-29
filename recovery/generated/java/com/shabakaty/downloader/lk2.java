package com.shabakaty.downloader;

import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: LogWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class lk2 implements v37, gf2 {
    public static lk2 r;

    public lk2(int i) {
    }

    public void a(w44 w44Var, float f, float f2, float f3) {
        throw null;
    }

    @Override // com.shabakaty.downloader.gf2
    public String c() {
        String language = Locale.getDefault().getLanguage();
        Objects.requireNonNull(language);
        language.hashCode();
        switch (language) {
            case "in":
                return "id";
            case "iw":
                return "he";
            case "ji":
                return "yi";
            case "zh":
                StringBuilder sbA = vf3.a(language, "-");
                sbA.append(Locale.getDefault().getCountry());
                return sbA.toString();
            default:
                return language;
        }
    }
}
