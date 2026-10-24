.class public abstract Lcom/shabakaty/downloader/t43;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lcom/shabakaty/downloader/l53;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l53<",
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

.method public static f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/shabakaty/downloader/t43<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v6, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    const-string v0, "unit is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    .line 3
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v7, Lcom/shabakaty/downloader/b53;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    move-object v0, v7

    move-wide v1, v2

    move-wide v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/b53;-><init>(JJLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V

    return-object v7
.end method


# virtual methods
.method public final d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/x43;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/x43;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    return-object v0
.end method

.method public final g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v1, "bufferSize"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/e53;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/shabakaty/downloader/e53;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;ZI)V

    return-object v1
.end method

.method public final h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/mu0;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/bf2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/bf2;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-object v0
.end method

.method public final i(Lcom/shabakaty/downloader/q53;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/t43;->j(Lcom/shabakaty/downloader/q53;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    throw v0

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public abstract j(Lcom/shabakaty/downloader/q53;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final k(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/m53;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/m53;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;)V

    return-object v0
.end method

.method public final l(I)Lcom/shabakaty/downloader/qf1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/ig1;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ig1;-><init>(Lcom/shabakaty/downloader/t43;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 3
    sget v2, Lcom/shabakaty/downloader/qf1;->r:I

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string p1, "capacity"

    .line 4
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/ng1;

    sget-object v5, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ng1;-><init>(Lcom/shabakaty/downloader/qf1;IZZLcom/shabakaty/downloader/j2;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/qg1;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/qg1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/og1;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/og1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/pg1;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/pg1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    return-object p1

    :cond_3
    return-object v1
.end method
