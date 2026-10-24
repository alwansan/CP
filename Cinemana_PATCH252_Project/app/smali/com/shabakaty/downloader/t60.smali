.class public final Lcom/shabakaty/downloader/t60;
.super Lcom/shabakaty/downloader/af2;
.source "CommentsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u60;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u60;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/t60;->r:Lcom/shabakaty/downloader/u60;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x60;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x60;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/t60;->r:Lcom/shabakaty/downloader/u60;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g70;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/g70;->g:Lcom/shabakaty/downloader/q15;

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/q15;->a:Lcom/shabakaty/downloader/k9;

    .line 5
    invoke-interface {v3}, Lcom/shabakaty/downloader/k9;->i()Lcom/shabakaty/downloader/f74;

    move-result-object v3

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/q15;->d:Lcom/shabakaty/downloader/qm2;

    new-instance v4, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0x1b

    invoke-direct {v4, v2, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/f74;->i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/shabakaty/downloader/uv3;->f(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 8
    iget-object v3, v1, Lcom/shabakaty/downloader/g70;->i:Lcom/shabakaty/downloader/mj;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/xk;->c(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/xv2;)Lcom/shabakaty/downloader/mu0;

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/t60;->r:Lcom/shabakaty/downloader/u60;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/g70;

    .line 10
    iget-object v1, v1, Lcom/shabakaty/downloader/g70;->i:Lcom/shabakaty/downloader/mj;

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/t60;->r:Lcom/shabakaty/downloader/u60;

    new-instance v3, Lcom/shabakaty/downloader/iz3;

    invoke-direct {v3, v0, v2}, Lcom/shabakaty/downloader/iz3;-><init>(Lcom/shabakaty/downloader/x60;Lcom/shabakaty/downloader/u60;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
