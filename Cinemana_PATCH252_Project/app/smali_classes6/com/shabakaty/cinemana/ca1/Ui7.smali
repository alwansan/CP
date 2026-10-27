.class public final Lcom/shabakaty/cinemana/ca1/Ui7;
.super Ljava/lang/Object;
.source "Ui7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;,
        Lcom/shabakaty/cinemana/ca1/Ui7$SeasonVm;,
        Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;
    }
.end annotation


# static fields
.field static final BG:I = -0xf4ebe4

.field static final BORDER:I = -0xcbbeb3

.field static final MAIN:Landroid/os/Handler;

.field static final MUTED:I = -0x645549

.field static final RED:I = -0x26dcd0

.field static final SURFACE:I = -0xebe0d7

.field static final TEXT:I = -0x120d0a

.field public static app:Landroid/content/Context;

.field static final handoffs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final previous:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->MAIN:Landroid/os/Handler;

    .line 7
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->previous:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->sessions:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->handoffs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bg(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 17
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p0

    const p1, -0xcbbeb3

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 20
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x120d0a

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, v2, p1, p0, p1}, Landroid/widget/Button;->setPadding(IIII)V

    const p0, -0xebe0d7

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->decorate(Landroid/view/View;I)V

    return-object v0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static card(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui8;->card(Landroid/view/View;)V

    return-void
.end method

.method static decorate(Landroid/view/View;I)V
    .locals 3

    .line 18
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x33d92330

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->bg(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static dp(Landroid/content/Context;I)I
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static engineLimit()I
    .locals 3

    .line 24
    const-string v0, "com.liulishuo.filedownloader.util.FileDownloadHelper"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getAppContext"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->limit(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static icon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static id(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Log94;->init(Landroid/content/Context;)V

    .line 22
    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->limit(Landroid/content/Context;)I

    move-result p0

    const-string v0, "com.shabakaty.downloader.CnmDownloadQueue"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setMaxParallel"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "desired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "download_limit_restore"

    invoke-static {v1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$limitDialog$1(Landroid/widget/RadioGroup;Landroid/content/Context;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    const p3, 0x7f0b7000

    sub-int/2addr p0, p3

    const/4 p3, 0x1

    if-lt p0, p3, :cond_1

    const/4 p4, 0x5

    if-le p0, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "ca1_downloads"

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p4, "parallel"

    invoke-interface {p1, p4, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "com.shabakaty.downloader.CnmDownloadQueue"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    const-string p4, "setMaxParallel"

    invoke-static {p1, p4, p3}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->updateLimit(Landroid/widget/TextView;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "desired="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "download_limit_selected"

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$nativeCard$6(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 50
    const-string p2, "selected"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->refresh()V

    return-void
.end method

.method static synthetic lambda$nativeMenu$3(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->openSelected(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;)V

    return-void
.end method

.method static synthetic lambda$nativeMenu$4(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 49
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->active:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "selected"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->refresh()V

    return-void
.end method

.method static synthetic lambda$nativeMenu$5(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 49
    rem-int/lit8 p1, p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_1

    if-lt p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->range(Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_1
    if-lt p2, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Enhancements;->grid(Ljava/lang/Object;Z)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$season$2(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->nativeMenu(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$settings$0(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->limitDialog(Landroid/widget/TextView;)V

    return-void
.end method

.method public static limit(Landroid/content/Context;)I
    .locals 3

    .line 23
    if-nez p0, :cond_0

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;

    :cond_0
    const/4 v0, 0x2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ca1_downloads"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "parallel"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method static limitDialog(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;->showDownloadLimit(Landroid/widget/TextView;)V

    return-void
.end method

.method static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static varargs make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static markPrevious(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "c"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->previous:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "target="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "previous_episode_requested"

    invoke-static {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static nativeCard(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 50
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->sessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getRoot"

    invoke-static {p1, v3, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v2, "ca1_native_episode_check"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    return-void

    :cond_1
    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz v0, :cond_9

    iget-boolean v4, v0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->active:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "a"

    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt p2, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "nb"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, v0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    :cond_5
    if-nez v3, :cond_6

    return-void

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "selected"

    invoke-static {v3, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const p2, -0x26dcd0

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p0, :cond_7

    const v1, -0xd6e3dc

    :cond_7
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda1;

    invoke-direct {p0, v3, v0}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;)V

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    const/16 p0, 0x8

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static nativeMenu(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .line 49
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "h2"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Ui7;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;

    if-nez v3, :cond_2

    const-string v3, "f2"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "j"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getValue"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;

    new-instance v5, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, p0, v1, p1, v5}, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/util/List;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "\u0644\u0645 \u062a\u0635\u0644 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0639\u062f"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, v3, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->active:Z

    const-string v1, "ca1_season_selection_toolbar"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, v3, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->toolbar:Landroid/view/View;

    const-string v2, "ca1_season_selection_count"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->count:Landroid/widget/TextView;

    const-string v2, "ca1_season_download_selected"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "ca1_season_selection_close"

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda4;

    invoke-direct {v4, v3, v1}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda4;-><init>(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v3}, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->refresh()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v3, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "\u062a\u062d\u062f\u064a\u062f \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p0

    const-string p0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0646\u0637\u0627\u0642 \u0627\u0644\u062d\u0644\u0642\u0627\u062a"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    aput-object p0, v2, v4

    const-string p0, "\u0627\u0633\u062a\u062b\u0646\u0627\u0621 \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0628\u0627\u0644\u0645\u0631\u0628\u0639\u0627\u062a"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x3

    aput-object p0, v2, v4

    new-instance p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda5;

    invoke-direct {p0, v3}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda5;-><init>(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;)V

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v1, "season_selection_error"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0645\u062a\u0639\u062f\u062f"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public static navigation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "c"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->previous:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static noProgress(Ljava/lang/Object;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->previous:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static openSelected(Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;)V
    .locals 8

    .line 51
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "selected"

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->context:Landroid/content/Context;

    const-string v2, "\u062d\u062f\u062f \u0627\u0644\u062d\u0644\u0642\u0627\u062a \u0623\u0648\u0644\u064b\u0627"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "brief"

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->fragment:Ljava/lang/Object;

    const-string v4, "f2"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.shabakaty.cinemana.ca1.BatchDownload$Screen"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->fragment:Ljava/lang/Object;

    aput-object v6, v5, v0

    new-instance v6, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonVm;

    invoke-direct {v6, v2}, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonVm;-><init>(Ljava/util/List;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "g"

    invoke-static {v3, v6}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->context:Landroid/content/Context;

    const/4 v3, 0x4

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Ui7;->handoffs:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "show"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "season_selection_download"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "season_selection_download_error"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->context:Landroid/content/Context;

    const-string v1, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u0644\u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062d\u062f\u062f"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public static resize(Ljava/lang/Object;I)Z
    .locals 5

    .line 25
    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string v2, "mThreadPool"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->resizePool(Ljava/util/concurrent/ThreadPoolExecutor;I)V

    const-string v3, "mMaxThreadCount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "download_limit_applied"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parallel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " active="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " waiting="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_1
    :goto_0
    return v1

    :catchall_0
    move-exception p0

    const-string p1, "download_limit_error"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static resizePool(Ljava/util/concurrent/ThreadPoolExecutor;I)V
    .locals 1

    .line 26
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :goto_0
    return-void
.end method

.method public static restoreSelection(Ljava/lang/Object;)V
    .locals 5

    .line 52
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->handoffs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "episodes"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "selected"

    invoke-static {v2, v4, v3}, Lcom/shabakaty/cinemana/ca1/Enhancements;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "refresh"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static resume(Ljava/lang/Object;J)J
    .locals 4

    .line 34
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Ui7;->previous:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getVideoModel"

    invoke-static {p0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v3, "nb"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x2710

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved_ms="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " resume_ms="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "previous_episode_resume"

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public static season(Ljava/lang/Object;Landroid/view/View;)V
    .locals 6

    .line 48
    const-string v0, "ca1_season_search"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0xebe0d7

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ic_ca1_search"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->icon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v0, "ca1_season_select"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p0, Lcom/shabakaty/cinemana/ca1/Ui7$1;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static settings(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Settings94;->settings(Landroid/view/View;)V

    const-string v0, "ca1_download_count"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->updateLimit(Landroid/widget/TextView;)V

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda6;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Dialogs;->style(Landroid/app/AlertDialog;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Ui7;->styleDialog(Landroid/app/AlertDialog;)V

    return-object p0
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Enhancements;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static styleDialog(Landroid/app/AlertDialog;)V
    .locals 0

    return-void
.end method

.method static styleTree(Landroid/view/View;)V
    .locals 6

    .line 38
    instance-of v0, p0, Landroid/widget/TextView;

    const v1, -0xebe0d7

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    const v2, -0x120d0a

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    instance-of v2, p0, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    const v2, -0xf4ebe4

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->decorate(Landroid/view/View;I)V

    const v2, -0x645549

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    instance-of v2, p0, Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->decorate(Landroid/view/View;I)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->styleTree(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static text(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    .line 19
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x120d0a

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x15

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p2

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p2, v2, p1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method static type(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static updateLimit(Landroid/widget/TextView;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0639\u062f\u062f \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a     "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->limit(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
