.class public final Lcom/shabakaty/cinemana/ca1/Settings94;
.super Ljava/lang/Object;
.source "Settings94.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dialog(Landroid/content/Context;)V
    .locals 14

    .line 5
    const-string v0, "ca1_94"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x18

    const/16 v4, 0xc

    invoke-virtual {v0, v2, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, -0xebded5

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0627\u0644\u0633\u062d\u0628 \u0627\u0644\u0623\u0641\u0642\u064a \u0644\u062a\u0645\u0631\u064a\u0631 \u0627\u0644\u0641\u064a\u062f\u064a\u0648"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setTextColor(I)V

    const-string v6, "swipe"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/SeekBar;

    invoke-direct {v8, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    invoke-virtual {v8, v7}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v9, "sensitivity"

    const/16 v10, 0x3c

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/16 v11, 0xf0

    const/16 v12, 0xb4

    const/16 v13, 0x1e

    if-ne v9, v13, :cond_0

    goto :goto_0

    :cond_0
    if-ne v9, v10, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v9, v12, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    if-ne v9, v11, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v1, 0x78

    filled-new-array {v13, v10, v1, v12, v11}, [I

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u062d\u0633\u0627\u0633\u064a\u0629 \u0627\u0644\u0633\u062d\u0628: "

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    aget v9, v7, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u062b\u0627\u0646\u064a\u0629 \u0644\u0639\u0631\u0636 \u0627\u0644\u0634\u0627\u0634\u0629"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Settings94$1;

    invoke-direct {v1, v6, v7}, Lcom/shabakaty/cinemana/ca1/Settings94$1;-><init>(Landroid/widget/TextView;[I)V

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v6, "\u0645\u0639\u0627\u064a\u0646\u0629 \u0645\u0635\u063a\u0631\u0629 \u0623\u062b\u0646\u0627\u0621 \u0633\u062d\u0628 \u0634\u0631\u064a\u0637 \u0627\u0644\u0648\u0642\u062a"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setTextColor(I)V

    const-string v6, "preview"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v9, "\u062a\u0645\u0631\u064a\u0631 \u0633\u0631\u064a\u0639 \u0642\u0631\u0628 \u0625\u0637\u0627\u0631 \u0645\u0641\u062a\u0627\u062d\u064a"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setTextColor(I)V

    const-string v5, "keyframe95"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x4f4239

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v5, "\u0627\u0644\u0633\u062d\u0628 \u0644\u0644\u064a\u0633\u0627\u0631 \u064a\u0631\u062c\u0639 \u0627\u0644\u0641\u064a\u062f\u064a\u0648\u060c \u0648\u0644\u0644\u064a\u0645\u064a\u0646 \u064a\u0642\u062f\u0645\u0647. \u0627\u0644\u0642\u0641\u0632\u0629 \u0642\u0631\u0628 \u0625\u0637\u0627\u0631 \u0645\u0641\u062a\u0627\u062d\u064a \u0642\u062f \u062a\u062e\u062a\u0644\u0641 \u0642\u0644\u064a\u0644\u064b\u0627 \u0639\u0646 \u0627\u0644\u0648\u0642\u062a \u0627\u0644\u0645\u0637\u0644\u0648\u0628\u060c \u0648\u062a\u0637\u0628\u0642 \u0639\u0646\u062f \u0641\u062a\u062d \u0627\u0644\u0645\u0634\u063a\u0644 \u0627\u0644\u062a\u0627\u0644\u064a. \u0627\u0644\u0645\u0639\u0627\u064a\u0646\u0629 \u0644\u0627 \u062a\u0648\u0642\u0641 \u0627\u0644\u0641\u064a\u062f\u064a\u0648\u061b \u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u0628\u062b \u062a\u0639\u062a\u0645\u062f \u0639\u0644\u0649 \u0627\u0633\u062a\u062c\u0627\u0628\u0629 \u0627\u0644\u062e\u0627\u062f\u0645."

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u0627\u0644\u062a\u0645\u0631\u064a\u0631 \u0648\u0645\u0639\u0627\u064a\u0646\u0629 \u0627\u0644\u0641\u064a\u062f\u064a\u0648"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;

    move-object v2, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;[ILandroid/widget/SeekBar;)V

    const-string v1, "\u062d\u0641\u0638"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialog95;->show(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic lambda$dialog$2(Landroid/content/SharedPreferences;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p6, "swipe"

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-interface {p0, p6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "preview"

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "keyframe95"

    invoke-virtual {p3}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p5}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    aget p1, p4, p1

    const-string p2, "sensitivity"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static decoderDialog(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "FFmpeg \u2014 الديكودر البرمجي (الافتراضي)"
    const/4 v2, 0x0
    aput-object v1, v0, v2

    const-string v1, "MediaCodec \u2014 ديكودر Cinemana الأصلي"
    const/4 v2, 0x1
    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/shabakaty/cinemana/player/CinemanaDecoderMode;->getMode(Landroid/content/Context;)I
    move-result v1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Settings94$DecoderModeClick;
    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/Settings94$DecoderModeClick;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;
    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "طريقة فك ترميز الفيديو"
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v3

    const-string v4, "يستخدم FFmpeg جميع الترميزات التي تدعمها المكتبة. يبقى MediaCodec متاحاً للمحتوى المحمي أو الترميزات غير المدعومة."
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v3

    const-string v4, "إلغاء"
    const/4 v5, 0x0
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Dialog95;->show(Landroid/app/AlertDialog;)V

    return-void
.end method


.method static synthetic lambda$settings$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Log94;->set(Z)V

    return-void
.end method

.method static synthetic lambda$settings$1(Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Settings94;->dialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$settings$2(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Settings94;->decoderDialog(Landroid/content/Context;)V
    return-void
.end method


.method public static settings(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->settings(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120;->settings(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    move-object v2, p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Log94;->init(Landroid/content/Context;)V

    const-string v0, "ca1_log94"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Switch;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Switch;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Log94;->enabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    const-string v0, "ca1_player94"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ca1_decoder_mode"
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v1

    if-eqz v1, :decoder_mode_listener_done

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Settings94$ExternalSyntheticLambda3;
    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Settings94$ExternalSyntheticLambda3;-><init>()V
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :decoder_mode_listener_done
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method
