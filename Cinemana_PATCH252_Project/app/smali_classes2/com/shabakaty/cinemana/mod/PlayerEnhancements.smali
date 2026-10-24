.class public final Lcom/shabakaty/cinemana/mod/PlayerEnhancements;
.super Ljava/lang/Object;


# static fields
.field private static final PREFS:Ljava/lang/String; = "cinemana_player_prefs"

.field private static final TAG:Ljava/lang/String; = "cinemana_multi_skip_button"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dpValue(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private static findButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Landroid/view/View;
    .locals 1

    const-string v0, "cinemana_multi_skip_button"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static hideAllPlayerUi(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 4

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getCinemanaPlayerView()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getBinding()Lcom/shabakaty/downloader/n10;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/shabakaty/downloader/n10;->O:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    :cond_0
    return-void
.end method

.method public static hideAllPlayerUiDelayed(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->hideAllPlayerUi(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    new-instance v0, Lcom/shabakaty/cinemana/mod/HidePlayerUiRunnable;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/mod/HidePlayerUiRunnable;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static init(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 8

    const-string v0, "cinemana_multi_skip_button"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v0, "\u23e9\ufe0e"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x40

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x40

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x55

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v4, 0x78

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance v4, Lcom/shabakaty/cinemana/mod/PlayerEnhancementClickListener;

    invoke-direct {v4, p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancementClickListener;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->refreshMultiSkipButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->initPreviewShortcut(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method

.method private static initPreviewShortcut(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 2

    const-string v0, "subtitle_preview_eye"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/shabakaty/cinemana/mod/SubtitlePreviewShortcutClickListener;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/mod/SubtitlePreviewShortcutClickListener;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static isEnabled(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cinemana_player_prefs"

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "multi_skip_enabled"

    const/4 p0, 0x1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static performMultiSkip(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 10

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getCinemanaPlayerView()Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlayer()Lcom/shabakaty/downloader/s64;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cinemana_player_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "multi_skip_seconds"

    const/16 v3, 0x55

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v8, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ak;->X()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    move-wide v2, v6

    :cond_1
    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    move-wide v2, v4

    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/ak;->q(J)V

    invoke-static {p0, v8}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->showSkipBadge(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V

    :cond_3
    return-void
.end method

.method public static refreshMultiSkipButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 4

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->findButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->isEnabled(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static showMultiSkipDialog(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const-string v2, "cinemana_player_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "multi_skip_seconds"

    const/16 v4, 0x55

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const-string v4, "\u062a\u0641\u0639\u064a\u0644 \u0632\u0631 \u23e9\ufe0e"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "multi_skip_enabled"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "\u0627\u0644\u062a\u062e\u0637\u064a \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u062d\u0641\u0638"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;

    invoke-direct {v7, v0, v1, v3, p0}, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/Switch;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void
.end method

.method private static showSkipBadge(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;I)V
    .locals 8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "cinemana_multi_skip_badge"

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x66000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x6

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x40

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x24

    invoke-static {v0, v5}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, -0x4b

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->dpValue(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    new-instance v7, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;

    invoke-direct {v7, p0, v2}, Lcom/shabakaty/cinemana/mod/RemoveSkipBadgeRunnable;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    const-wide/16 v4, 0x258

    invoke-virtual {p0, v7, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static updateForPlayback(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 3

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->findButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->isEnabled(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
