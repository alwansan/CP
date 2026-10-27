.class public Lcom/shabakaty/downloader/kw0$l;
.super Ljava/lang/Object;
.source "DownloadDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/kw0;->h(Ljava/lang/String;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Lcom/shabakaty/downloader/kw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kw0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    iput-object p2, p0, Lcom/shabakaty/downloader/kw0$l;->r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kw0;->j:Lcom/shabakaty/downloader/f54;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$l;->r:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 11
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 13
    iget-object v1, v1, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 15
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_episode_sidecar_cleanup
    sget-object v2, Lcom/shabakaty/cinemana/ca1/Ui7;->app:Landroid/content/Context;
    if-eqz v2, :try_end_episode_sidecar_cleanup
    iget-object v3, p0, Lcom/shabakaty/downloader/kw0$l;->r:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleted(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_episode_sidecar_cleanup
    .catch Ljava/lang/Throwable; {:try_start_episode_sidecar_cleanup .. :try_end_episode_sidecar_cleanup} :episode_sidecar_cleanup_exception
    goto :episode_sidecar_cleanup_done
    :episode_sidecar_cleanup_exception
    move-exception v2
    :episode_sidecar_cleanup_done

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 17
    iget-object v2, v2, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 20
    iget-object v2, v2, Lcom/shabakaty/downloader/kw0;->j:Lcom/shabakaty/downloader/f54;

    .line 21
    iget-object v3, v2, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v3, :cond_1

    .line 22
    iget-object v0, v2, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 24
    iget-object v2, v2, Lcom/shabakaty/downloader/kw0;->a:Lcom/shabakaty/downloader/vt3;

    .line 25
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 26
    iget-object v2, p0, Lcom/shabakaty/downloader/kw0$l;->s:Lcom/shabakaty/downloader/kw0;

    .line 27
    iget-object v2, v2, Lcom/shabakaty/downloader/kw0;->j:Lcom/shabakaty/downloader/f54;

    .line 28
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 29
    throw v1
.end method
