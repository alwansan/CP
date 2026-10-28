.class Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->l(Lcom/shabakaty/downloader/y74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

.field final synthetic val$observer:Lcom/shabakaty/downloader/y74;

.field final synthetic val$started:J


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;Lcom/shabakaty/downloader/y74;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    iput-wide p3, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$started:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detail_failed id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$$ExternalSyntheticLambda0;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;Lcom/shabakaty/downloader/y74;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    return-void
.end method

.method synthetic lambda$b$0$com-shabakaty-cinemana-local-LocalRuntime$CaptureSingle$1(Lcom/shabakaty/downloader/y74;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "detail_local_fallback id="

    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->cachedModel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->this$0:Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_28

    :catch_25
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle$1;->val$observer:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
