.class public Lcom/shabakaty/downloader/zk4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ye7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye7<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/rd5;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ye7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ye7;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/rd5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/rd5;-><init>(Lcom/shabakaty/downloader/zk4;)V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ye7;

    new-instance v1, Lcom/shabakaty/downloader/rd5;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/rd5;-><init>(Lcom/shabakaty/downloader/rd5;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/dl4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ye7;->c(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)Lcom/shabakaty/downloader/uk4;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Exception must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/ye7;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v2, v0, Lcom/shabakaty/downloader/ye7;->c:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 5
    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcom/shabakaty/downloader/ye7;->c:Z

    .line 7
    iput-object p1, v0, Lcom/shabakaty/downloader/ye7;->f:Ljava/lang/Exception;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ic7;->b(Lcom/shabakaty/downloader/uk4;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ye7;->s(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
