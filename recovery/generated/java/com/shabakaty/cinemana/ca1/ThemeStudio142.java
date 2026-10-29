package com.shabakaty.cinemana.ca1;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import com.liulishuo.filedownloader.BuildConfig;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ThemeStudio142 extends Activity {
    private SeekBar bottomOpacitySeek;
    private TextView bottomOpacityValue;
    private final LinkedHashMap<String, EditText> colorFields = new LinkedHashMap<>();
    private Switch glassSwitch;
    private SeekBar opacitySeek;
    private TextView opacityValue;
    private LinearLayout preview;
    private Button previewButton;
    private TextView previewSub;
    private TextView previewTitle;
    private SeekBar radiusSeek;
    private TextView radiusValue;

    private void build() {
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(themeColor("cinColorBackground", ThemeEngine142.canvas(this)));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        int iDp = dp(8);
        linearLayout.setPadding(iDp, iDp, iDp, dp(24));
        scrollView.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        linearLayout.addView(header(), new LinearLayout.LayoutParams(-1, dp(60)));
        linearLayout.addView(presetRow(I18n161.t("الافتراضي"), BuildConfig.FLAVOR, 0), new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(presetRow("Dark", BuildConfig.FLAVOR, 1), new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(presetRow("OLED", BuildConfig.FLAVOR, 2), new LinearLayout.LayoutParams(-1, -2));
        setContentView(scrollView);
    }

    private TextView presetRow(String str, String str2, final int i) {
        TextView textViewText = text(str + (ThemeEngine142.getMode(this) == i ? "   ✓" : BuildConfig.FLAVOR), 18, true);
        textViewText.setTag("ca1_theme142_preset_" + i);
        int iDp = dp(20);
        int iDp2 = dp(18);
        textViewText.setPadding(iDp, iDp2, iDp, iDp2);
        textViewText.setBackground(flatSurface(themeColor("cinColorSurfaceRaised", ThemeEngine142.elevated(this)), 6));
        textViewText.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ThemeStudio142.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ThemeEngine142.setMode(ThemeStudio142.this, i);
                Toast.makeText(ThemeStudio142.this, I18n161.t("تم اختيار ") + ThemeEngine142.modeName(ThemeStudio142.this), 0).show();
                ThemeEngine142.restartApp(ThemeStudio142.this);
            }
        });
        return textViewText;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        ThemeEngine142.prepare(this);
        super.onCreate(bundle);
        setTitle(I18n161.t("المظهر"));
        build();
        ThemeEngine142.apply(this);
        updatePreview();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        ThemeEngine142.apply(this);
        updatePreview();
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$1, reason: invalid class name */
    class AnonymousClass1 implements SeekBar.OnSeekBarChangeListener {
        AnonymousClass1() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            ThemeStudio142.this.opacityValue.setText(I18n161.t("شفافية السطح: ") + (i + 20) + "%");
            ThemeStudio142.this.updatePreview();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$2, reason: invalid class name */
    class AnonymousClass2 implements SeekBar.OnSeekBarChangeListener {
        AnonymousClass2() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            ThemeStudio142.this.radiusValue.setText(I18n161.t("تدوير الحواف: ") + i + "dp");
            ThemeStudio142.this.updatePreview();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$3, reason: invalid class name */
    class AnonymousClass3 implements SeekBar.OnSeekBarChangeListener {
        AnonymousClass3() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            ThemeStudio142.this.bottomOpacityValue.setText(I18n161.t("شفافية الشريط السفلي: ") + i + "%");
            ThemeStudio142.this.updatePreview();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$4, reason: invalid class name */
    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ThemeStudio142.this.updatePreview();
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$5, reason: invalid class name */
    class AnonymousClass5 implements View.OnClickListener {
        AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ThemeEngine142.resetAll(ThemeStudio142.this);
            Toast.makeText(ThemeStudio142.this, I18n161.t("تمت إعادة Cinemana Classic"), 0).show();
            ThemeEngine142.restartApp(ThemeStudio142.this);
        }
    }

    /* JADX INFO: renamed from: com.shabakaty.cinemana.ca1.ThemeStudio142$6, reason: invalid class name */
    class AnonymousClass6 implements View.OnClickListener {
        AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ThemeStudio142.this.saveCustom();
        }
    }

    private FrameLayout header() {
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(themeColor("cinColorSurface", ThemeEngine142.surface(this)));
        TextView textViewText = text(I18n161.t("المظهر"), 22, true);
        textViewText.setGravity(8388627);
        textViewText.setPadding(dp(8), 0, dp(56), 0);
        frameLayout.addView(textViewText, new FrameLayout.LayoutParams(-1, -1));
        ImageButton imageButton = new ImageButton(this);
        imageButton.setTag("ca1_theme142_back");
        imageButton.setBackground(new ColorDrawable(0));
        int identifier = getResources().getIdentifier("ic_arrow_right", "drawable", getPackageName());
        if (identifier != 0) {
            imageButton.setImageResource(identifier);
        }
        imageButton.setColorFilter(themeColor("cinColorTextPrimary", ThemeEngine142.ink(this)));
        imageButton.setContentDescription(I18n161.t("رجوع"));
        frameLayout.addView(imageButton, new FrameLayout.LayoutParams(dp(52), -1, 8388627));
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.ca1.ThemeStudio142.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ThemeStudio142.this.finish();
            }
        });
        return frameLayout;
    }

    private TextView section(String str) {
        TextView textViewText = text(str, 14, true);
        textViewText.setTextColor(themeColor("cinColorTextSecondary", ThemeEngine142.inkMuted(this)));
        return textViewText;
    }

    private LinearLayout simpleSurface(View view) {
        LinearLayout linearLayoutVerticalSurface = verticalSurface();
        linearLayoutVerticalSurface.setPadding(dp(8), 0, dp(8), 0);
        linearLayoutVerticalSurface.addView(view, lp(-1, -1, 0, 0, 0, 0));
        return linearLayoutVerticalSurface;
    }

    private LinearLayout verticalSurface() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setTag("ca1_theme142_surface");
        linearLayout.setOrientation(1);
        linearLayout.setBackground(flatSurface(themeColor("cinColorSurfaceRaised", ThemeEngine142.elevated(this)), 6));
        return linearLayout;
    }

    private void addColor(LinearLayout linearLayout, String str, String str2, int i) {
        LinearLayout linearLayoutVerticalSurface = verticalSurface();
        linearLayoutVerticalSurface.addView(text(str2, 13, true), lp(-1, -2, 10, 5, 10, 0));
        EditText editText = new EditText(this);
        editText.setSingleLine(true);
        editText.setText(ThemeEngine142.hex(i));
        editText.setHint("#RRGGBB");
        editText.setTag("ca1_theme142_color_" + str);
        editText.setPadding(dp(10), 0, dp(10), 0);
        this.colorFields.put(str, editText);
        linearLayoutVerticalSurface.addView(editText, lp(-1, dp(44), 10, 0, 10, 5));
        linearLayout.addView(linearLayoutVerticalSurface, lp(-1, -2, 0, 0, 0, 8));
        editText.addTextChangedListener(new TextWatcher() { // from class: com.shabakaty.cinemana.ca1.ThemeStudio142.9
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                ThemeStudio142.this.updatePreview();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCustom() {
        ThemeEngine142.saveCustom(this, this.glassSwitch.isChecked(), this.opacitySeek.getProgress() + 20, this.radiusSeek.getProgress(), this.bottomOpacitySeek.getProgress(), color("canvas", ThemeEngine142.HARBOR_CANVAS), color("surface", ThemeEngine142.HARBOR_SURFACE), color("elevated", ThemeEngine142.HARBOR_ELEVATED), color("raised", ThemeEngine142.HARBOR_RAISED), color("ink", ThemeEngine142.HARBOR_INK), color("inkMuted", ThemeEngine142.HARBOR_INK_MUTED), color("inkSubtle", ThemeEngine142.HARBOR_INK_SUBTLE), color("edge", ThemeEngine142.HARBOR_EDGE), color("accent", ThemeEngine142.HARBOR_ACCENT), color("danger", ThemeEngine142.HARBOR_DANGER), color("topBar", ThemeEngine142.topBar(this)), color("downloadsSurface", ThemeEngine142.downloadsSurface(this)), color("playerSurface", ThemeEngine142.playerSurface(this)), color("updaterSurface", ThemeEngine142.updaterSurface(this)), color("bottomNavSurface", ThemeEngine142.bottomNavSurface(this)));
        Toast.makeText(this, I18n161.t("تم حفظ الثيم المخصص"), 0).show();
        ThemeEngine142.restartApp(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreview() {
        if (this.preview == null) {
            return;
        }
        int iColor = color("surface", ThemeEngine142.surface(this));
        int iColor2 = color("ink", ThemeEngine142.ink(this));
        int iColor3 = color("inkMuted", ThemeEngine142.inkMuted(this));
        int iColor4 = color("accent", ThemeEngine142.accent(this));
        int surfaceOpacity = this.opacitySeek == null ? ThemeEngine142.getSurfaceOpacity(this) : this.opacitySeek.getProgress() + 20;
        int cornerRadiusDp = this.radiusSeek == null ? ThemeEngine142.getCornerRadiusDp(this) : this.radiusSeek.getProgress();
        if (this.glassSwitch != null && this.glassSwitch.isChecked()) {
            iColor = ThemeEngine142.withAlpha(iColor, Math.round((surfaceOpacity / 100.0f) * 255.0f));
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(iColor);
        gradientDrawable.setCornerRadius(dp(cornerRadiusDp));
        this.preview.setBackground(gradientDrawable);
        this.previewTitle.setTextColor(iColor2);
        this.previewSub.setText(ThemeEngine142.modeName(this));
        this.previewSub.setTextColor(iColor3);
        this.previewButton.setTextColor(-1);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(iColor4);
        gradientDrawable2.setCornerRadius(dp(Math.min(12, cornerRadiusDp)));
        this.previewButton.setBackground(gradientDrawable2);
    }

    private int themeColor(String str, int i) {
        try {
            int identifier = getResources().getIdentifier(str, "attr", getPackageName());
            if (identifier == 0) {
                return i;
            }
            TypedValue typedValue = new TypedValue();
            if (getTheme().resolveAttribute(identifier, typedValue, true)) {
                return typedValue.resourceId != 0 ? getResources().getColor(typedValue.resourceId) : typedValue.data;
            }
            return i;
        } catch (Throwable th) {
            return i;
        }
    }

    private int color(String str, int i) {
        EditText editText = this.colorFields.get(str);
        return ThemeEngine142.parseColor(editText == null ? null : editText.getText().toString(), i);
    }

    private TextView text(String str, int i, boolean z) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(themeColor("cinColorTextPrimary", ThemeEngine142.ink(this)));
        textView.setGravity(8388627);
        if (z) {
            textView.setTypeface(null, 1);
        }
        return textView;
    }

    private Switch toggle(String str, boolean z) {
        Switch r0 = new Switch(this);
        r0.setText(str);
        r0.setTextColor(themeColor("cinColorTextPrimary", ThemeEngine142.ink(this)));
        r0.setChecked(z);
        r0.setGravity(8388627);
        r0.setPadding(dp(8), 0, dp(8), 0);
        r0.setTag("ca1_theme142_toggle");
        return r0;
    }

    private GradientDrawable flatSurface(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(i2));
        return gradientDrawable;
    }

    private LinearLayout.LayoutParams lp(int i, int i2, int i3, int i4, int i5, int i6) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.setMargins(dp(i3), dp(i4), dp(i5), dp(i6));
        return layoutParams;
    }

    private int dp(int i) {
        return (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
