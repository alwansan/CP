package com.shabakaty.cinemana.local;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.DocumentsContract;
import android.text.InputFilter;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.connectsdk.R;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes11.dex */
public final class LocalAccountActivity extends Activity {
    private ImageView avatar;
    private int background;
    private boolean busy;
    private LinearLayout content;
    private String draftName;
    private int muted;
    private EditText name;
    private String operation = "account";
    private int primary;
    private int raised;
    private boolean restartAfterImport;
    private byte[] selected;

    /* JADX INFO: renamed from: com.shabakaty.cinemana.local.LocalAccountActivity$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ String val$success;
        final /* synthetic */ Task val$task;

        AnonymousClass1(Task task, String str) {
            this.val$task = task;
            this.val$success = str;
        }

        /* JADX INFO: renamed from: lambda$run$0$com-shabakaty-cinemana-local-LocalAccountActivity$1, reason: not valid java name */
        /* synthetic */ void m70lambda$run$0$comshabakatycinemanalocalLocalAccountActivity$1(String str) {
            Intent launchIntentForPackage;
            LocalAccountActivity.this.busy = false;
            if (LocalAccountActivity.this.isFinishing()) {
                return;
            }
            LocalAccountActivity.this.toast(str);
            if (!LocalAccountActivity.this.restartAfterImport || (launchIntentForPackage = LocalAccountActivity.this.getPackageManager().getLaunchIntentForPackage(LocalAccountActivity.this.getPackageName())) == null) {
                LocalAccountActivity.this.render();
                return;
            }
            launchIntentForPackage.addFlags(268468224);
            LocalAccountActivity.this.startActivity(launchIntentForPackage);
            LocalAccountActivity.this.finish();
        }

        /* JADX INFO: renamed from: lambda$run$1$com-shabakaty-cinemana-local-LocalAccountActivity$1, reason: not valid java name */
        /* synthetic */ void m71lambda$run$1$comshabakatycinemanalocalLocalAccountActivity$1(DialogInterface dialogInterface, int i) {
            LocalAccountActivity.this.saveZipFile();
        }

