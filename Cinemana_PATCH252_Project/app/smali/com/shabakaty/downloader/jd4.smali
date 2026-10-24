.class public Lcom/shabakaty/downloader/jd4;
.super Ljava/lang/Object;
.source "StopWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final r:Lcom/shabakaty/downloader/r75;

.field public final s:Ljava/lang/String;

.field public final t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StopWorkRunnable"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/jd4;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jd4;->r:Lcom/shabakaty/downloader/r75;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/jd4;->t:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jd4;->r:Lcom/shabakaty/downloader/r75;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 4
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    .line 8
    iget-object v4, v0, Lcom/shabakaty/downloader/fg3;->A:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v0, v0, Lcom/shabakaty/downloader/fg3;->v:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    iget-boolean v3, p0, Lcom/shabakaty/downloader/jd4;->t:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/jd4;->r:Lcom/shabakaty/downloader/r75;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/fg3;->h(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    .line 16
    check-cast v2, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v0

    sget-object v3, Landroidx/work/d;->s:Landroidx/work/d;

    if-ne v0, v3, :cond_1

    .line 17
    sget-object v0, Landroidx/work/d;->r:Landroidx/work/d;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/jd4;->r:Lcom/shabakaty/downloader/r75;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/fg3;->i(Ljava/lang/String;)Z

    move-result v0

    .line 22
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/jd4;->u:Ljava/lang/String;

    const-string v6, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/shabakaty/downloader/jd4;->s:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v4

    .line 24
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 25
    invoke-virtual {v2, v3, v0, v4}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_1
    move-exception v0

    .line 28
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :goto_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 30
    throw v0
.end method
