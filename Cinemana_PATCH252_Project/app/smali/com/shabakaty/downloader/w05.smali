.class public final Lcom/shabakaty/downloader/w05;
.super Lcom/shabakaty/downloader/af2;
.source "VideoInfoFragment.kt"

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
.field public final synthetic r:Lcom/shabakaty/downloader/d15;

.field public final synthetic s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d15;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/w05;->r:Lcom/shabakaty/downloader/d15;

    iput-object p2, p0, Lcom/shabakaty/downloader/w05;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w05;->r:Lcom/shabakaty/downloader/d15;

    sget-boolean v1, Lcom/shabakaty/downloader/d15;->A:Z

    .line 2
    invoke-virtual {v0, v0}, Lcom/shabakaty/downloader/hj;->b2(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w05;->r:Lcom/shabakaty/downloader/d15;

    invoke-static {v0}, Lcom/shabakaty/downloader/d15;->i2(Lcom/shabakaty/downloader/d15;)Lcom/shabakaty/downloader/jl1;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/jl1;->e0:Lcom/shabakaty/downloader/m15;

    iget-object v0, v0, Lcom/shabakaty/downloader/m15;->S:Lcom/shabakaty/downloader/views/DownloadButton;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/views/DownloadButton;->e()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w05;->r:Lcom/shabakaty/downloader/d15;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/u15;

    iget-object v1, p0, Lcom/shabakaty/downloader/w05;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    const-string v2, "externalId"

    .line 6
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v3

    new-instance v6, Lcom/shabakaty/downloader/w15;

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/shabakaty/downloader/w15;-><init>(Lcom/shabakaty/downloader/u15;Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
