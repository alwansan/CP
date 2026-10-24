.class public final Lcom/shabakaty/downloader/b0$h;
.super Lcom/shabakaty/downloader/b0$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/b0$b;-><init>(Lcom/shabakaty/downloader/b0$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/b0;Lcom/shabakaty/downloader/b0$e;Lcom/shabakaty/downloader/b0$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b0<",
            "*>;",
            "Lcom/shabakaty/downloader/b0$e;",
            "Lcom/shabakaty/downloader/b0$e;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/b0;->s:Lcom/shabakaty/downloader/b0$e;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/shabakaty/downloader/b0;->s:Lcom/shabakaty/downloader/b0$e;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Lcom/shabakaty/downloader/b0;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b0<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/shabakaty/downloader/b0;->r:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Lcom/shabakaty/downloader/b0;Lcom/shabakaty/downloader/b0$i;Lcom/shabakaty/downloader/b0$i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/b0<",
            "*>;",
            "Lcom/shabakaty/downloader/b0$i;",
            "Lcom/shabakaty/downloader/b0$i;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/shabakaty/downloader/b0;->t:Lcom/shabakaty/downloader/b0$i;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/shabakaty/downloader/b0;->t:Lcom/shabakaty/downloader/b0$i;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Lcom/shabakaty/downloader/b0$i;Lcom/shabakaty/downloader/b0$i;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/shabakaty/downloader/b0$i;->b:Lcom/shabakaty/downloader/b0$i;

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/b0$i;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p2, p1, Lcom/shabakaty/downloader/b0$i;->a:Ljava/lang/Thread;

    return-void
.end method
