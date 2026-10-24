.class public final Lcom/shabakaty/downloader/mr;
.super Ljava/lang/Object;
.source "Camera2CameraControl.java"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lcom/shabakaty/downloader/sr;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/Object;

.field public f:Lcom/shabakaty/downloader/js$a;

.field public g:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/shabakaty/downloader/sr$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sr;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mr;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mr;->b:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/mr;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/js$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/js$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/jr;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/jr;-><init>(Lcom/shabakaty/downloader/mr;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/mr;->h:Lcom/shabakaty/downloader/sr$c;

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/mr;->c:Lcom/shabakaty/downloader/sr;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/mr;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/js;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mr;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/js;->x:Lcom/shabakaty/downloader/o90$a;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    sget-object v4, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v2, v3, v4, v1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/js$a;->a()Lcom/shabakaty/downloader/js;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcom/shabakaty/downloader/ar$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/mr;->b:Z

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/mr;->a:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/mr;->c:Lcom/shabakaty/downloader/sr;

    .line 6
    iget-object v2, p1, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/shabakaty/downloader/nr;

    invoke-direct {v3, p1, v0}, Lcom/shabakaty/downloader/nr;-><init>(Lcom/shabakaty/downloader/sr;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/mr;->b:Z

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ct;

    const-string v0, "Camera2CameraControl was updated with new options."

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    :cond_2
    return-void
.end method
