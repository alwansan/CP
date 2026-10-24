.class public abstract Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;
.super Ljava/lang/Object;
.source "VideoModelMapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'J\u001a\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0004H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/domain/mapper/VideoModelMapper;",
        "",
        "Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;",
        "dto",
        "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
        "mapDtoToDomain",
        "source",
        "target",
        "Lcom/shabakaty/downloader/qv4;",
        "updateVideoModelRoot",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract mapDtoToDomain(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;)Lcom/shabakaty/cinemana/domain/models/local/VideoModel;
.end method

.method public final updateVideoModelRoot(Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->kind:Ljava/lang/String;

    const-string v1, "2"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->rootSeries:Ljava/lang/String;

    const-string v1, "0"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->nb:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->o(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->rootSeries:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/vd5;->B(Ljava/lang/String;)I

    move-result v0

    .line 9
    iput v0, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->downloadCollectionID:I

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->arTitle:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/remote/VideoModelApi;->enTitle:Ljava/lang/String;

    const-string v0, "<set-?>"

    .line 13
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTitle:Ljava/lang/String;

    :cond_2
    return-void
.end method
