.class final Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;
.super Lcom/shabakaty/downloader/qf1;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EpisodeFlow"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final upstream:Lcom/shabakaty/downloader/qf1;


# direct methods
.method constructor <init>(Lcom/shabakaty/downloader/qf1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->upstream:Lcom/shabakaty/downloader/qf1;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->upstream:Lcom/shabakaty/downloader/qf1;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;Lcom/shabakaty/downloader/ef4;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-void
.end method
