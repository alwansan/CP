.class public final Lcom/shabakaty/epom_view/ui/EpomView$e;
.super Lcom/shabakaty/downloader/ui4;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.epom_view.ui.EpomView$onAttachedToWindow$1"
    f = "EpomView.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/epom_view/ui/EpomView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:Ljava/lang/Object;

.field public w:I

.field public final synthetic x:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/epom_view/ui/EpomView;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/epom_view/ui/EpomView$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->x:Lcom/shabakaty/epom_view/ui/EpomView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/shabakaty/downloader/se0;

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$e;

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->x:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/epom_view/ui/EpomView$e;

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->x:Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/epom_view/ui/EpomView$e;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->w:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->v:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/epom_view/ui/EpomView;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->x:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 5
    iget-object v1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    .line 6
    instance-of v1, v1, Lcom/shabakaty/downloader/f41$b;

    if-eqz v1, :cond_a

    .line 7
    sget-object v1, Lcom/shabakaty/epom_view/ui/EpomView$a;->a:Lcom/shabakaty/epom_view/ui/EpomView$b;

    const/4 v4, 0x0

    .line 8
    sput-object v4, Lcom/shabakaty/epom_view/ui/EpomView$a;->a:Lcom/shabakaty/epom_view/ui/EpomView$b;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/shabakaty/epom_view/ui/EpomView$b;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/shabakaty/epom_view/ui/EpomView$b;-><init>(Lcom/shabakaty/downloader/f41;JI)V

    .line 10
    :cond_2
    iput-object v1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->L:Lcom/shabakaty/epom_view/ui/EpomView$b;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/epom_view/ui/EpomView$b;->r:Lcom/shabakaty/downloader/f41;

    if-nez v1, :cond_4

    .line 12
    new-instance v1, Lcom/shabakaty/epom_view/ui/EpomView$e$a;

    invoke-direct {v1, v4}, Lcom/shabakaty/epom_view/ui/EpomView$e$a;-><init>(Lcom/shabakaty/downloader/ud0;)V

    iput-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->v:Ljava/lang/Object;

    iput v3, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->w:I

    .line 13
    sget-object v4, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 14
    invoke-static {v4, v1, p0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 15
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/f41;

    move-object p1, v0

    .line 16
    :cond_4
    iput-object v1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    .line 17
    iget-object p1, p0, Lcom/shabakaty/epom_view/ui/EpomView$e;->x:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 18
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 19
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    invoke-virtual {v0, v2, p1}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    .line 20
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    instance-of v0, v0, Lcom/shabakaty/downloader/f41$b;

    xor-int/2addr v0, v3

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/16 v0, 0x8

    .line 21
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    .line 23
    instance-of v4, v0, Lcom/shabakaty/downloader/f41$c;

    const-string v5, "binding.closeAdBtn"

    const-string v6, "binding.muteUnMuteButton"

    const-string v7, "binding.adPlayer"

    const-string v8, "binding.adImg"

    if-eqz v4, :cond_6

    .line 24
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 28
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->t()V

    goto/16 :goto_4

    .line 33
    :cond_6
    instance-of v4, v0, Lcom/shabakaty/downloader/f41$e;

    if-eqz v4, :cond_9

    .line 34
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 36
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/shabakaty/downloader/ck;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :goto_2
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    if-nez v0, :cond_8

    .line 44
    new-instance v0, Lcom/shabakaty/downloader/m41;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/m41;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;)V

    .line 45
    new-instance v1, Lcom/shabakaty/downloader/s64$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v5, Lcom/shabakaty/downloader/to0;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/shabakaty/downloader/to0;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {v1, v2, v5}, Lcom/shabakaty/downloader/s64$b;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/or3;)V

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 48
    new-instance v2, Lcom/shabakaty/downloader/ie;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/downloader/ie;-><init>(IIIILcom/shabakaty/downloader/ie$a;)V

    .line 49
    iget-boolean v4, v1, Lcom/shabakaty/downloader/s64$b;->t:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 50
    iput-object v2, v1, Lcom/shabakaty/downloader/s64$b;->j:Lcom/shabakaty/downloader/ie;

    .line 51
    iput-boolean v3, v1, Lcom/shabakaty/downloader/s64$b;->k:Z

    .line 52
    iget-boolean v2, v1, Lcom/shabakaty/downloader/s64$b;->t:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 53
    iput-boolean v3, v1, Lcom/shabakaty/downloader/s64$b;->t:Z

    .line 54
    new-instance v2, Lcom/shabakaty/downloader/s64;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/s64;-><init>(Lcom/shabakaty/downloader/s64$b;)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/s64;->s0(F)V

    .line 56
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/m41;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object v2, p1, Lcom/shabakaty/epom_view/ui/EpomView;->Q:Lcom/shabakaty/downloader/j71;

    goto :goto_3

    .line 58
    :cond_8
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->w()V

    .line 59
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->t()V

    goto :goto_4

    .line 60
    :cond_9
    instance-of v0, v0, Lcom/shabakaty/downloader/f41$b;

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 63
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->Q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p1, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->O:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->u()V

    goto :goto_4

    .line 70
    :cond_a
    new-instance v0, Lcom/shabakaty/epom_view/ui/EpomView$e$b;

    invoke-direct {v0, p1}, Lcom/shabakaty/epom_view/ui/EpomView$e$b;-><init>(Lcom/shabakaty/epom_view/ui/EpomView;)V

    .line 71
    iget-object p1, p1, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    instance-of v1, p1, Lcom/shabakaty/downloader/f41$e;

    if-eqz v1, :cond_b

    .line 72
    check-cast p1, Lcom/shabakaty/downloader/f41$e;

    invoke-virtual {v0, p1}, Lcom/shabakaty/epom_view/ui/EpomView$e$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_b
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
