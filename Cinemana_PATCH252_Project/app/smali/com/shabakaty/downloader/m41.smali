.class public final Lcom/shabakaty/downloader/m41;
.super Lcom/shabakaty/downloader/af2;
.source "EpomView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/s64;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/epom_view/ui/EpomView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/m41;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/s64;

    const-string v0, "$this$newPlayer"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/m41;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/shabakaty/downloader/bd3;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/m41;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/epom_view/ui/EpomView;->S:Lcom/shabakaty/downloader/n41;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/n41;->N:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "binding.adPlayer"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<this>"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/m41;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/epom_view/ui/EpomView;->R:Lcom/shabakaty/downloader/f41;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/f41;->r:Ljava/lang/String;

    .line 14
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v1, Lcom/shabakaty/downloader/dp2;->f:I

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/dp2$c;

    invoke-direct {v1}, Lcom/shabakaty/downloader/dp2$c;-><init>()V

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18
    iput-object v0, v1, Lcom/shabakaty/downloader/dp2$c;->b:Landroid/net/Uri;

    .line 19
    invoke-virtual {v1}, Lcom/shabakaty/downloader/dp2$c;->a()Lcom/shabakaty/downloader/dp2;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ak;->h0(Lcom/shabakaty/downloader/dp2;)V

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s64;->g()V

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/m41;->r:Lcom/shabakaty/epom_view/ui/EpomView;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/epom_view/ui/EpomView;->L:Lcom/shabakaty/epom_view/ui/EpomView$b;

    .line 24
    iget-wide v0, v0, Lcom/shabakaty/epom_view/ui/EpomView$b;->s:J

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ak;->q(J)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s64;->z(Z)V

    .line 27
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
