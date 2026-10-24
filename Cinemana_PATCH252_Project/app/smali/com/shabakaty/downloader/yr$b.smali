.class public Lcom/shabakaty/downloader/yr$b;
.super Ljava/lang/Object;
.source "Camera2CameraImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ho1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yr;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ho1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/yr;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    const-string v2, "Unable to configure camera due to "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    const-string v0, "Unable to configure camera cancelled"

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/hp0$a;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    check-cast p1, Lcom/shabakaty/downloader/hp0$a;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/hp0$a;->r:Lcom/shabakaty/downloader/hp0;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fx4;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u14;

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/u14;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/jl3;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 14
    iget-object v2, v1, Lcom/shabakaty/downloader/u14;->e:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u14$c;

    .line 17
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "Posting surface closed"

    invoke-virtual {p1, v4, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/or;

    invoke-direct {p1, v2, v1}, Lcom/shabakaty/downloader/or;-><init>(Lcom/shabakaty/downloader/u14$c;Lcom/shabakaty/downloader/u14;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_6

    const-string p1, "Unable to configure camera "

    .line 20
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/yr$b;->a:Lcom/shabakaty/downloader/yr;

    iget-object v0, v0, Lcom/shabakaty/downloader/yr;->y:Lcom/shabakaty/downloader/zr;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/zr;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeout!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2CameraImpl"

    .line 23
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/vk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method
