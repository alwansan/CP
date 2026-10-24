.class public final Lcom/shabakaty/cinemana/ui/home_activity/CastButton;
.super Lcom/shabakaty/downloader/ph2;
.source "CastButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_activity/CastButton;",
        "Lcom/shabakaty/downloader/ph2;",
        "Landroid/view/View$OnClickListener;",
        "l",
        "Lcom/shabakaty/downloader/qv4;",
        "setOnClickListener",
        "Landroid/view/View;",
        "s",
        "Landroid/view/View;",
        "getTouchDetector",
        "()Landroid/view/View;",
        "setTouchDetector",
        "(Landroid/view/View;)V",
        "touchDetector",
        "Landroidx/fragment/app/FragmentContainerView;",
        "t",
        "Landroidx/fragment/app/FragmentContainerView;",
        "getFragmentContainer",
        "()Landroidx/fragment/app/FragmentContainerView;",
        "setFragmentContainer",
        "(Landroidx/fragment/app/FragmentContainerView;)V",
        "fragmentContainer",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public s:Landroid/view/View;

.field public t:Landroidx/fragment/app/FragmentContainerView;

.field public u:Lcom/shabakaty/downloader/qw;

.field public v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public w:Landroidx/mediarouter/app/MediaRouteButton;

.field public x:Lcom/shabakaty/downloader/mu0;

.field public final y:Lcom/shabakaty/downloader/f74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/f74<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shabakaty/downloader/ph2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0033

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, p0, v0}, Lcom/shabakaty/downloader/hl0;->b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(\n\t\t\tLayoutInflat\u2026\n\t\t\tcontainer,\n\t\t\ttrue\n\t)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/qw;

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->u:Lcom/shabakaty/downloader/qw;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/qw;->M:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string p2, "binding.dlnaCastButton"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->u:Lcom/shabakaty/downloader/qw;

    iget-object p1, p1, Lcom/shabakaty/downloader/qw;->N:Landroidx/mediarouter/app/MediaRouteButton;

    const-string p2, "binding.mediaRouteButton"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->w:Landroidx/mediarouter/app/MediaRouteButton;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "item is null"

    .line 8
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/r74;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/r74;-><init>(Ljava/lang/Object;)V

    const-wide/16 v0, 0x5dc

    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lcom/shabakaty/downloader/f74;->c(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/f00;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V

    .line 13
    new-instance v0, Lcom/shabakaty/downloader/m74;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/m74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    .line 14
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->y:Lcom/shabakaty/downloader/f74;

    const p1, 0x3f333333    # 0.7f

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i()V

    const-string p1, "context.applicationContext"

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/shabakaty/downloader/yz;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/yz;-><init>(Landroid/content/Context;)V

    .line 20
    sput-object v0, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    .line 21
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez p2, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/xz;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/xz;-><init>(Lcom/shabakaty/downloader/yz;)V

    iput-object v0, p2, Lcom/shabakaty/downloader/yz;->d:Lcom/shabakaty/downloader/z14;

    .line 23
    iget-object v0, p2, Lcom/shabakaty/downloader/yz;->e:Lcom/shabakaty/downloader/tw;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    .line 24
    iget-object v1, p2, Lcom/shabakaty/downloader/yz;->d:Lcom/shabakaty/downloader/z14;

    const-class v2, Lcom/shabakaty/downloader/xw;

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/y14;->a(Lcom/shabakaty/downloader/z14;Ljava/lang/Class;)V

    .line 26
    iget-object v0, p2, Lcom/shabakaty/downloader/yz;->e:Lcom/shabakaty/downloader/tw;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v0

    iput-object v0, p2, Lcom/shabakaty/downloader/yz;->c:Lcom/shabakaty/downloader/xw;

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez p1, :cond_2

    .line 29
    new-instance p1, Lcom/shabakaty/downloader/yz;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/yz;-><init>(Landroid/content/Context;)V

    .line 30
    sput-object p1, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    .line 31
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/yz;->f:Lcom/shabakaty/downloader/yz;

    if-nez p1, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v0, "<set-?>"

    .line 33
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p2, p1, Lcom/shabakaty/downloader/yz;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 35
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    :goto_2
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 38
    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 39
    :goto_3
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lcom/shabakaty/downloader/pw;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/downloader/pw;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method


# virtual methods
.method public final getFragmentContainer()Landroidx/fragment/app/FragmentContainerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->t:Landroidx/fragment/app/FragmentContainerView;

    return-object v0
.end method

.method public final getTouchDetector()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->s:Landroid/view/View;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/ph2;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->s:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/ow;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ow;-><init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    .line 5
    :goto_1
    invoke-super {p0}, Lcom/shabakaty/downloader/ph2;->onDetachedFromWindow()V

    return-void
.end method

.method public final setFragmentContainer(Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->t:Landroidx/fragment/app/FragmentContainerView;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTouchDetector(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->s:Landroid/view/View;

    return-void
.end method
