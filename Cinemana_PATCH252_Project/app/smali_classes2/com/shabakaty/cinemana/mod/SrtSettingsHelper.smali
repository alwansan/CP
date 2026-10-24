.class public Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;
.super Ljava/lang/Object;


# direct methods
.method public static applyPercent(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->applyPercent(Ljava/lang/Object;I)V

    return-void
.end method

.method public static applySavedFontSize(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->restoreController(Ljava/lang/Object;)V

    return-void
.end method

.method public static applySavedTranslationY(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->getSavedTranslationY(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->applyTranslationY(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;F)V

    :cond_0
    return-void
.end method

.method public static applyTranslationY(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getSubtitleLayout()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public static buildLabelText(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062d\u062c\u0645 \u0627\u0644\u062e\u0637: "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedPercent(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->percent(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getSavedTranslationY(Landroid/content/Context;)F
    .locals 3

    const-string v0, "cinemana_mod_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "srt_translation_y"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static init(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "srt_settings_icon"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v1, Lcom/shabakaty/cinemana/mod/SrtSettingsClickListener;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/mod/SrtSettingsClickListener;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->applySavedFontSize(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->applySavedTranslationY(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method

.method public static savePercent(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->savePercent(Landroid/content/Context;I)V

    return-void
.end method

.method public static saveTranslationY(Landroid/content/Context;F)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "cinemana_mod_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "srt_translation_y"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static showDialog(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 16

    move-object/from16 p0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x38

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->playerSurface(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->getSavedPercent(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u062a\u0631\u062c\u0645\u0629 SRT"

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x0

    const/16 v15, 0x18

    invoke-virtual {v8, v14, v14, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v7}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->buildLabelText(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/SeekBar;

    invoke-direct {v11, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v13, 0x122

    invoke-virtual {v11, v13}, Landroid/widget/SeekBar;->setMax(I)V

    add-int/lit8 v13, v7, -0xa

    if-gez v13, :cond_0

    const/4 v13, 0x0

    :cond_0
    invoke-virtual {v11, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v13, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v9}, Lcom/shabakaty/cinemana/mod/SrtSizeSeekListener;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;Landroid/widget/TextView;)V

    invoke-virtual {v11, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0645\u0648\u0636\u0639 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/SeekBar;

    invoke-direct {v6, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v13, 0x190

    invoke-virtual {v6, v13}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SrtSettingsHelper;->getSavedTranslationY(Landroid/content/Context;)F

    move-result v14

    const/high16 v15, 0x43480000    # 200.0f

    add-float/2addr v14, v15

    float-to-int v13, v14

    if-gez v13, :cond_1

    const/4 v13, 0x0

    :cond_1
    const/16 v14, 0x190

    if-le v13, v14, :cond_2

    move v13, v14

    :cond_2
    invoke-virtual {v6, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v13, Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;

    move-object/from16 v14, p0

    invoke-direct {v13, v14}, Lcom/shabakaty/cinemana/mod/SrtPositionSeekListener;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v6, v13}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v14, "\u064a\u0637\u0628\u0642 \u0627\u0644\u062a\u063a\u064a\u064a\u0631 \u0641\u0648\u0631\u064a\u0627\u064b \u0648\u064a\u062d\u0641\u0638 \u062a\u0644\u0642\u0627\u0626\u064a\u0627\u064b"

    invoke-static {v14}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x0

    const/16 v14, 0x14

    invoke-virtual {v13, v10, v14, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const-string v14, "\u0625\u063a\u0644\u0627\u0642"

    invoke-static {v14}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Ui7;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method
