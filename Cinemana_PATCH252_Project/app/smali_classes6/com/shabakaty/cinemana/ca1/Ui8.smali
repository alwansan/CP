.class public final Lcom/shabakaty/cinemana/ca1/Ui8;
.super Ljava/lang/Object;
.source "Ui8.java"


# static fields
.field static final BASE:F = 20.0f

.field static final KEY:Ljava/lang/String; = "ca1_subtitle_sp"

.field static final initialScale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/ui/SubtitleView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->views:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->pages:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->initialScale:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPercent(Ljava/lang/Object;I)V
    .locals 1

    .line 19
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->savePercent(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->restoreController(Ljava/lang/Object;)V

    return-void
.end method

.method public static card(Landroid/view/View;)V
    .locals 12

    .line 25
    const-string v0, "ca1_episode_rtl"

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "sub"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "title"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "info"

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "(?:\u0627\u0644\u062d\u0644\u0642\u0629|\u062d)\\s*([0-9\u0660-\u0669\u06f0-\u06f9]+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\s*\u00b7?\\s*"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\u0645\\s*([0-9\u0660-\u0669\u06f0-\u06f9]+)"

    const-string v9, "S$1"

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\n"

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v9, 0x10

    invoke-static {v6, v1, v9}, Lcom/shabakaty/cinemana/ca1/Ui7;->text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v0, 0x800013

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v9, 0x6

    invoke-static {v0, v9}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v6, v0, v11, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v7

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0627\u0644\u062d\u0644\u0642\u0629: \u2066"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2069"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_4

    const/high16 v0, 0x41500000    # 13.0f

    goto :goto_0

    :cond_4
    const/high16 v0, 0x41800000    # 16.0f

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "episode_card_rtl_error"

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static clamp(F)F
    .locals 1

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x41a00000    # 20.0f

    :goto_1
    return p0
.end method

.method public static fixed(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->prepare(Lcom/google/android/exoplayer2/ui/SubtitleView;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->c()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$refresh$0(Lcom/google/android/exoplayer2/ui/SubtitleView;)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->fixed(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V

    return-void
.end method

.method static synthetic lambda$refresh$1(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->sizeLabel(Landroid/view/View;)V

    return-void
.end method

.method public static landscape(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 24
    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public static nativeSp(F)F
    .locals 1

    .line 7
    const/high16 v0, 0x41600000    # 14.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->clamp(F)F

    move-result p0

    return p0
.end method

.method public static percent(Landroid/content/Context;)I
    .locals 1

    .line 11
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->read(Landroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static percentSp(I)F
    .locals 1

    .line 8
    const/high16 v0, 0x41a00000    # 20.0f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->clamp(F)F

    move-result p0

    return p0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "cinemana_mod_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static prepare(Lcom/google/android/exoplayer2/ui/SubtitleView;)V
    .locals 5

    .line 15
    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->views:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->read(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->t:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->u:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->x:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "subtitle_size_apply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/Ui8;->read(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " px="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->t:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->u:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->x:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static read(Landroid/content/Context;)F
    .locals 3

    .line 9
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ca1_subtitle_sp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-eqz v1, :cond_0

    const-string p0, "ca1_subtitle_sp"

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->clamp(F)F

    move-result p0

    return p0

    :cond_0
    const-string v1, "srt_font_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "srt_font_size"

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->percentSp(I)F

    move-result p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ca1_subtitle_sp"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "subtitle_size_migrate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0

    :cond_1
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->initialScale:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static refresh()V
    .locals 3

    .line 20
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->views:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Ui8$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/shabakaty/cinemana/ca1/Ui8$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/SubtitleView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Ui8;->pages:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Ui8$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/shabakaty/cinemana/ca1/Ui8$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static resetSize()V
    .locals 3

    .line 13
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    const v1, 0x400ccccd    # 2.2f

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Ui8;->nativeSp(F)F

    move-result v1

    const-string v2, "reset"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Ui8;->save(Landroid/content/Context;FLjava/lang/String;)V

    return-void
.end method

.method public static restoreController(Ljava/lang/Object;)V
    .locals 2

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getSubtitleLayout"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->fixed(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V

    :cond_0
    return-void
.end method

.method public static restoreNative(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V
    .locals 2

    .line 17
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ca1_subtitle_sp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "srt_font_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->initialScale:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->nativeSp(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->fixed(Lcom/google/android/exoplayer2/ui/SubtitleView;F)V

    return-void
.end method

.method static save(Landroid/content/Context;FLjava/lang/String;)V
    .locals 2

    .line 10
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->clamp(F)F

    move-result p1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ca1_subtitle_sp"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/high16 v0, 0x41a00000    # 20.0f

    div-float v0, p1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const-string v1, "srt_font_size"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "source="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " sp="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "subtitle_size_save"

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Ui8;->refresh()V

    return-void
.end method

.method public static saveNative(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 14
    :try_start_0
    const-string p0, "a"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->nativeSp(F)F

    move-result p0

    const-string v0, "native"

    invoke-static {p1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->save(Landroid/content/Context;FLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "subtitle_size_error"

    const-string v0, "save_native"

    invoke-static {p1, v0, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static savePercent(Landroid/content/Context;I)V
    .locals 1

    .line 12
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->percentSp(I)F

    move-result p1

    const-string v0, "SRT"

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Ui8;->save(Landroid/content/Context;FLjava/lang/String;)V

    return-void
.end method

.method public static seekValues()[Ljava/lang/Integer;
    .locals 6

    .line 23
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    return-object v1
.end method

.method static sizeLabel(Landroid/view/View;)V
    .locals 4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings_subtitles_size"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->percent(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "% \u00b7 \u062d\u062c\u0645 \u062b\u0627\u0628\u062a"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static subtitlePage(Landroid/view/View;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui8;->pages:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->sizeLabel(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
