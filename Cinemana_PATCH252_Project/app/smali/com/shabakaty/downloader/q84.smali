.class public Lcom/shabakaty/downloader/q84;
.super Lcom/shabakaty/downloader/x45;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/q84$i;,
        Lcom/shabakaty/downloader/q84$h;,
        Lcom/shabakaty/downloader/q84$g;
    }
.end annotation


# static fields
.field public static final T:Landroid/animation/TimeInterpolator;

.field public static final U:Landroid/animation/TimeInterpolator;

.field public static final V:Lcom/shabakaty/downloader/q84$g;

.field public static final W:Lcom/shabakaty/downloader/q84$g;

.field public static final X:Lcom/shabakaty/downloader/q84$g;

.field public static final Y:Lcom/shabakaty/downloader/q84$g;

.field public static final Z:Lcom/shabakaty/downloader/q84$g;

.field public static final a0:Lcom/shabakaty/downloader/q84$g;


# instance fields
.field public S:Lcom/shabakaty/downloader/q84$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->T:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->U:Landroid/animation/TimeInterpolator;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/q84$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->V:Lcom/shabakaty/downloader/q84$g;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/q84$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->W:Lcom/shabakaty/downloader/q84$g;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/q84$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->X:Lcom/shabakaty/downloader/q84$g;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/q84$d;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$d;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->Y:Lcom/shabakaty/downloader/q84$g;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/q84$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$e;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->Z:Lcom/shabakaty/downloader/q84$g;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/q84$f;

    invoke-direct {v0}, Lcom/shabakaty/downloader/q84$f;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/q84;->a0:Lcom/shabakaty/downloader/q84$g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x45;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/q84;->a0:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0x30

    if-eq p1, v1, :cond_3

    const/16 v1, 0x50

    if-eq p1, v1, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/q84;->Z:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/q84;->W:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    goto :goto_0

    .line 6
    :cond_2
    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    goto :goto_0

    .line 7
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/q84;->X:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/q84;->Y:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    goto :goto_0

    .line 9
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/q84;->V:Lcom/shabakaty/downloader/q84$g;

    iput-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    .line 10
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/u54;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u54;-><init>()V

    .line 11
    iput p1, v0, Lcom/shabakaty/downloader/u54;->s:I

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    return-void
.end method


# virtual methods
.method public N(Landroid/view/ViewGroup;Landroid/view/View;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;
    .locals 10

    .line 1
    iget-object p3, p4, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/q84$g;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/q84$g;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 6
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Lcom/shabakaty/downloader/q84;->T:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    .line 7
    invoke-static/range {v0 .. v9}, Lcom/shabakaty/downloader/lq4;->a(Landroid/view/View;Lcom/shabakaty/downloader/kq4;IIFFFFLandroid/animation/TimeInterpolator;Lcom/shabakaty/downloader/dq4;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public O(Landroid/view/ViewGroup;Landroid/view/View;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;
    .locals 10

    .line 1
    iget-object p4, p3, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/q84$g;->b(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/q84;->S:Lcom/shabakaty/downloader/q84$g;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/q84$g;->a(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    const/4 p1, 0x0

    .line 6
    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, Lcom/shabakaty/downloader/q84;->U:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    .line 7
    invoke-static/range {v0 .. v9}, Lcom/shabakaty/downloader/lq4;->a(Landroid/view/View;Lcom/shabakaty/downloader/kq4;IIFFFFLandroid/animation/TimeInterpolator;Lcom/shabakaty/downloader/dq4;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/kq4;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x45;->L(Lcom/shabakaty/downloader/kq4;)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/kq4;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/x45;->L(Lcom/shabakaty/downloader/kq4;)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    const-string v0, "android:slide:screenPosition"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
