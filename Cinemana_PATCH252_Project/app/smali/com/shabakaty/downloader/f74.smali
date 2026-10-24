.class public abstract Lcom/shabakaty/downloader/f74;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lcom/shabakaty/downloader/h84;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/h84<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs o(Lcom/shabakaty/downloader/in1;[Lcom/shabakaty/downloader/h84;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TR;>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/do1$i;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/do1$i;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p0, Lcom/shabakaty/downloader/r74;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/r74;-><init>(Ljava/util/concurrent/Callable;I)V

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/k84;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/k84;-><init>([Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/y74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/f74;->l(Lcom/shabakaty/downloader/y74;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    throw v0

    :catch_0
    move-exception p1

    .line 7
    throw p1
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/f74;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v5, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    const/4 v6, 0x0

    const-string v0, "unit is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/k74;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/k74;-><init>(Lcom/shabakaty/downloader/h84;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;Z)V

    return-object v7
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/f74;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    const-string v1, "unit is null"

    .line 2
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "scheduler is null"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/o53;

    const-wide/16 v2, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/shabakaty/downloader/o53;-><init>(JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/l74;

    invoke-direct {p1, p0, v1}, Lcom/shabakaty/downloader/l74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/l53;)V

    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/m74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    return-object v0
.end method

.method public final f(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/n74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    return-object v0
.end method

.method public final g(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/p74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/xc0;)V

    return-object v0
.end method

.method public final h(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "Lcom/shabakaty/downloader/qf1<",
            "TU;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/s74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    return-object v0
.end method

.method public final i(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TR;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    return-object v0
.end method

.method public final j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x74;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/x74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/wx3;)V

    return-object v0
.end method

.method public final k(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    return-object v0
.end method

.method public abstract l(Lcom/shabakaty/downloader/y74;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/f74<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/i84;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/i84;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/wx3;)V

    return-object v0
.end method

.method public final n()Lcom/shabakaty/downloader/qf1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/fo1;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/fo1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fo1;->b()Lcom/shabakaty/downloader/qf1;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/j84;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/j84;-><init>(Lcom/shabakaty/downloader/h84;)V

    return-object v0
.end method

.method public final p(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/wl;)Lcom/shabakaty/downloader/f74;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/h84<",
            "TU;>;",
            "Lcom/shabakaty/downloader/wl<",
            "-TT;-TU;+TR;>;)",
            "Lcom/shabakaty/downloader/f74<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f is null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/do1$a;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/do1$a;-><init>(Lcom/shabakaty/downloader/wl;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/shabakaty/downloader/h84;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    .line 3
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/f74;->o(Lcom/shabakaty/downloader/in1;[Lcom/shabakaty/downloader/h84;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    return-object p1
.end method
