package com.shabakaty.downloader;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.LocaleSpan;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import com.cinemana.pro.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.liulishuo.filedownloader.BuildConfig;
import com.shabakaty.cinemana.domain.models.local.Category;
import com.shabakaty.cinemana.domain.models.local.VideoModel;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.mlkit:vision-common@@16.3.0 */
/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class nl6 implements pr2 {
    public static Object A(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(gl3.a(20, "at index ", i));
    }

    public static long a(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, b(j2, j)));
        return j2;
    }

    public static long b(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    public static lk2 c(int i) {
        if (i != 0) {
            return i != 1 ? new iu3() : new hh0();
        }
        return new iu3();
    }

    public static c21 d() {
        return new c21(0);
    }

    public static int e(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public static JSONObject f(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, Set<String> set) {
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject2 == null) {
            return jSONObject3;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        JSONObject jSONObject4 = jSONObject3 != null ? jSONObject3 : new JSONObject();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                Object obj = jSONObject2.get(next);
                if (jSONObject.has(next)) {
                    if (obj instanceof JSONObject) {
                        String string = f(jSONObject.getJSONObject(next), (JSONObject) obj, (jSONObject3 == null || !jSONObject3.has(next)) ? null : jSONObject3.getJSONObject(next), set).toString();
                        if (!string.equals("{}")) {
                            jSONObject4.put(next, new JSONObject(string));
                        }
                    } else if (obj instanceof JSONArray) {
                        k(next, (JSONArray) obj, jSONObject.getJSONArray(next), jSONObject4);
                    } else if (set == null || !set.contains(next)) {
                        Object obj2 = jSONObject.get(next);
                        if (!obj.equals(obj2)) {
                            if (!(obj2 instanceof Integer) || BuildConfig.FLAVOR.equals(obj)) {
                                jSONObject4.put(next, obj);
                            } else if (((Number) obj2).doubleValue() != ((Number) obj).doubleValue()) {
                                jSONObject4.put(next, obj);
                            }
                        }
                    } else {
                        jSONObject4.put(next, obj);
                    }
                } else if (obj instanceof JSONObject) {
                    jSONObject4.put(next, new JSONObject(obj.toString()));
                } else if (obj instanceof JSONArray) {
                    k(next, (JSONArray) obj, null, jSONObject4);
                } else {
                    jSONObject4.put(next, obj);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject4;
    }

    public static String g(String str) {
        int iLastIndexOf;
        return (!fe4.a(str) || (iLastIndexOf = str.lastIndexOf(".")) == -1) ? BuildConfig.FLAVOR : str.substring(iLastIndexOf + 1).toLowerCase(Locale.US).trim();
    }

    public static final jn h(BottomNavigationView bottomNavigationView) {
        View childAt = bottomNavigationView.getChildAt(0);
        Objects.requireNonNull(childAt, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView");
        View childAt2 = ((kn) childAt).getChildAt(3);
        Objects.requireNonNull(childAt2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView");
        return (jn) childAt2;
    }

    public static JSONObject i(yo yoVar, String str) {
        if (!((JSONObject) yoVar.b).has(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectOptJSONObject = ((JSONObject) yoVar.b).optJSONObject(str);
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                Object obj = jSONObjectOptJSONObject.get(next);
                if (!BuildConfig.FLAVOR.equals(obj)) {
                    jSONObject.put(next, obj);
                }
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    public static DateFormat j(int i, int i2) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (i == 0) {
            str = "EEEE, MMMM d, yyyy";
        } else if (i == 1) {
            str = "MMMM d, yyyy";
        } else if (i == 2) {
            str = "MMM d, yyyy";
        } else {
            if (i != 3) {
                throw new IllegalArgumentException(bl3.a("Unknown DateFormat style: ", i));
            }
            str = "M/d/yy";
        }
        sb.append(str);
        sb.append(" ");
        if (i2 == 0 || i2 == 1) {
            str2 = "h:mm:ss a z";
        } else if (i2 == 2) {
            str2 = "h:mm:ss a";
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException(bl3.a("Unknown DateFormat style: ", i2));
            }
            str2 = "h:mm a";
        }
        sb.append(str2);
        return new SimpleDateFormat(sb.toString(), Locale.US);
    }

    public static void k(String str, JSONArray jSONArray, JSONArray jSONArray2, JSONObject jSONObject) throws JSONException {
        if (str.endsWith("_a") || str.endsWith("_d")) {
            jSONObject.put(str, jSONArray);
            return;
        }
        String strY = y(jSONArray);
        JSONArray jSONArray3 = new JSONArray();
        JSONArray jSONArray4 = new JSONArray();
        String strY2 = jSONArray2 == null ? null : y(jSONArray2);
        for (int i = 0; i < jSONArray.length(); i++) {
            String str2 = (String) jSONArray.get(i);
            if (jSONArray2 == null || !strY2.contains(str2)) {
                jSONArray3.put(str2);
            }
        }
        if (jSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                String string = jSONArray2.getString(i2);
                if (!strY.contains(string)) {
                    jSONArray4.put(string);
                }
            }
        }
        if (!jSONArray3.toString().equals("[]")) {
            jSONObject.put(str + "_a", jSONArray3);
        }
        if (jSONArray4.toString().equals("[]")) {
            return;
        }
        jSONObject.put(str + "_d", jSONArray4);
    }

    public static final boolean l(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        Character chN0 = se4.n0(charSequence, 0);
        if (chN0 != null) {
            chN0.charValue();
            Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(chN0.charValue());
            if ((Build.VERSION.SDK_INT >= 26 && (j32.a(Character.UnicodeBlock.ARABIC_EXTENDED_A, unicodeBlockOf) || j32.a(Character.UnicodeBlock.ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS, unicodeBlockOf))) || j32.a(Character.UnicodeBlock.ARABIC, unicodeBlockOf) || j32.a(Character.UnicodeBlock.ARABIC_SUPPLEMENT, unicodeBlockOf) || j32.a(Character.UnicodeBlock.ARABIC_PRESENTATION_FORMS_A, unicodeBlockOf) || j32.a(Character.UnicodeBlock.ARABIC_PRESENTATION_FORMS_B, unicodeBlockOf) || j32.a(Character.UnicodeBlock.OLD_SOUTH_ARABIAN, unicodeBlockOf)) {
                return true;
            }
        }
        return false;
    }

    public static Object m(Object obj) {
        Class<?> cls = obj.getClass();
        if (cls.equals(Integer.class)) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        return cls.equals(Float.class) ? Double.valueOf(((Float) obj).floatValue()) : obj;
    }

    public static long n(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                xv3.b(new IllegalStateException(kp0.a("More produced than requested: ", j3)));
                j3 = 0;
            }
        } while (!atomicLong.compareAndSet(j2, j3));
        return j3;
    }

    public static void o(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof sn2) {
            sn2 sn2Var = (sn2) background;
            sn2.b bVar = sn2Var.r;
            if (bVar.o != f) {
                bVar.o = f;
                sn2Var.A();
            }
        }
    }

    public static final void p(View view, String str, String str2) {
        j32.e(view, "<this>");
        uj2.b bVar = uj2.c;
        Resources resources = view.getResources();
        j32.d(resources, "resources");
        if (!j32.a(bVar.b(resources).getLanguage(), "en")) {
            str = str2;
        }
        view.setContentDescription(str == null ? null : z(str));
    }

    public static final void q(View view, CharSequence charSequence) {
        j32.e(view, "<this>");
        view.setContentDescription(z(charSequence));
    }

    public static final void r(TextView textView, String str) {
        j32.e(textView, "<this>");
        textView.setText(z(str));
    }

    public static final <T> Set<T> s(T t) {
        Set<T> setSingleton = Collections.singleton(t);
        j32.d(setSingleton, "singleton(element)");
        return setSingleton;
    }

    public static final <T> Set<T> t(T... tArr) {
        return tArr.length > 0 ? id.e0(tArr) : c31.r;
    }

    public static void u(View view, sn2 sn2Var) {
        n21 n21Var = sn2Var.r.b;
        if (n21Var != null && n21Var.a) {
            float fE = h45.e(view);
            sn2.b bVar = sn2Var.r;
            if (bVar.n != fE) {
                bVar.n = fE;
                sn2Var.A();
            }
        }
    }

    public static final void v(BottomNavigationView bottomNavigationView, String str) {
        Drawable drawable;
        j32.e(bottomNavigationView, "bottom");
        View childAt = bottomNavigationView.getChildAt(0);
        Objects.requireNonNull(childAt, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView");
        View childAt2 = ((kn) childAt).getChildAt(3);
        Objects.requireNonNull(childAt2, "null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView");
        View childAt3 = ((jn) childAt2).getChildAt(0);
        SimpleDraweeView simpleDraweeView = childAt3 instanceof SimpleDraweeView ? (SimpleDraweeView) childAt3 : null;
        if (!(str.length() == 0)) {
            if (simpleDraweeView != null) {
                simpleDraweeView.setImageURI(str);
            }
            if (simpleDraweeView == null) {
                return;
            }
            simpleDraweeView.setImageTintList(null);
            return;
        }
        if (simpleDraweeView != null) {
            simpleDraweeView.setImageResource(R.drawable.ic_profile);
        }
        if (simpleDraweeView == null || (drawable = simpleDraweeView.getDrawable()) == null) {
            return;
        }
        boolean z = bottomNavigationView.getSelectedItemId() == R.id.navigation_profile;
        Context context = bottomNavigationView.getContext();
        j32.d(context, "bottom.context");
        drawable.setTint(z ? wt2.f(context, R.color.primaryTextColor) : wt2.f(context, R.color.secondaryTextColor));
    }

    public static final void w(View view, VideoModel videoModel) {
        String strC;
        String string;
        List<Category> list;
        j32.e(view, "<this>");
        boolean zL = l((videoModel == null || (strC = videoModel.c()) == null) ? null : re4.m0(strC).toString());
        StringBuilder sb = new StringBuilder();
        if (videoModel != null && (list = videoModel.categories) != null) {
            int i = 0;
            for (Object obj : m50.u0(list, 2)) {
                int i2 = i + 1;
                if (i < 0) {
                    iq6.x();
                    throw null;
                }
                Category category = (Category) obj;
                sb.append(zL ? category.arTitle : category.enTitle);
                if (i == 0 && videoModel.categories.size() != 1) {
                    sb.append(" | ");
                }
                i = i2;
            }
        }
        if (zL) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) (videoModel == null ? null : videoModel.c()));
            sb2.append(" ، السنة: ");
            sb2.append((Object) (videoModel == null ? null : videoModel.year));
            sb2.append(" ، التقييم: ");
            sb2.append((Object) (videoModel == null ? null : videoModel.stars));
            sb2.append("، المشاهدات: ");
            sb2.append((Object) (videoModel != null ? videoModel.rate : null));
            sb2.append(", التصنيف: ");
            sb2.append((Object) sb);
            string = sb2.toString();
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append((Object) (videoModel == null ? null : videoModel.c()));
            sb3.append(" , Year: ");
            sb3.append((Object) (videoModel == null ? null : videoModel.year));
            sb3.append(" , Rating: ");
            sb3.append((Object) (videoModel == null ? null : videoModel.stars));
            sb3.append(", Views: ");
            sb3.append((Object) (videoModel != null ? videoModel.rate : null));
            sb3.append(", Categories: ");
            sb3.append((Object) sb);
            string = sb3.toString();
        }
        view.setContentDescription(z(string));
    }

    public static final Map<String, Object> x(Bundle bundle) {
        j32.e(bundle, "<this>");
        Set<String> setKeySet = bundle.keySet();
        j32.d(setKeySet, "keySet()");
        ArrayList arrayList = new ArrayList(i50.O(setKeySet, 10));
        for (String str : setKeySet) {
            arrayList.add(new x93(str, bundle.get(str)));
        }
        return vm2.u(arrayList);
    }

    public static String y(JSONArray jSONArray) {
        String str = "[";
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                str = str + "\"" + jSONArray.getString(i) + "\"";
            } catch (JSONException unused) {
            }
        }
        return el3.a(str, "]");
    }

    public static final SpannableStringBuilder z(CharSequence charSequence) {
        CharSequence charSequenceM0;
        CharSequence charSequence2 = BuildConfig.FLAVOR;
        if (charSequence != null && (charSequenceM0 = re4.m0(charSequence)) != null) {
            charSequence2 = charSequenceM0;
        }
        if (l(charSequence2)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence2);
            spannableStringBuilder.setSpan(new LocaleSpan(new Locale("ar")), 0, charSequence2.length(), 0);
            return spannableStringBuilder;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence2);
        spannableStringBuilder2.setSpan(new LocaleSpan(Locale.ENGLISH), 0, charSequence2.length(), 0);
        return spannableStringBuilder2;
    }
}
