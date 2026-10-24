.class public final Lcom/shabakaty/downloader/s15;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/u15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/u15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/s15;->r:Lcom/shabakaty/downloader/u15;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/s15;->r:Lcom/shabakaty/downloader/u15;

    .line 4
    iget-object v6, v0, Lcom/shabakaty/downloader/u15;->t:Lcom/shabakaty/downloader/mj;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/tj;

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/tj$a;->r:Lcom/shabakaty/downloader/tj$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v7

    move-object v2, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mj;->c(Lcom/shabakaty/downloader/tj;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/s15;->r:Lcom/shabakaty/downloader/u15;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/j15;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/j15;->h1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
