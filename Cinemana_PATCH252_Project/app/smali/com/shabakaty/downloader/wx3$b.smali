.class public final Lcom/shabakaty/downloader/wx3$b;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lcom/shabakaty/downloader/mu0;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final r:Ljava/lang/Runnable;

.field public final s:Lcom/shabakaty/downloader/wx3$c;

.field public volatile t:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/shabakaty/downloader/wx3$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wx3$b;->r:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wx3$b;->s:Lcom/shabakaty/downloader/wx3$c;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wx3$b;->t:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$b;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wx3$b;->t:Z

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wx3$b;->t:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$b;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wx3$b;->s:Lcom/shabakaty/downloader/wx3$c;

    invoke-interface {v1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
