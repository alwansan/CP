.class public final Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->t(Lcom/shabakaty/downloader/b41;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

.field public final synthetic s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;I)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iput p2, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->s:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v0, "videoModel"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    iget v1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->s:I

    sget v2, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->z:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/shabakaty/downloader/d10;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, Lcom/shabakaty/downloader/d10;-><init>(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;II)V

    const-wide/16 v0, 0x64

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->z()V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 8
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->getPlaybackEventsHandler()Lcom/shabakaty/downloader/wc3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wc3;->c()Lcom/shabakaty/downloader/ja3;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Ljava/lang/String;

    .line 13
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/ja3;->c(Ljava/util/List;Ljava/util/List;)V

    .line 20
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->s(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->q(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/downloader/q10;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/q10;->z:Lcom/shabakaty/downloader/xv2;

    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    .line 25
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->o(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->getSettingsBottomSheetController()Lcom/shabakaty/downloader/ed3;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 26
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, v0, Lcom/shabakaty/downloader/ed3;->a:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 28
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/player/CinemanaPlayerView$a;->r:Lcom/shabakaty/cinemana/player/CinemanaPlayerView;

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerView;->o(Lcom/shabakaty/cinemana/player/CinemanaPlayerView;)Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->E()V

    .line 29
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