        /* JADX INFO: renamed from: lambda$run$2$com-shabakaty-cinemana-local-LocalAccountActivity$1, reason: not valid java name */
        /* synthetic */ void m72lambda$run$2$comshabakatycinemanalocalLocalAccountActivity$1() {
            LocalAccountActivity.this.busy = false;
            if (LocalAccountActivity.this.isFinishing()) {
                return;
            }
            LocalAccountActivity.this.toast("تعذر إكمال العملية؛ راجع سجل التشخيص.");
            if (LocalAccountActivity.this.operation.equals("backup_export")) {
                new AccountUi.Builder(LocalAccountActivity.this).setTitle("طريقة حفظ بديلة").setMessage("يمكن اختيار ملف ZIP مباشرة بدلاً من المجلد.").setPositiveButton("حفظ ملف ZIP", new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$1$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f$0.m71lambda$run$1$comshabakatycinemanalocalLocalAccountActivity$1(dialogInterface, i);
                    }
                }).setNegativeButton("إغلاق", (DialogInterface.OnClickListener) null).show();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.val$task.run();
                LocalAccountActivity localAccountActivity = LocalAccountActivity.this;
                final String str = this.val$success;
                localAccountActivity.runOnUiThread(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m70lambda$run$0$comshabakatycinemanalocalLocalAccountActivity$1(str);
                    }
                });
            } catch (Exception e) {
                LocalRuntime.failure(LocalAccountActivity.this.operation, e);
                LocalAccountActivity.this.runOnUiThread(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m72lambda$run$2$comshabakatycinemanalocalLocalAccountActivity$1();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface Task {
        void run() throws Exception;
    }

    private void button(String str, final Runnable runnable, boolean z) {
        Button button = new Button(this);
        button.setText(str);
        button.setTextSize(16.0f);
        button.setAllCaps(false);
        button.setTextColor(z ? this.background : this.primary);
        button.setBackground(rounded(z ? this.primary : this.raised, 12));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(52));
        layoutParams.topMargin = dp(16);
        this.content.addView(button, layoutParams);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m52x53537dfb(runnable, view);
            }
        });
    }

    private int color(String str, int i) {
        int identifier = getResources().getIdentifier(str, "attr", getPackageName());
        TypedValue typedValue = new TypedValue();
        return (identifier == 0 || !getTheme().resolveAttribute(identifier, typedValue, true) || typedValue.type < 16 || typedValue.type > 31) ? i : typedValue.data;
    }

    private int dp(int i) {
        return Math.round(i * getResources().getDisplayMetrics().density);
    }

    private void pick(String str, int i) {
        if (this.busy) {
            return;
        }
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT").setType(str).addCategory("android.intent.category.OPENABLE"), i);
    }

    private void pickImage() {
        new AccountUi.Builder(this).setTitle("اختيار صورة").setItems(Build.VERSION.SDK_INT >= 33 ? new String[]{"معرض الهاتف", "منتقي الصور", "الملفات"} : new String[]{"معرض الهاتف", "الملفات"}, new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda16
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m59x61e95a0e(dialogInterface, i);
            }
        }).setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null).show();
    }

    private void prepareBackup() throws Exception {
        LocalRuntime.log("backup_snapshot_begin");
        LocalRuntime.flushProgress();
        LocalRuntime.snapshotLegacy(!LocalRuntime.data().config("legacy_seeded", "0").equals("1"));
        LocalRuntime.log("backup_snapshot_ready");
    }

    private byte[] read(Uri uri, int i) throws IOException {
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                if (inputStreamOpenInputStream == null) {
                    throw new IOException("image unreadable");
                }
                byte[] bArr = new byte[RecyclerView.b0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
                while (true) {
                    int i2 = inputStreamOpenInputStream.read(bArr);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        if (inputStreamOpenInputStream != null) {
                            inputStreamOpenInputStream.close();
                        }
                        return byteArray;
                    }
                    if (byteArrayOutputStream.size() + i2 > i) {
                        throw new IOException("image limit");
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render() {
        this.background = color("cinColorBackground", -15724012);
        this.raised = color("cinColorSurfaceRaised", -14670035);
        this.primary = color("cinColorTextPrimary", -723465);
        this.muted = color("cinColorTextSecondary", -5590859);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setBackgroundColor(this.background);
        LinearLayout linearLayout = new LinearLayout(this);
        this.content = linearLayout;
        linearLayout.setOrientation(1);
        this.content.setPadding(dp(20), dp(12), dp(20), dp(28));
        this.content.setLayoutDirection(1);
        this.content.setFocusableInTouchMode(true);
        scrollView.addView(this.content);
        setContentView(scrollView);
        setTitle("تعديل");
        getWindow().setStatusBarColor(this.background);
        getWindow().setNavigationBarColor(this.background);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setGravity(16);
        this.content.addView(linearLayout2, new LinearLayout.LayoutParams(-1, dp(52)));
        TextView textView = new TextView(this);
        textView.setText("→");
        textView.setTextColor(this.primary);
        textView.setTextSize(30.0f);
        textView.setGravity(17);
        textView.setContentDescription("رجوع");
        linearLayout2.addView(textView, new LinearLayout.LayoutParams(dp(48), -1));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m62xf373fde6(view);
            }
        });
        TextView textView2 = new TextView(this);
        textView2.setText("تعديل");
        textView2.setTextSize(22.0f);
        textView2.setTextColor(this.primary);
        linearLayout2.addView(textView2);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setGravity(16);
        linearLayout3.setPadding(0, dp(24), 0, dp(24));
        this.content.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this);
        this.avatar = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.avatar.setBackground(rounded(this.raised, 64));
        this.avatar.setClipToOutline(true);
        this.avatar.setContentDescription("صورة الحساب");
        linearLayout3.addView(this.avatar, new LinearLayout.LayoutParams(dp(R.styleable.AppCompatTheme_toolbarNavigationButtonStyle), dp(R.styleable.AppCompatTheme_toolbarNavigationButtonStyle)));
        LinearLayout linearLayout4 = new LinearLayout(this);
        linearLayout4.setOrientation(1);
        linearLayout4.setPadding(dp(20), 0, dp(20), 0);
        linearLayout3.addView(linearLayout4, new LinearLayout.LayoutParams(0, -2, 1.0f));
        TextView textView3 = new TextView(this);
        String strName = this.draftName;
        if (strName == null) {
            strName = LocalRuntime.name();
        }
        textView3.setText(strName);
        textView3.setTextColor(this.primary);
        textView3.setTextSize(22.0f);
        textView3.setTypeface(null, 1);
        linearLayout4.addView(textView3);
        Button button = new Button(this);
        button.setText("تغيير الصورة");
        button.setAllCaps(false);
        button.setTextColor(this.primary);
        button.setBackground(rounded(this.raised, 12));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(46));
        layoutParams.topMargin = dp(12);
        linearLayout4.addView(button, layoutParams);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m63x36ff1ba7(view);
            }
        });
        text("الملف الشخصي", 19);
        text("الاسم", 14);
        EditText editText = new EditText(this);
        this.name = editText;
        editText.setSingleLine(true);
        this.name.setTextColor(this.primary);
        this.name.setTextSize(17.0f);
        this.name.setHintTextColor(this.muted);
        this.name.setHint("اسم المستخدم");
        EditText editText2 = this.name;
        String strName2 = this.draftName;
        if (strName2 == null) {
            strName2 = LocalRuntime.name();
        }
        editText2.setText(strName2);
        this.name.setFilters(new InputFilter[]{new InputFilter.LengthFilter(80)});
        this.name.setBackground(rounded(this.raised, 12));
        this.name.setPadding(dp(16), 0, dp(16), 0);
        this.content.addView(this.name, new LinearLayout.LayoutParams(-1, dp(54)));
        button("حفظ التغييرات", new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m65xbe155729();
            }
        }, true);
        View view = new View(this);
        view.setBackgroundColor(this.raised);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, dp(1));
        layoutParams2.topMargin = dp(28);
        layoutParams2.bottomMargin = dp(16);
        this.content.addView(view, layoutParams2);
        text("النسخ الاحتياطي", 19);
        button("تصدير نسخة احتياطية", new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m66x1a074ea();
            }
        }, false);
        button("استيراد نسخة احتياطية", new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m68x88b6b06c();
            }
        }, false);
        this.content.requestFocus();
        if (LocalRuntime.store != null) {
            text("مكان حفظ الحساب", 14);
            TextView textView4 = new TextView(this);
            textView4.setText(LocalRuntime.store.directory().getAbsolutePath());
            textView4.setTextSize(12.0f);
            textView4.setTextColor(this.muted);
            textView4.setTextIsSelectable(true);
            this.content.addView(textView4);
            if (!LocalRuntime.store.directory().equals(LocalRuntime.sharedDirectory())) {
                button("السماح بحفظ الحساب في مجلد سينمانا", new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m69xcc41ce2d();
                    }
                }, false);
            }
        }
        LocalRuntime.IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m61x2298fc56();
            }
        });
    }

    private GradientDrawable rounded(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(i2));
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveZipFile() {
        this.operation = "backup_export";
        startActivityForResult(new Intent("android.intent.action.CREATE_DOCUMENT").setType("application/zip").addCategory("android.intent.category.OPENABLE").putExtra("android.intent.extra.TITLE", "Cinemana-account-" + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT).format(new Date()) + ".zip"), 4);
    }

    private void text(String str, int i) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(i);
        textView.setTextColor(i >= 19 ? this.primary : this.muted);
        textView.setPadding(0, dp(12), 0, dp(10));
        this.content.addView(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toast(String str) {
        Toast.makeText(this, str, 1).show();
    }

    private void work(Task task, String str) {
        if (this.busy) {
            return;
        }
        this.busy = true;
        toast("جارٍ التنفيذ…");
        LocalRuntime.IO.execute(new AnonymousClass1(task, str));
    }

    /* JADX INFO: renamed from: lambda$button$12$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m52x53537dfb(Runnable runnable, View view) {
        if (this.busy) {
            return;
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: lambda$onActivityResult$14$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m53x5870d6c4(Uri uri) throws Exception {
        byte[] bArr = read(uri, 8388608);
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        if (options.outWidth <= 0 || options.outHeight <= 0 || ((long) options.outWidth) * ((long) options.outHeight) > 100000000) {
            throw new IOException("invalid image");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        while (true) {
            options2.inSampleSize = i;
            if (Math.max(options.outWidth, options.outHeight) / options2.inSampleSize <= 512) {
                break;
            } else {
                i = options2.inSampleSize * 2;
            }
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
        if (bitmapDecodeByteArray == null) {
            throw new IOException("invalid image");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeByteArray.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        bitmapDecodeByteArray.recycle();
        this.selected = byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: renamed from: lambda$onActivityResult$15$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m54x9bfbf485(Uri uri) throws Exception {
        prepareBackup();
        LocalRuntime.log("backup_folder_selected");
        Uri uriCreateDocument = DocumentsContract.createDocument(getContentResolver(), DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)), "application/zip", "Cinemana-account-" + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT).format(new Date()) + ".zip");
        if (uriCreateDocument == null) {
            throw new IOException("document not created");
        }
        try {
            OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uriCreateDocument, "w");
            try {
                if (outputStreamOpenOutputStream == null) {
                    throw new IOException("document not writable");
                }
                LocalRuntime.data().exportZip(outputStreamOpenOutputStream);
                if (outputStreamOpenOutputStream != null) {
                    outputStreamOpenOutputStream.close();
                }
            } catch (Throwable th) {
                if (outputStreamOpenOutputStream != null) {
                    try {
                        outputStreamOpenOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            try {
                DocumentsContract.deleteDocument(getContentResolver(), uriCreateDocument);
            } catch (Exception unused) {
            }
            throw e;
        }
    }

    /* JADX INFO: renamed from: lambda$onActivityResult$16$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m55xdf871246(Uri uri) throws Exception {
        prepareBackup();
        OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uri, "w");
        try {
            if (outputStreamOpenOutputStream == null) {
                throw new IOException("document not writable");
            }
            LocalRuntime.data().exportZip(outputStreamOpenOutputStream);
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.close();
            }
        } catch (Throwable th) {
            if (outputStreamOpenOutputStream != null) {
                try {
                    outputStreamOpenOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: lambda$onActivityResult$17$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m56x23123007(Uri uri) throws Exception {
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        try {
            if (inputStreamOpenInputStream == null) {
                throw new IOException("document not readable");
            }
            LocalRuntime.importAccount(inputStreamOpenInputStream);
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream.close();
            }
            this.selected = null;
            this.draftName = null;
            LocalRuntime.updateProfile();
            LocalRuntime.restoreLegacy();
            LocalRuntime.log("ui_refresh_after_import");
            LocalRuntime.requestScan(true);
            this.restartAfterImport = true;
        } catch (Throwable th) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m57x6ee9d4c9() {
        if (isFinishing()) {
            return;
        }
        EditText editText = this.name;
        if (editText != null && editText.hasFocus()) {
            this.draftName = this.name.getText().toString();
        }
        render();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m58xb274f28a() {
        try {
            LocalRuntime.refreshStorage();
            runOnUiThread(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m57x6ee9d4c9();
                }
            });
        } catch (Exception e) {
            LocalRuntime.failure("storage_open", e);
        }
    }

    /* JADX INFO: renamed from: lambda$pickImage$13$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m59x61e95a0e(DialogInterface dialogInterface, int i) {
        try {
            this.operation = "photo";
            if (i == 0) {
                Intent intentAddCategory = new Intent("android.intent.action.GET_CONTENT").setType("image/*").addCategory("android.intent.category.OPENABLE");
                Intent intentAddCategory2 = new Intent("android.intent.action.OPEN_DOCUMENT").setType("image/*").addCategory("android.intent.category.OPENABLE");
                Intent intentCreateChooser = Intent.createChooser(intentAddCategory, "اختيار صورة");
                intentCreateChooser.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intentAddCategory2});
                startActivityForResult(intentCreateChooser, 1);
            } else if (Build.VERSION.SDK_INT < 33 || i != 1) {
                pick("image/*", 1);
            } else {
                startActivityForResult(new Intent("android.provider.action.PICK_IMAGES").setType("image/*"), 1);
            }
        } catch (ActivityNotFoundException unused) {
            pick("image/*", 1);
        }
    }

    /* JADX INFO: renamed from: lambda$render$10$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m60xdf0dde95(Bitmap bitmap) {
        if (isFinishing()) {
            return;
        }
        if (bitmap != null) {
            this.avatar.setImageBitmap(bitmap);
            return;
        }
        int identifier = getResources().getIdentifier("ic_profile", "drawable", getPackageName());
        ImageView imageView = this.avatar;
        if (identifier == 0) {
            identifier = android.R.drawable.ic_menu_myplaces;
        }
        imageView.setImageResource(identifier);
    }

    /* JADX INFO: renamed from: lambda$render$11$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m61x2298fc56() {
        try {
            byte[] bArrAvatar = this.selected;
            if (bArrAvatar == null) {
                bArrAvatar = LocalRuntime.data().avatar();
            }
            final Bitmap bitmapDecodeByteArray = bArrAvatar.length == 0 ? null : BitmapFactory.decodeByteArray(bArrAvatar, 0, bArrAvatar.length);
            runOnUiThread(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m60xdf0dde95(bitmapDecodeByteArray);
                }
            });
        } catch (Exception e) {
            LocalRuntime.failure("profile_load", e);
        }
    }

    /* JADX INFO: renamed from: lambda$render$2$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m62xf373fde6(View view) {
        finish();
    }

    /* JADX INFO: renamed from: lambda$render$3$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m63x36ff1ba7(View view) {
        if (this.busy) {
            return;
        }
        this.draftName = this.name.getText().toString();
        pickImage();
    }

    /* JADX INFO: renamed from: lambda$render$4$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m64x7a8a3968(String str) throws Exception {
        LocalAccountStore localAccountStoreData = LocalRuntime.data();
        byte[] bArrAvatar = this.selected;
        if (bArrAvatar == null) {
            bArrAvatar = localAccountStoreData.avatar();
        }
        localAccountStoreData.profile(str, bArrAvatar);
        LocalRuntime.updateProfile();
        this.selected = null;
    }

    /* JADX INFO: renamed from: lambda$render$5$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m65xbe155729() {
        final String strTrim = this.name.getText().toString().trim();
        if (strTrim.isEmpty()) {
            toast("اكتب الاسم أولاً");
            return;
        }
        this.draftName = strTrim;
        this.operation = "profile_save";
        work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda0
            @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
            public final void run() throws Exception {
                this.f$0.m64x7a8a3968(strTrim);
            }
        }, "تم حفظ التغييرات");
    }

    /* JADX INFO: renamed from: lambda$render$6$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m66x1a074ea() {
        this.draftName = this.name.getText().toString();
        this.operation = "backup_export";
        LocalRuntime.log("backup_folder_picker");
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.addFlags(3);
        startActivityForResult(intent, 2);
    }

    /* JADX INFO: renamed from: lambda$render$7$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m67x452b92ab(DialogInterface dialogInterface, int i) {
        pick("application/zip", 3);
    }

    /* JADX INFO: renamed from: lambda$render$8$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m68x88b6b06c() {
        this.operation = "backup_import";
        this.draftName = this.name.getText().toString();
        new AccountUi.Builder(this).setTitle("استيراد نسخة احتياطية").setMessage("ستُستبدل بيانات الحساب الحالية ببيانات النسخة المختارة.").setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null).setPositiveButton("اختيار الملف", new DialogInterface.OnClickListener() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m67x452b92ab(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: renamed from: lambda$render$9$com-shabakaty-cinemana-local-LocalAccountActivity, reason: not valid java name */
    /* synthetic */ void m69xcc41ce2d() {
        if (Build.VERSION.SDK_INT >= 23) {
            requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 268);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1 || intent == null || intent.getData() == null) {
            return;
        }
        LocalRuntime.log("account_picker_result code=" + i);
        final Uri data = intent.getData();
        if (i == 1) {
            work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda11
                @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
                public final void run() throws Exception {
                    this.f$0.m53x5870d6c4(data);
                }
            }, "تم اختيار الصورة؛ اضغط حفظ التغييرات");
            return;
        }
        if (i == 2) {
            work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda12
                @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
                public final void run() throws Exception {
                    this.f$0.m54x9bfbf485(data);
                }
            }, "تم تصدير النسخة إلى المجلد المختار");
        } else if (i == 4) {
            work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda13
                @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
                public final void run() throws Exception {
                    this.f$0.m55xdf871246(data);
                }
            }, "تم تصدير النسخة الاحتياطية");
        } else if (i == 3) {
            work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda14
                @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
                public final void run() throws Exception {
                    this.f$0.m56x23123007(data);
                }
            }, "تم استيراد الحساب وتحديث البيانات");
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LocalRuntime.init(this);
        render();
        LocalRuntime.IO.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m58xb274f28a();
            }
        });
        if (Build.VERSION.SDK_INT < 33 || checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            return;
        }
        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 266);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 268) {
            work(new Task() { // from class: com.shabakaty.cinemana.local.LocalAccountActivity$$ExternalSyntheticLambda10
                @Override // com.shabakaty.cinemana.local.LocalAccountActivity.Task
                public final void run() throws IOException {
                    LocalRuntime.refreshStorage();
                }
            }, "تم تحديث مكان الحفظ");
        }
    }
}
