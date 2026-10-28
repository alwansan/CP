.class public final synthetic Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

.field public final synthetic f$1:Lcom/shabakaty/downloader/lf4;

.field public final synthetic f$2:Lcom/shabakaty/downloader/ef4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/ef4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/shabakaty/downloader/lf4;

    iput-object p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$2:Lcom/shabakaty/downloader/ef4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$1:Lcom/shabakaty/downloader/lf4;

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$$ExternalSyntheticLambda0;->f$2:Lcom/shabakaty/downloader/ef4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->lambda$d$0$com-shabakaty-cinemana-local-LocalRuntime$EpisodeFlow$1(Lcom/shabakaty/downloader/lf4;Lcom/shabakaty/downloader/ef4;)V

    return-void
.end method
