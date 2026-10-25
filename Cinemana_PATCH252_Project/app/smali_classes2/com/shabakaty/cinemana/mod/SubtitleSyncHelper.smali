.class public final Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_TENTHS:I = 0xd2f00

.field private static volatile offsetUs:J


# direct methods
.method public static adjustPositionUs(J)J
    .locals 4

    sget-wide v0, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->offsetUs:J

    sub-long v2, p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static clampTenths(I)I
    .locals 1

    const v0, 0xd2f00

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    neg-int v0, v0

    if-ge p0, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method public static commitText(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->clampTenths(I)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->setOffsetTenths(I)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->getTenths()I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static formatTenths(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p0, :cond_0

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOffsetUs()J
    .locals 2

    sget-wide v0, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->offsetUs:J

    return-wide v0
.end method

.method public static getTenths()I
    .locals 4

    sget-wide v0, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->offsetUs:J

    const-wide/32 v2, 0x186a0

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static init(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cinemana_mod_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subtitle_sync_tenths"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->clampTenths(I)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->setOffsetTenths(I)V

    :cond_0
    return-void
.end method

.method public static save(Landroid/content/Context;I)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->clampTenths(I)I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->setOffsetTenths(I)V

    const-string v0, "cinemana_mod_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_sync_tenths"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static setOffsetTenths(I)V
    .locals 4

    invoke-static {p0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->clampTenths(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x186a0

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->offsetUs:J

    return-void
.end method

.method private static addHalfSecondButtons(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\\u2212 0.5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v1, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;

    const/4 v2, -0x5

    invoke-direct {v1, p0, p2, v2}, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "+ 0.5s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v1, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p2, v2}, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showDialog(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u0644\u0645\u0648\u062c\u0628 \u064a\u0624\u062e\u0631 \u0627\u0644\u062a\u0631\u062c\u0645\u0629\u060c \u0648\u0627\u0644\u0633\u0627\u0644\u0628 \u064a\u0642\u062f\u0645\u0647\u0627"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u2212 0.1s"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x3002

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->getTenths()I

    move-result v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "+ 0.1s"

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v2, v6}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->addHalfSecondButtons(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0627\u0644\u0642\u064a\u0645\u0629 \u062a\u062d\u0641\u0638 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;

    const/4 v5, -0x1

    invoke-direct {v4, v0, v6, v5}, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v6, v5}, Lcom/shabakaty/cinemana/mod/SubtitleSyncStepListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0645\u0632\u0627\u0645\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u062a\u0645"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;

    invoke-direct {v7, v0, v6}, Lcom/shabakaty/cinemana/mod/SubtitleSyncDoneListener;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u0625\u0644\u063a\u0627\u0621"

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static step(Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->commitText(Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-static {}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->getTenths()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->clampTenths(I)I

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->setOffsetTenths(I)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/SubtitleSyncHelper;->formatTenths(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
