.class public abstract Lcom/shabakaty/downloader/q70;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lcom/shabakaty/downloader/c80;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d([Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "sources is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/y70;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/y70;-><init>([Lcom/shabakaty/downloader/c80;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/a80;)V
    .locals 2

    const-string v0, "observer is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/q70;->f(Lcom/shabakaty/downloader/a80;)V
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

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

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

.method public final b(Lcom/shabakaty/downloader/c80;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "next is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/r70;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/r70;-><init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/c80;)V

    return-object v0
.end method

.method public final c(Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/q70;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/shabakaty/downloader/q70;"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v7, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v8, Lcom/shabakaty/downloader/b80;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/b80;-><init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    return-object v8
.end method

.method public final e(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/z70;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/z70;-><init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/wx3;)V

    return-object v0
.end method

.method public abstract f(Lcom/shabakaty/downloader/a80;)V
.end method

.method public final g(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/q70;
    .locals 1

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/d80;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/d80;-><init>(Lcom/shabakaty/downloader/c80;Lcom/shabakaty/downloader/wx3;)V

    return-object v0
.end method
