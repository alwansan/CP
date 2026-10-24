.class public Lcom/shabakaty/downloader/yq4;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Lcom/shabakaty/downloader/uq4;


# static fields
.field public static volatile e:Lcom/shabakaty/downloader/zq4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/y30;

.field public final b:Lcom/shabakaty/downloader/y30;

.field public final c:Lcom/shabakaty/downloader/vx3;

.field public final d:Lcom/shabakaty/downloader/ww4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/vx3;Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/p75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yq4;->a:Lcom/shabakaty/downloader/y30;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yq4;->b:Lcom/shabakaty/downloader/y30;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/yq4;->c:Lcom/shabakaty/downloader/vx3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/yq4;->d:Lcom/shabakaty/downloader/ww4;

    .line 6
    iget-object p1, p5, Lcom/shabakaty/downloader/p75;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/shabakaty/downloader/rr;

    invoke-direct {p2, p5}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/p75;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/yq4;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yq4;->e:Lcom/shabakaty/downloader/zq4;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/yk0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/yk0;->C:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/yq4;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yq4;->e:Lcom/shabakaty/downloader/zq4;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/yq4;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/yq4;->e:Lcom/shabakaty/downloader/zq4;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/yk0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/yk0;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/yk0$a;)V

    .line 7
    sput-object v1, Lcom/shabakaty/downloader/yq4;->e:Lcom/shabakaty/downloader/zq4;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/g31;)Lcom/shabakaty/downloader/pq4;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qq4;

    .line 2
    instance-of v1, p1, Lcom/shabakaty/downloader/g31;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/kp;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/kp;->d:Ljava/util/Set;

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/o31;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 8
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/oq4;->a()Lcom/shabakaty/downloader/oq4$a;

    move-result-object v2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cct"

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/oq4$a;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/oq4$a;

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/kp;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kp;->b()[B

    move-result-object p1

    check-cast v2, Lcom/shabakaty/downloader/bi$b;

    .line 11
    iput-object p1, v2, Lcom/shabakaty/downloader/bi$b;->b:[B

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bi$b;->a()Lcom/shabakaty/downloader/oq4;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/shabakaty/downloader/qq4;-><init>(Ljava/util/Set;Lcom/shabakaty/downloader/oq4;Lcom/shabakaty/downloader/uq4;)V

    return-object v0
.end method
