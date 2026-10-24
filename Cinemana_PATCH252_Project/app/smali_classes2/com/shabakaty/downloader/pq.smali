.class public final Lcom/shabakaty/downloader/pq;
.super Lcom/shabakaty/downloader/t43;
.source "CallExecuteObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/t43<",
        "Lcom/shabakaty/downloader/xs3<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pq;->r:Lcom/shabakaty/downloader/nq;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pq;->r:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->G0()Lcom/shabakaty/downloader/nq;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/pq$a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/pq$a;-><init>(Lcom/shabakaty/downloader/nq;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 4
    iget-boolean v2, v1, Lcom/shabakaty/downloader/pq$a;->s:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->execute()Lcom/shabakaty/downloader/xs3;

    move-result-object v0

    .line 6
    iget-boolean v4, v1, Lcom/shabakaty/downloader/pq$a;->s:Z

    if-nez v4, :cond_1

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-boolean v0, v1, Lcom/shabakaty/downloader/pq$a;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    .line 9
    :try_start_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/q53;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_2

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean v1, v1, Lcom/shabakaty/downloader/pq$a;->s:Z

    if-nez v1, :cond_3

    .line 13
    :try_start_2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/d90;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    invoke-direct {v1, v4}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
