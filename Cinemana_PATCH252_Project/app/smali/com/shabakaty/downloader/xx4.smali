.class public final Lcom/shabakaty/downloader/xx4;
.super Lcom/shabakaty/downloader/af2;
.source "UserListDetailsFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/vx4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vx4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xx4;->r:Lcom/shabakaty/downloader/vx4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xx4;->r:Lcom/shabakaty/downloader/vx4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/by4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
