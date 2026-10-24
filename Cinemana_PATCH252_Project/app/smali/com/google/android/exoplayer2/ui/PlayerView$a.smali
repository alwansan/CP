.class public final Lcom/google/android/exoplayer2/ui/PlayerView$a;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Lcom/shabakaty/downloader/bd3$e;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/nn4$b;

.field public s:Ljava/lang/Object;

.field public final synthetic t:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {p1}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->r:Lcom/shabakaty/downloader/nn4$b;

    return-void
.end method


# virtual methods
.method public synthetic A(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->u(Lcom/shabakaty/downloader/bd3$e;Z)V

    return-void
.end method

.method public synthetic D(Lcom/shabakaty/downloader/dp2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->i(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/dp2;I)V

    return-void
.end method

.method public synthetic E(Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->f(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V

    return-void
.end method

.method public synthetic G(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->e(Lcom/shabakaty/downloader/bd3$e;IZ)V

    return-void
.end method

.method public synthetic H(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->n(Lcom/shabakaty/downloader/bd3$c;ZI)V

    return-void
.end method

.method public synthetic K(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/e25;->a(Lcom/shabakaty/downloader/f25;IIIF)V

    return-void
.end method

.method public O(Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->O:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    :cond_0
    return-void
.end method

.method public synthetic P(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->t(Lcom/shabakaty/downloader/bd3$e;I)V

    return-void
.end method

.method public synthetic R(Lcom/shabakaty/downloader/hp2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->j(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/hp2;)V

    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public W(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->x:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic X(Lcom/shabakaty/downloader/ie;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->a(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/ie;)V

    return-void
.end method

.method public synthetic a(Lcom/shabakaty/downloader/xc3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->p(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/xc3;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/p25;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->k()V

    return-void
.end method

.method public b0(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget p2, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->l()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->O:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->f(Z)V

    :goto_0
    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->v(Lcom/shabakaty/downloader/bd3$e;Z)V

    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->o(Lcom/shabakaty/downloader/bd3$e;I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->m()V

    return-void
.end method

.method public synthetic e0(Lcom/shabakaty/downloader/os0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->d(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/os0;)V

    return-void
.end method

.method public synthetic f(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->e(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public synthetic f0(Lcom/shabakaty/downloader/ps2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->k(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/ps2;)V

    return-void
.end method

.method public synthetic g(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->o(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public synthetic g0(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->w(Lcom/shabakaty/downloader/bd3$e;II)V

    return-void
.end method

.method public synthetic i(Lcom/shabakaty/downloader/ad3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->m(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/ad3;)V

    return-void
.end method

.method public k0(Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/ip4;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->D:Lcom/shabakaty/downloader/bd3;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->s:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->J()Lcom/shabakaty/downloader/cp4;

    move-result-object v0

    .line 8
    iget v0, v0, Lcom/shabakaty/downloader/cp4;->r:I

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->l()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->r:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {p2, p1, v0, v3}, Lcom/shabakaty/downloader/nn4;->g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->s:Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->s:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/nn4;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->r:Lcom/shabakaty/downloader/nn4$b;

    .line 13
    invoke-virtual {p2, v0, v3}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    move-result-object p2

    iget p2, p2, Lcom/shabakaty/downloader/nn4$b;->c:I

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result p1

    if-ne p1, p2, :cond_3

    return-void

    .line 15
    :cond_3
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->s:Ljava/lang/Object;

    .line 16
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->o(Z)V

    return-void
.end method

.method public synthetic l(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->t(Lcom/shabakaty/downloader/bd3$c;Ljava/util/List;)V

    return-void
.end method

.method public synthetic m0(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->h(Lcom/shabakaty/downloader/bd3$e;Z)V

    return-void
.end method

.method public synthetic o(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->g(Lcom/shabakaty/downloader/bd3$e;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->j()Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    iget p2, p2, Lcom/google/android/exoplayer2/ui/PlayerView;->Q:I

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic p()V
    .locals 0

    invoke-static {p0}, Lcom/shabakaty/downloader/cd3;->r(Lcom/shabakaty/downloader/bd3$c;)V

    return-void
.end method

.method public synthetic q(Lcom/shabakaty/downloader/bd3$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->b(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/bd3$b;)V

    return-void
.end method

.method public synthetic r(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->A(Lcom/shabakaty/downloader/bd3$e;F)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    sget v0, Lcom/google/android/exoplayer2/ui/PlayerView;->S:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->l()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->n()V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->t:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ui/PlayerView;->O:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f(Z)V

    :goto_0
    return-void
.end method

.method public synthetic w(Lcom/shabakaty/downloader/xc3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/dd3;->q(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/xc3;)V

    return-void
.end method

.method public synthetic x(Lcom/shabakaty/downloader/nn4;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/dd3;->x(Lcom/shabakaty/downloader/bd3$e;Lcom/shabakaty/downloader/nn4;I)V

    return-void
.end method
