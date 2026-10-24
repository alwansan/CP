.class public Lcom/shabakaty/downloader/f8;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f8;->a:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/y91;

    invoke-direct {v0}, Lcom/shabakaty/downloader/y91;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f8;->b:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/x91;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x91;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f8;->c:Landroid/animation/TimeInterpolator;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/yh2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yh2;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f8;->d:Landroid/animation/TimeInterpolator;

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/f8;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Lcom/shabakaty/downloader/m01;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static b(FFFFF)F
    .locals 1

    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    return p1

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    .line 1
    invoke-static {p0, p1, p4}, Lcom/shabakaty/downloader/f8;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static c(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float p2, p2, p1

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method
