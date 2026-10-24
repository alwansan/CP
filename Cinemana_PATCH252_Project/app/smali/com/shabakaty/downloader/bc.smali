.class public final Lcom/shabakaty/downloader/bc;
.super Lcom/shabakaty/downloader/af2;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/o84;",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/CinemanaApplication;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/o84;

    check-cast p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "scene"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModel"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->f()Lcom/shabakaty/downloader/pc;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/ac;

    iget-object v0, p0, Lcom/shabakaty/downloader/bc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, p2, v2}, Lcom/shabakaty/downloader/ac;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/downloader/o84;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
