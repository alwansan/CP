.class public final Lcom/shabakaty/cinemana/ca1/ThemeEngine142;
.super Ljava/lang/Object;
.source "ThemeEngine142.java"


# static fields
.field private static final ACTIVITIES:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile APP:Landroid/content/Context; = null

.field public static final CINEMANA_RED:I

.field public static final CINEMANA_RED_SOFT:I

.field public static final CLASSIC_PREVIEW_CANVAS:I

.field public static final CLASSIC_PREVIEW_EDGE:I

.field public static final CLASSIC_PREVIEW_ELEVATED:I

.field public static final CLASSIC_PREVIEW_INK:I

.field public static final CLASSIC_PREVIEW_MUTED:I

.field public static final CLASSIC_PREVIEW_SURFACE:I

.field private static volatile CURRENT:Landroid/app/Activity; = null

.field public static final HARBOR_ACCENT:I

.field public static final HARBOR_CANVAS:I

.field public static final HARBOR_DANGER:I

.field public static final HARBOR_EDGE:I

.field public static final HARBOR_ELEVATED:I

.field public static final HARBOR_INK:I

.field public static final HARBOR_INK_MUTED:I

.field public static final HARBOR_INK_SUBTLE:I

.field public static final HARBOR_RAISED:I

.field public static final HARBOR_SURFACE:I

.field private static final INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final MODE_CLASSIC:I = 0x0

.field public static final MODE_CUSTOM:I = 0x3

.field public static final MODE_HARBOR:I = 0x1

.field public static final MODE_OLED:I = 0x2

.field public static final OLED_ACCENT:I

.field public static final OLED_CANVAS:I

.field public static final OLED_DANGER:I

.field public static final OLED_EDGE:I

.field public static final OLED_ELEVATED:I

.field public static final OLED_INK:I

.field public static final OLED_INK_MUTED:I

.field public static final OLED_INK_SUBTLE:I

.field public static final OLED_RAISED:I

.field public static final OLED_SURFACE:I

