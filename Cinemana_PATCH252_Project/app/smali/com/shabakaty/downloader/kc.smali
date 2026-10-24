.class public final Lcom/shabakaty/downloader/kc;
.super Lcom/shabakaty/downloader/af2;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jn1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/jn1<",
        "Lcom/shabakaty/cinemana/domain/models/local/Subtitle;",
        "Lcom/shabakaty/downloader/pw0;",
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

    iput-object p1, p0, Lcom/shabakaty/downloader/kc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    move-object v4, p2

    check-cast v4, Lcom/shabakaty/downloader/pw0;

    move-object v3, p3

    check-cast v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string p1, "subtitle"

    .line 2
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/kc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->f()Lcom/shabakaty/downloader/pc;

    move-result-object p1

    new-instance v8, Lcom/shabakaty/downloader/jc;

    iget-object v1, p0, Lcom/shabakaty/downloader/kc;->r:Lcom/shabakaty/cinemana/CinemanaApplication;

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/jc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
