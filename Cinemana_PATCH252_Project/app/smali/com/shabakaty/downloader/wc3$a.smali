.class public final Lcom/shabakaty/downloader/wc3$a;
.super Lcom/shabakaty/downloader/af2;
.source "PlaybackEventsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wc3;-><init>(Lcom/shabakaty/downloader/s64;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ja3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wc3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wc3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wc3$a;->r:Lcom/shabakaty/downloader/wc3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ja3;

    iget-object v1, p0, Lcom/shabakaty/downloader/wc3$a;->r:Lcom/shabakaty/downloader/wc3;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/wc3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->start:Ljava/util/List;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3$a;->r:Lcom/shabakaty/downloader/wc3;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/wc3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->skippingDurations:Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/SkippingDurations;->end:Ljava/util/List;

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/String;

    .line 17
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {v0, v2, v3, v5}, Lcom/shabakaty/downloader/ja3;-><init>(Lcom/shabakaty/downloader/j71;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