.field public static final PREFS:Ljava/lang/String; = "ca1_theme_engine_142"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    const/16 v0, 0xc9

    const/16 v1, 0x17

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sput v3, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CINEMANA_RED:I

    .line 47
    const/16 v3, 0x48

    const/16 v4, 0x4f

    invoke-static {v0, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CINEMANA_RED_SOFT:I

    .line 49
    const/16 v0, 0x12

    const/16 v3, 0x13

    const/16 v4, 0x11

    invoke-static {v4, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_CANVAS:I

    .line 50
    const/16 v0, 0x1b

    const/16 v3, 0x1c

    const/16 v4, 0x19

    invoke-static {v4, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_SURFACE:I

    .line 51
    const/16 v0, 0x25

    const/16 v3, 0x26

    const/16 v4, 0x28

    invoke-static {v0, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ELEVATED:I

    .line 52
    const/16 v0, 0x33

    const/16 v3, 0x35

    const/16 v5, 0x32

    invoke-static {v5, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_RAISED:I

    .line 53
    const/16 v0, 0xf4

    const/16 v3, 0xf5

    const/16 v5, 0xf7

    invoke-static {v0, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK:I

    .line 54
    const/16 v0, 0xa5

    const/16 v6, 0xa6

    const/16 v7, 0xa3

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_MUTED:I

    .line 55
    const/16 v0, 0x63

    const/16 v6, 0x65

    const/16 v7, 0x62

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_SUBTLE:I

    .line 56
    const/16 v0, 0x3d

    const/16 v6, 0x3f

    const/16 v7, 0x3c

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_EDGE:I

    .line 57
    sget v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CINEMANA_RED:I

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ACCENT:I

    .line 58
    const/16 v0, 0x36

    const/16 v6, 0x37

    const/16 v7, 0xc5

    invoke-static {v7, v0, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_DANGER:I

    .line 60
    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_CANVAS:I

    .line 61
    const/16 v6, 0x8

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_SURFACE:I

    .line 62
    const/16 v6, 0x10

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_ELEVATED:I

    .line 63
    const/16 v6, 0x1a

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_RAISED:I

    .line 64
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK:I

    .line 65
    const/16 v6, 0xb5

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK_MUTED:I

    .line 66
    const/16 v6, 0x7a

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK_SUBTLE:I

    .line 67
    const/16 v6, 0x2a

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_EDGE:I

    .line 68
    sget v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CINEMANA_RED:I

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_ACCENT:I

    .line 69
    const/16 v6, 0xd6

    const/16 v7, 0x3b

    invoke-static {v6, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sput v6, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_DANGER:I

    .line 71
    const/4 v6, 0x3

    invoke-static {v6, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_CANVAS:I

    .line 72
    const/16 v1, 0x15

    const/16 v2, 0x20

    const/4 v6, 0x5

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_SURFACE:I

    .line 73
    const/16 v1, 0x1e

    const/16 v2, 0x29

    const/16 v6, 0xc

    invoke-static {v6, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_ELEVATED:I

    .line 74
    const/16 v1, 0xf9

    invoke-static {v3, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_INK:I

    .line 75
    const/16 v1, 0xa9

    const/16 v2, 0xb0

    const/16 v3, 0x9e

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_MUTED:I

    .line 76
    const/16 v1, 0x3a

    const/16 v2, 0x46

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_EDGE:I

    .line 78
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ACTIVITIES:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accent(Landroid/content/Context;)I
    .locals 2

    .line 204
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_ACCENT:I

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "accent"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ACCENT:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ACCENT:I

    return p0
.end method

.method static synthetic access$000()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 39
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ACTIVITIES:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .line 39
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CURRENT:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 39
    sput-object p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CURRENT:Landroid/app/Activity;

    return-object p0
.end method

.method public static appStyle(Landroid/content/Context;I)I
    .locals 1

    .line 164
    const-string v0, "AppTheme"

    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->presetStyle(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static apply(Landroid/app/Activity;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CURRENT:Landroid/app/Activity;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->syncSystemBars(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static applyNavigationTint(Landroid/view/View;II)V
    .locals 5

    .line 428
    const v0, 0x10100a0

    :try_start_0
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    filled-new-array {p2, p1}, [I

    move-result-object p1

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setItemIconTintList"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/ColorStateList;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setItemTextColor"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/ColorStateList;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 431
    :goto_0
    return-void
.end method

.method private static applySeekTint(Landroid/view/View;I)V
    .locals 6

    .line 433
    :try_start_0
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x1

    new-array v4, v3, [[I

    aput-object v2, v4, v1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setProgressTintList"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/ColorStateList;

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "setThumbTintList"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/ColorStateList;

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 436
    :goto_0
    return-void
.end method

.method private static applySwitchTint(Landroid/view/View;II)V
    .locals 6

    .line 438
    const v0, 0x10100a0

    :try_start_0
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {p2, p1}, [I

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 439
    new-instance v4, Landroid/content/res/ColorStateList;

    const/16 v5, 0x6e

    invoke-static {p2, v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result p2

    const/16 v5, 0x50

    invoke-static {p1, v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result p1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-direct {v4, v3, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "setThumbTintList"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/ColorStateList;

    aput-object v5, v3, v1

    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v2, p2, v1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "setTrackTintList"

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/ColorStateList;

    aput-object v3, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v4, p2, v1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 442
    :goto_0
    return-void
.end method

.method public static bottomNavSurface(Landroid/content/Context;)I
    .locals 2

    .line 215
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bottomNavSurface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static canvas(Landroid/content/Context;)I
    .locals 2

    .line 172
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_CANVAS:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_CANVAS:I

    return p0

    .line 173
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "canvas"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_CANVAS:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_CANVAS:I

    return p0
.end method

.method private static clamp(III)I
    .locals 0

    .line 448
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static danger(Landroid/content/Context;)I
    .locals 2

    .line 207
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_DANGER:I

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "danger"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_DANGER:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_DANGER:I

    return p0
.end method

.method public static dialogStyle(Landroid/content/Context;I)I
    .locals 1

    .line 163
    const-string v0, "DialogTheme"

    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->presetStyle(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static downloadsSurface(Landroid/content/Context;)I
    .locals 2

    .line 212
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "downloadsSurface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static dp(Landroid/content/Context;I)F
    .locals 0

    .line 447
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method public static edge(Landroid/content/Context;)I
    .locals 2

    .line 200
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_EDGE:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_EDGE:I

    return p0

    .line 201
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "edge"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_EDGE:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_EDGE:I

    return p0
.end method

.method public static elevated(Landroid/content/Context;)I
    .locals 2

    .line 180
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ELEVATED:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_ELEVATED:I

    return p0

    .line 181
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "elevated"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_ELEVATED:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_ELEVATED:I

    return p0
.end method

.method public static getBottomNavOpacity(Landroid/content/Context;)I
    .locals 2

    .line 169
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "bottomNavOpacity"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static getCornerRadiusDp(Landroid/content/Context;)I
    .locals 2

    .line 168
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "radius"

    const/16 v1, 0x8

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static getMode(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static getSurfaceOpacity(Landroid/content/Context;)I
    .locals 2

    .line 167
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "opacity"

    const/16 v1, 0x5c

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x14

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p0

    return p0
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2

    .line 342
    const v0, 0xffffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "#%06X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ink(Landroid/content/Context;)I
    .locals 2

    .line 188
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK:I

    return p0

    .line 189
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ink"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_INK:I

    return p0
.end method

.method public static inkMuted(Landroid/content/Context;)I
    .locals 2

    .line 192
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_MUTED:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK_MUTED:I

    return p0

    .line 193
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "inkMuted"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_MUTED:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_MUTED:I

    return p0
.end method

.method public static inkSubtle(Landroid/content/Context;)I
    .locals 2

    .line 196
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_SUBTLE:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_INK_SUBTLE:I

    return p0

    .line 197
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "inkSubtle"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_INK_SUBTLE:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_MUTED:I

    return p0
.end method

.method public static install(Landroid/app/Application;)V
    .locals 3

    .line 86
    if-nez p0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->init(Ljava/lang/Object;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMigration151;->migrate()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scanSoon()V

    sput-object p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->APP:Landroid/content/Context;

    .line 88
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 89
    :cond_1
    new-instance v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142$1;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 105
    return-void
.end method

.method private static invokeColor(Landroid/view/View;Ljava/lang/String;I)V
    .locals 5

    .line 443
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static invokeFloat(Landroid/view/View;Ljava/lang/String;F)V
    .locals 5

    .line 444
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static isGlassEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 166
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "glass"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isThemeEligible(Landroid/app/Activity;)Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 138
    const-string v0, "com.shabakaty.cinemana."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static legacy(I)I
    .locals 1

    .line 338
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CURRENT:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CURRENT:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->APP:Landroid/content/Context;

    .line 339
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static legacy(Landroid/content/Context;I)I
    .locals 2

    .line 285
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 287
    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    .line 289
    sparse-switch v1, :sswitch_data_0

    .line 323
    return p1

    .line 293
    :sswitch_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 303
    :sswitch_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->accent(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 298
    :sswitch_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 321
    :sswitch_3
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->edge(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 317
    :sswitch_4
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->scopedSurface(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 314
    :sswitch_5
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->scopedSurface(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 310
    :sswitch_6
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->scopedSurface(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 306
    :sswitch_7
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->canvas(Landroid/content/Context;)I

    move-result p0

    .line 325
    :goto_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result p0

    return p0

    .line 285
    :cond_1
    :goto_1
    return p1

    :sswitch_data_0
    .sparse-switch
        -0xf4eee8 -> :sswitch_7
        -0xf4ebe4 -> :sswitch_5
        -0xefe7df -> :sswitch_6
        -0xeee6de -> :sswitch_6
        -0xebe3dc -> :sswitch_6
        -0xebe0d7 -> :sswitch_5
        -0xebded5 -> :sswitch_6
        -0xe8e8e5 -> :sswitch_6
        -0xe8e0d9 -> :sswitch_5
        -0xe2d8cf -> :sswitch_5
        -0xe2d4cb -> :sswitch_5
        -0xdbe4e0 -> :sswitch_4
        -0xdadad4 -> :sswitch_5
        -0xd6e3dc -> :sswitch_4
        -0xd6d6d1 -> :sswitch_5
        -0xd6cbc1 -> :sswitch_3
        -0xd3d3cc -> :sswitch_5
        -0xcfc5bc -> :sswitch_3
        -0xccccc7 -> :sswitch_5
        -0xcbdcd8 -> :sswitch_4
        -0xcbbeb3 -> :sswitch_3
        -0xc7c7c0 -> :sswitch_3
        -0xc7b9b0 -> :sswitch_3
        -0x907f73 -> :sswitch_3
        -0x645950 -> :sswitch_2
        -0x645549 -> :sswitch_2
        -0x555556 -> :sswitch_2
        -0x55554e -> :sswitch_2
        -0x4f4239 -> :sswitch_2
        -0x47dfd5 -> :sswitch_1
        -0x47473e -> :sswitch_2
        -0x46c9c2 -> :sswitch_1
        -0x434339 -> :sswitch_2
        -0x382f28 -> :sswitch_2
        -0x2a201a -> :sswitch_2
        -0x27ded9 -> :sswitch_1
        -0x26dcd0 -> :sswitch_1
        -0x23c5c0 -> :sswitch_1
        -0x221c18 -> :sswitch_0
        -0x1ed5d0 -> :sswitch_1
        -0x1e1e18 -> :sswitch_0
        -0x1a120d -> :sswitch_0
        -0x120d0a -> :sswitch_0
        -0x110e0c -> :sswitch_0
        -0x10beb7 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static makeSurface(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 424
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getCornerRadiusDp(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->dp(Landroid/content/Context;I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static modeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "Dark"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    const-string p0, "OLED"

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne v0, p0, :cond_2

    const-string p0, "Custom"

    return-object p0

    :cond_2
    const-string p0, "\u0627\u0644\u0627\u0641\u062a\u0631\u0627\u0636\u064a"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseColor(Ljava/lang/String;I)I
    .locals 0

    .line 344
    if-nez p0, :cond_0

    :try_start_0
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 345
    :catchall_0
    move-exception p0

    return p1
.end method

.method public static playerSurface(Landroid/content/Context;)I
    .locals 2

    .line 213
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "playerSurface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 445
    const-string v0, "ca1_theme_engine_142"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static prepare(Landroid/app/Activity;)V
    .locals 4

    .line 109
    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    .line 112
    if-nez v0, :cond_1

    return-void

    .line 113
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->isThemeEligible(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 115
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "OLED"

    goto :goto_0

    :cond_3
    const-string v0, "Harbor"

    .line 116
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "SplashActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "AppTheme."

    if-eqz v2, :cond_4

    .line 119
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Splash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 120
    :cond_4
    const-string v2, "VideoPlayerActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PlayerTheme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_5
    const-string v2, "ExpandedControlsActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Theme.CastVideosTheme."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_6
    const-string v2, "DLNAControlsActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwipeBackTransparent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_8
    goto :goto_2

    .line 131
    :catchall_0
    move-exception p0

    .line 134
    :goto_2
    return-void
.end method

.method private static presetStyle(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 152
    if-nez p0, :cond_0

    return p2

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    .line 154
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return p2

    .line 155
    :cond_1
    if-ne v0, v2, :cond_2

    const-string v0, "OLED"

    goto :goto_0

    :cond_2
    const-string v0, "Harbor"

    .line 156
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-eqz p0, :cond_3

    move p2, p0

    :cond_3
    return p2

    .line 160
    :catchall_0
    move-exception p0

    return p2
.end method

.method public static raised(Landroid/content/Context;)I
    .locals 2

    .line 184
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_RAISED:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_RAISED:I

    return p0

    .line 185
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "raised"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_RAISED:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_ELEVATED:I

    return p0
.end method

.method public static recreateAll(Landroid/app/Activity;)V
    .locals 2

    .line 263
    sget-object v0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ACTIVITIES:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 264
    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 266
    :goto_1
    goto :goto_0

    .line 267
    :cond_2
    return-void
.end method

.method public static resetAll(Landroid/content/Context;)V
    .locals 0

    .line 241
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static restartApp(Landroid/app/Activity;)V
    .locals 2

    .line 248
    if-nez p0, :cond_0

    return-void

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 252
    :goto_0
    if-eqz v0, :cond_2

    .line 253
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    return-void

    .line 258
    :catchall_0
    move-exception v0

    :cond_2
    nop

    .line 259
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 260
    :goto_1
    return-void
.end method

.method public static saveCustom(Landroid/content/Context;ZIIIIIIIIIIIIIIIIII)V
    .locals 5

    .line 230
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glass"

    move v2, p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    const/16 v1, 0x14

    const/16 v2, 0x64

    move v3, p2

    invoke-static {p2, v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result v1

    const-string v3, "opacity"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v3, 0x0

    move v4, p3

    invoke-static {p3, v3, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result v1

    const-string v4, "radius"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    move v1, p4

    invoke-static {p4, v3, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result v1

    const-string v2, "bottomNavOpacity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    const-string v1, "canvas"

    move v2, p5

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "surface"

    move v2, p6

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "elevated"

    move v2, p7

    invoke-interface {v0, v1, p7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "raised"

    move v2, p8

    invoke-interface {v0, v1, p8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    const-string v1, "ink"

    move v2, p9

    invoke-interface {v0, v1, p9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inkMuted"

    move v2, p10

    invoke-interface {v0, v1, p10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inkSubtle"

    move/from16 v2, p11

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "edge"

    move/from16 v2, p12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    const-string v1, "accent"

    move/from16 v2, p13

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "danger"

    move/from16 v2, p14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    const-string v1, "topBar"

    move/from16 v2, p15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "downloadsSurface"

    move/from16 v2, p16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    const-string v1, "playerSurface"

    move/from16 v2, p17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updaterSurface"

    move/from16 v2, p18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    const-string v1, "bottomNavSurface"

    move/from16 v2, p19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method private static scopedSurface(Landroid/content/Context;I)I
    .locals 2

    .line 330
    if-nez p0, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    const-string v1, "DownloadsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 332
    :cond_1
    const-string v1, "VideoPlayerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "player"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->playerSurface(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 331
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->downloadsSurface(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 333
    :catchall_0
    move-exception v0

    :cond_4
    nop

    .line 334
    if-gtz p1, :cond_5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result p0

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->raised(Landroid/content/Context;)I

    move-result p0

    :goto_2
    return p0
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p1

    const-string v0, "mode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static styleChromeTree(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 377
    if-nez p1, :cond_0

    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v1, ""

    if-nez p0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 380
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 381
    :goto_1
    nop

    .line 382
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 384
    :cond_3
    :goto_2
    const-string v4, "Toolbar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "toolbar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "app_bar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 385
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->topBar(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 386
    const-string v4, "setTitleTextColor"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 387
    const-string v4, "setSubtitleTextColor"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 389
    :cond_5
    const-string v4, "BottomNavigationView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "NavigationBarView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "bottom_nav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 390
    :cond_6
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->bottomNavSurface(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getBottomNavOpacity(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result v1

    .line 391
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->accent(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->applyNavigationTint(Landroid/view/View;II)V

    .line 394
    :cond_7
    const-string v1, "DownloadsActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 395
    const-string v1, "CardView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "setCardBackgroundColor"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->downloadsSurface(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 396
    :cond_8
    const-string v0, "layout/item_download"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->downloadsSurface(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->makeSurface(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_9
    const-string v0, "VideoPlayerActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ca1_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 399
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->playerSurface(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->makeSurface(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 402
    check-cast p1, Landroid/view/ViewGroup;

    .line 403
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->styleChromeTree(Landroid/content/Context;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 405
    :cond_b
    return-void
.end method

.method private static styleTree(Landroid/content/Context;Landroid/view/View;IIIII)V
    .locals 9

    .line 408
    if-nez p1, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 410
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->isGlassEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surfaceWithOpacity(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, p2

    .line 411
    :goto_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->isGlassEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surfaceWithOpacity(Landroid/content/Context;I)I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, p3

    .line 412
    :goto_2
    const-string v4, "Toolbar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v0, "setTitleTextColor"

    invoke-static {p1, v0, p4}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    const-string v0, "setSubtitleTextColor"

    invoke-static {p1, v0, p5}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_4

    .line 413
    :cond_4
    const-string v4, "BottomNavigationView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "NavigationBarView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 414
    :cond_5
    const-string v4, "CardView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "setCardBackgroundColor"

    invoke-static {p1, v0, v3}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeColor(Landroid/view/View;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getCornerRadiusDp(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->dp(Landroid/content/Context;I)F

    move-result v0

    const-string v1, "setRadius"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->invokeFloat(Landroid/view/View;Ljava/lang/String;F)V

    goto :goto_4

    .line 415
    :cond_6
    const-string v3, "ca1_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_7

    const-string v1, "ImageButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->makeSurface(Landroid/content/Context;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 413
    :cond_8
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p1, p5, p6}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->applyNavigationTint(Landroid/view/View;II)V

    .line 416
    :cond_9
    :goto_4
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_5

    .line 417
    :cond_a
    instance-of v0, p1, Landroid/widget/Switch;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, p4}, Landroid/widget/Switch;->setTextColor(I)V

    invoke-static {p1, p5, p6}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->applySwitchTint(Landroid/view/View;II)V

    goto :goto_5

    .line 418
    :cond_b
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_5

    .line 419
    :cond_c
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    :cond_d
    :goto_5
    instance-of v0, p1, Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    invoke-static {p1, p6}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->applySeekTint(Landroid/view/View;I)V

    .line 421
    :cond_e
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->styleTree(Landroid/content/Context;Landroid/view/View;IIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 422
    :cond_f
    return-void
.end method

.method public static surface(Landroid/content/Context;)I
    .locals 2

    .line 176
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_SURFACE:I

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->OLED_SURFACE:I

    return p0

    .line 177
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "surface"

    sget v1, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->HARBOR_SURFACE:I

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    sget p0, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->CLASSIC_PREVIEW_SURFACE:I

    return p0
.end method

.method public static surfaceWithOpacity(Landroid/content/Context;I)I
    .locals 1

    .line 425
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getSurfaceOpacity(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->withAlpha(II)I

    move-result p0

    return p0
.end method

.method private static syncSystemBars(Landroid/app/Activity;)V
    .locals 1

    .line 370
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->canvas(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 372
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2011

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    nop

    .line 374
    return-void
.end method

.method public static topBar(Landroid/content/Context;)I
    .locals 2

    .line 211
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "topBar"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->surface(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static updaterRole(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 218
    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    const-string v0, "primaryTextColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->ink(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 220
    :cond_1
    const-string v0, "secondaryTextColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->inkMuted(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 221
    :cond_2
    const-string v0, "cardBackgroundColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "backgroundTint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "colorPrimary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 221
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->updaterSurface(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 218
    :cond_5
    :goto_1
    return p2
.end method

.method public static updaterSurface(Landroid/content/Context;)I
    .locals 2

    .line 214
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->getMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updaterSurface"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->elevated(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static withAlpha(II)I
    .locals 2

    .line 446
    const v0, 0xffffff

    and-int/2addr p0, v0

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->clamp(III)I

    move-result p1

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
