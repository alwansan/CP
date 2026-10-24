.class public final Lcom/shabakaty/epom_view/ui/EpomView;
.super Lcom/shabakaty/downloader/oy3;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/p41;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/epom_view/ui/EpomView$b;,
        Lcom/shabakaty/epom_view/ui/EpomView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u000b\u000cJ\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shabakaty/epom_view/ui/EpomView;",
        "Lcom/shabakaty/downloader/oy3;",
        "Lcom/shabakaty/downloader/p41;",
        "Landroid/view/ViewGroup$LayoutParams;",
        "params",
        "Lcom/shabakaty/downloader/qv4;",
        "setOriginalHeightAndWidth",
        "setLayoutParams",
        "Lcom/shabakaty/downloader/a40;",
        "listener",
        "setOnCloseButtonClickedListener",
        "a",
        "b",
        "epom-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic T:I


# instance fields
.field public K:Z

.field public L:Lcom/shabakaty/epom_view/ui/EpomView$b;

.field public M:Lcom/shabakaty/downloader/a40;

.field public N:Z

.field public O:I

.field public P:I

.field public Q:Lcom/shabakaty/downloader/j71;

.field public R:Lcom/shabakaty/downloader/f41;

.field public final S:Lcom/shabakaty/downloader/n41;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/shabakaty/downloader/oy3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->K:Z

    .line 4
    new-instance p2, Lcom/shabakaty/epom_view/ui/EpomView$b;

    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    invoke-direct {p2, v1, v2, v3, v0}, Lcom/shabakaty/epom_view/ui/EpomView$b;-><init>(Lcom/shabakaty/downloader/f41;JI)V

    iput-object p2, p0, Lcom/shabakaty/epom_view/ui/EpomView;->L:Lcom/shabakaty/epom_view/ui/EpomView$b;

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->N:Z

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/f41$b;->w:Lcom/shabakaty/downloader/f41$b;

    iput-object p2, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    const-string p2, "<this>"

    .line 7
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0059

    .line 9
    invoke-static {p2, v0, p0, p1}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(\n\t\tLayoutInflate\u2026t,\n\t\tcontainer,\n\t\ttrue\n\t)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/n41;

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    return-void
.end method

.method private final setOriginalHeightAndWidth(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->O:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_1

    .line 2
    iput v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->O:I

    .line 3
    :cond_1
    iget v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->P:I

    if-nez v0, :cond_2

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p1, :cond_2

    .line 4
    iput p1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->P:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->M:Lcom/shabakaty/downloader/a40;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/a40;->b()V

    .line 2
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/e41;->a:Lcom/shabakaty/downloader/gq0;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gq0;->a()Lcom/shabakaty/downloader/ny2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ny2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "key_ad_hidden_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/epom_view/ui/EpomView;->u()V

    return-void

    .line 7
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/j41;->r:Lcom/shabakaty/downloader/j41;

    throw v0
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/epom_view/ui/EpomView$d;

    invoke-direct {v0, p0}, Lcom/shabakaty/epom_view/ui/EpomView$d;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    instance-of v2, v1, Lcom/shabakaty/downloader/f41$e;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/f41$e;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f41;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/f41;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->K:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy3;->getViewScope()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-instance v4, Lcom/shabakaty/epom_view/ui/EpomView$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/shabakaty/epom_view/ui/EpomView$c;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/oy3;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/oy3;->getViewScope()Lcom/shabakaty/downloader/se0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 4
    new-instance v3, Lcom/shabakaty/epom_view/ui/EpomView$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/epom_view/ui/EpomView$e;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isSaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/epom_view/ui/EpomView$b;

    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    iget-object v2, p0, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/bd3;->V()J

    move-result-wide v2

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/epom_view/ui/EpomView$b;-><init>(Lcom/shabakaty/downloader/f41;J)V

    const-string v1, "value"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sput-object v0, Lcom/shabakaty/epom_view/ui/EpomView$a;->a:Lcom/shabakaty/epom_view/ui/EpomView$b;

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->M:Lcom/shabakaty/downloader/a40;

    .line 6
    new-instance v0, Lcom/shabakaty/epom_view/ui/EpomView$f;

    invoke-direct {v0, p0}, Lcom/shabakaty/epom_view/ui/EpomView$f;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;)V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    instance-of v2, v1, Lcom/shabakaty/downloader/f41$e;

    if-eqz v2, :cond_2

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/f41$e;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-super {p0}, Lcom/shabakaty/downloader/oy3;->onDetachedFromWindow()V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/epom_view/ui/EpomView;->setOriginalHeightAndWidth(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    instance-of v0, v0, Lcom/shabakaty/downloader/f41$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    :goto_1
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setOnCloseButtonClickedListener(Lcom/shabakaty/downloader/a40;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView;->M:Lcom/shabakaty/downloader/a40;

    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->N:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->P:I

    const-string v1, "<this>"

    .line 3
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v5, 0x1

    aput v0, v3, v5

    .line 4
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/h41;

    const/4 v6, 0x4

    invoke-direct {v3, p0, v6}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x64

    .line 6
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8
    iget v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->O:I

    .line 9
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v2, [I

    aput v4, v3, v4

    aput v0, v3, v5

    .line 10
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 11
    new-instance v3, Lcom/shabakaty/downloader/h41;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v5}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [F

    .line 15
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/h41;

    invoke-direct {v1, p0, v4}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x12c

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/i41;->d(Landroid/view/View;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final u()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->N:Z

    if-eqz v0, :cond_0

    const-string v0, "<this>"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/h41;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x12c

    .line 5
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v1, [I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    aput v7, v2, v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/h41;

    invoke-direct {v7, p0, v3}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v1, [F

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    aput v2, v0, v4

    const/4 v2, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 14
    new-instance v2, Lcom/shabakaty/downloader/h41;

    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/h41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x64

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/i41;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->i()V

    :goto_0
    return-void
.end method
