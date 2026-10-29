package com.shabakaty.cinemana.ca1;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageButton;
import com.connectsdk.service.NetcastTVService;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class Native98 {
    public static void header(Object obj) {
    }

    static int dp(Context context, int i) {
        return (int) ((context.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    static Object get(Object obj, String str) throws Exception {
        return R94.get(obj, str);
    }

    static void put(Object obj, String str, Object obj2) throws Exception {
        Field declaredField = obj.getClass().getDeclaredField(str);
        declaredField.setAccessible(true);
        declaredField.set(obj, obj2);
    }

    static View find(View view, String str) {
        try {
            if (view.getResources().getResourceEntryName(view.getId()).equals(str)) {
                return view;
            }
        } catch (Exception e) {
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View viewFind = find(viewGroup.getChildAt(i), str);
            if (viewFind != null) {
                return viewFind;
            }
        }
        return null;
    }

    static Collection<?> states() throws Exception {
        return ((Map) R94.get(Class.forName("com.shabakaty.cinemana.ca1.Download94"), "states")).values();
    }

    public static void refresh(Object obj) {
        try {
            ViewGroup viewGroup = (ViewGroup) get(obj, "rv");
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                bind(viewGroup.getChildAt(i));
            }
        } catch (Exception e) {
        }
    }

    public static void bind(View view) {
        boolean z;
        boolean zContains;
        View viewFindViewWithTag = view.findViewWithTag("ca1_native_check98");
        View viewFind = find(view, "download_button");
        if (!(viewFindViewWithTag instanceof CheckBox) || viewFind == null) {
            return;
        }
        try {
            Iterator it = new ArrayList(states()).iterator();
            while (true) {
                if (it.hasNext()) {
                    Object next = it.next();
                    ViewGroup viewGroup = (ViewGroup) get(next, "rv");
                    if (view.getParent() == viewGroup) {
                        int iIntValue = ((Number) R94.call(viewGroup, "P", view)).intValue();
                        List list = (List) R94.call(next, "items", new Object[0]);
                        if (iIntValue < 0 || iIntValue >= list.size()) {
                            break;
                        }
                        Object obj = list.get(iIntValue);
                        z = ((Boolean) get(next, "mode")).booleanValue() && ((Boolean) R94.call(next, "eligible", obj)).booleanValue();
                        try {
                            zContains = ((Set) get(next, "selected")).contains(R94.str(obj, "id"));
                            break;
                        } catch (Exception e) {
                            zContains = false;
                        }
                    }
                    zContains = false;
                }
                zContains = false;
                z = false;
                break;
            }
        } catch (Exception e2) {
            z = false;
        }
        CheckBox checkBox = (CheckBox) viewFindViewWithTag;
        checkBox.setChecked(zContains);
        checkBox.setVisibility(z ? 0 : 8);
        viewFind.setVisibility(z ? 4 : 0);
        checkBox.setContentDescription(zContains ? I18n161.t("حلقة محددة") : I18n161.t("حلقة غير محددة"));
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.Native98$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {
        final /* synthetic */ ImageButton val$button;

        AnonymousClass1(ImageButton imageButton) {
            this.val$button = imageButton;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.val$button.setVisibility(0);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.val$button.setVisibility(8);
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public static void bound(Object obj) {
        try {
            bind((View) R94.get(obj, "v"));
        } catch (Exception e) {
            try {
                bind((View) ((View) get(obj, "M")).getParent());
            } catch (Exception e2) {
            }
        }
    }

    static /* synthetic */ void lambda$header$1(Context context, View view) {
        try {
            for (Object obj : new ArrayList(states())) {
                View view2 = (View) get(obj, "rv");
                Rect rect = new Rect();
                if (view2.getGlobalVisibleRect(rect) && rect.width() > dp(context, 80)) {
                    R94.call(obj, ((Boolean) get(obj, "mode")).booleanValue() ? "end" : "begin", new Object[0]);
                    return;
                }
            }
        } catch (Exception e) {
        }
    }

    static /* synthetic */ void lambda$header$2(ImageButton imageButton, Context context) {
        Rect rect = new Rect();
        imageButton.getGlobalVisibleRect(rect);
        event(context, "downloads_header98", "visible=" + imageButton.isShown() + " bounds=" + rect.toShortString());
    }

    public static final class Trash extends Drawable {
        Paint p = new Paint(3);

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            canvas.save();
            canvas.translate(bounds.left, bounds.top);
            canvas.scale(bounds.width() / 24.0f, bounds.height() / 24.0f);
            this.p.setColor(ThemeEngine142.legacy(-1));
            this.p.setStyle(Paint.Style.STROKE);
            this.p.setStrokeWidth(2.0f);
            this.p.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawLine(4.0f, 6.0f, 20.0f, 6.0f, this.p);
            canvas.drawLine(9.0f, 3.0f, 15.0f, 3.0f, this.p);
            canvas.drawLine(6.0f, 6.0f, 7.0f, 21.0f, this.p);
            canvas.drawLine(18.0f, 6.0f, 17.0f, 21.0f, this.p);
            canvas.drawLine(7.0f, 21.0f, 17.0f, 21.0f, this.p);
            canvas.drawLine(10.0f, 10.0f, 10.0f, 17.0f, this.p);
            canvas.drawLine(14.0f, 10.0f, 14.0f, 17.0f, this.p);
            canvas.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.p.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.p.setColorFilter(colorFilter);
        }
    }

    static void event(Context context, String str, String str2) {
        try {
            R94.call(Class.forName("com.shabakaty.cinemana.ca1.Log94"), NetcastTVService.UDAP_API_EVENT, context, str, str2);
        } catch (Exception e) {
        }
    }

    static Object quiet(Object obj, String str) {
        try {
            return get(obj, str);
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean resetSource(Object obj, long j) {
        boolean z;
        if (!"mondrian".equals(Build.DEVICE)) {
            return false;
        }
        try {
            for (Object obj2 : (Object[]) get(obj, "J")) {
                Object obj3 = get(obj2, "C");
                R94.str(obj3, "C");
                Field[] declaredFields = obj3.getClass().getDeclaredFields();
                int length = declaredFields.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    Field field = declaredFields[i];
                    if (field.getType() == String.class) {
                        field.setAccessible(true);
                        Object obj4 = field.get(obj3);
                        if ((obj4 instanceof String) && ((String) obj4).startsWith("video/")) {
                            z = true;
                            break;
                        }
                    }
                    i++;
                }
                if (z) {
                    synchronized (obj2) {
                        int iIntValue = ((Integer) get(obj2, "t")).intValue();
                        int iIntValue2 = ((Integer) get(obj2, "q")).intValue();
                        if (iIntValue > 0 && iIntValue2 > 0) {
                            if (j < ((long[]) get(obj2, "o"))[((Number) R94.call(obj2, "r", Integer.valueOf(iIntValue - 1))).intValue()]) {
                                try {
                                    Context context = (Context) R94.get(Class.forName("com.shabakaty.cinemana.ca1.Enhancements"), "app");
                                    if (context != null) {
                                        event(context, "video_seek_source_reset98", "before_buffer_read_head=true");
                                    }
                                } catch (Exception e) {
                                }
                                return true;
                            }
                        }
                        return false;
                    }
                }
            }
        } catch (Exception e2) {
        }
        return false;
    }
}
