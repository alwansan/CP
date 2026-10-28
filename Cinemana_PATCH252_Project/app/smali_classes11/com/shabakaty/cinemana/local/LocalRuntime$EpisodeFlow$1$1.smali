.class Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/lf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->d(Lcom/shabakaty/downloader/lf4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

.field final synthetic val$next:Lcom/shabakaty/downloader/lf4;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;Lcom/shabakaty/downloader/lf4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->val$next:Lcom/shabakaty/downloader/lf4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->terminal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->deadline:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_16
    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->val$next:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/lf4;->cancel()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "season_cancel id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->this$1:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method public u(J)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow$1$1;->val$next:Lcom/shabakaty/downloader/lf4;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    return-void
.end method
