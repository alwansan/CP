package com.shabakaty.downloader;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: compiled from: LocaleManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class uj2 {
    public static final b c = new b(null);
    public static tm1<? super Context, uj2> d = a.r;
    public static volatile uj2 e;
    public final Context a;
    public final kf2 b = ng2.a(new vj2(this));

    /* JADX INFO: compiled from: LocaleManager.kt */
    public static final class a extends af2 implements tm1<Context, uj2> {
        public static final a r = new a();

        public a() {
            super(1);
        }

        @Override // com.shabakaty.downloader.tm1
        public uj2 invoke(Context context) {
            Context context2 = context;
            j32.e(context2, "it");
            return new uj2(context2, null);
        }
    }

    /* JADX INFO: compiled from: LocaleManager.kt */
    public static final class b {
        public b(nn0 nn0Var) {
        }

        public final uj2 a() throws Throwable {
            uj2 uj2Var = uj2.e;
            if (uj2Var != null) {
                return uj2Var;
            }
            throw new Throwable("LocaleManager not initialized: Call init first");
        }

        public final Locale b(Resources resources) {
            Locale locale;
            String str;
            Configuration configuration = resources.getConfiguration();
            if (Build.VERSION.SDK_INT >= 24) {
                locale = configuration.getLocales().get(0);
                str = "config.locales[0]";
            } else {
                locale = configuration.locale;
                str = "config.locale";
            }
            j32.d(locale, str);
            return locale;
        }
    }

    public uj2(Context context, nn0 nn0Var) {
        this.a = context;
    }

    public final Context a() {
        Object value = this.b.getValue();
        j32.d(value, "<get-prefsManager>(...)");
        String string = ((SharedPreferences) value).getString("key_app_language", "ar");
        return b(string != null ? string : "ar");
    }

    public final Context b(String str) {
        Configuration configuration;
        Resources resources;
        Configuration configuration2;
        Resources resources2;
        Resources resources3;
        Context context = this.a;
        Locale locale = new Locale(str);
        Locale.setDefault(locale);
        Resources resources4 = context.getResources();
        Configuration configuration3 = resources4.getConfiguration();
        configuration3.locale = locale;
        resources4.updateConfiguration(configuration3, resources4.getDisplayMetrics());
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null && (resources2 = applicationContext.getResources()) != null) {
            Context applicationContext2 = context.getApplicationContext();
            resources2.updateConfiguration(configuration3, (applicationContext2 == null || (resources3 = applicationContext2.getResources()) == null) ? null : resources3.getDisplayMetrics());
        }
        Resources resources5 = context.getResources();
        if (resources5 != null) {
            Resources resources6 = context.getResources();
            resources5.updateConfiguration(configuration3, resources6 != null ? resources6.getDisplayMetrics() : null);
        }
        Context applicationContext3 = context.getApplicationContext();
        if (applicationContext3 != null && (resources = applicationContext3.getResources()) != null && (configuration2 = resources.getConfiguration()) != null) {
            configuration3.setTo(configuration2);
        }
        Resources resources7 = context.getResources();
        if (resources7 != null && (configuration = resources7.getConfiguration()) != null) {
            configuration3.setTo(configuration);
        }
        if (Build.VERSION.SDK_INT < 24) {
            return context;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(locale);
        LocaleList localeList = LocaleList.getDefault();
        j32.d(localeList, "getDefault()");
        int size = localeList.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                Locale locale2 = localeList.get(i);
                j32.d(locale2, "all[i]");
                linkedHashSet.add(locale2);
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        Object[] array = linkedHashSet.toArray(new Locale[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Locale[] localeArr = (Locale[]) array;
        configuration3.setLocales(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration3);
        j32.d(contextCreateConfigurationContext, "context.createConfigurationContext(config)");
        return contextCreateConfigurationContext;
    }
}
