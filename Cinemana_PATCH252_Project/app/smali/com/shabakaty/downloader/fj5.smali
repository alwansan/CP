.class public Lcom/shabakaty/downloader/fj5;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static volatile k:Lcom/shabakaty/downloader/fj5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/x30;

.field public final d:Lcom/shabakaty/downloader/sq5;

.field public final e:Lcom/shabakaty/downloader/wv5;

.field public final f:Lcom/shabakaty/downloader/xu6;

.field public final g:Lcom/shabakaty/downloader/tf5;

.field public final h:Lcom/shabakaty/downloader/xr5;

.field public final i:Lcom/shabakaty/downloader/k06;

.field public final j:Lcom/shabakaty/downloader/ww5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ox5;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Application context can\'t be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/fj5;->b:Landroid/content/Context;

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/mn0;->a:Lcom/shabakaty/downloader/mn0;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/sq5;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/sq5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 11
    iput-object v2, p0, Lcom/shabakaty/downloader/fj5;->d:Lcom/shabakaty/downloader/sq5;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/wv5;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/wv5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 14
    iput-object v2, p0, Lcom/shabakaty/downloader/fj5;->e:Lcom/shabakaty/downloader/wv5;

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v3

    sget-object v2, Lcom/shabakaty/downloader/xi5;->a:Ljava/lang/String;

    const/16 v4, 0x86

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "Google Analytics "

    const-string v6, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-static {v4, v5, v2, v6}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/fq1;->j1(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/ww5;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ww5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 18
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 19
    iput-object v2, p0, Lcom/shabakaty/downloader/fj5;->j:Lcom/shabakaty/downloader/ww5;

    .line 20
    new-instance v2, Lcom/shabakaty/downloader/k06;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/k06;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 21
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 22
    iput-object v2, p0, Lcom/shabakaty/downloader/fj5;->i:Lcom/shabakaty/downloader/k06;

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/tf5;

    invoke-direct {v2, p0, p1}, Lcom/shabakaty/downloader/tf5;-><init>(Lcom/shabakaty/downloader/fj5;Lcom/shabakaty/downloader/ox5;)V

    const-string p1, "null reference"

    .line 24
    invoke-static {v1, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/tf5;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/tf5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/xu6;->e:Lcom/shabakaty/downloader/xu6;

    if-nez v1, :cond_1

    .line 27
    const-class v1, Lcom/shabakaty/downloader/xu6;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v3, Lcom/shabakaty/downloader/xu6;->e:Lcom/shabakaty/downloader/xu6;

    if-nez v3, :cond_0

    .line 29
    new-instance v3, Lcom/shabakaty/downloader/xu6;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/xu6;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/shabakaty/downloader/xu6;->e:Lcom/shabakaty/downloader/xu6;

    .line 30
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/xu6;->e:Lcom/shabakaty/downloader/xu6;

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/lj5;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/lj5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 33
    iput-object v1, v0, Lcom/shabakaty/downloader/xu6;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    iput-object v0, p0, Lcom/shabakaty/downloader/fj5;->f:Lcom/shabakaty/downloader/xu6;

    .line 35
    new-instance v0, Lcom/shabakaty/downloader/oq1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/oq1;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 37
    new-instance p1, Lcom/shabakaty/downloader/xr5;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xr5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 38
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 39
    iput-object p1, p0, Lcom/shabakaty/downloader/fj5;->h:Lcom/shabakaty/downloader/xr5;

    .line 40
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 41
    iput-object v2, p0, Lcom/shabakaty/downloader/fj5;->g:Lcom/shabakaty/downloader/tf5;

    .line 42
    iget-object p1, v0, Lcom/shabakaty/downloader/md5;->a:Lcom/shabakaty/downloader/fj5;

    .line 43
    iget-object v0, p1, Lcom/shabakaty/downloader/fj5;->i:Lcom/shabakaty/downloader/k06;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 44
    iget-object p1, p1, Lcom/shabakaty/downloader/fj5;->i:Lcom/shabakaty/downloader/k06;

    .line 45
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 46
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 47
    iget-boolean v0, p1, Lcom/shabakaty/downloader/k06;->z:Z

    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 50
    iget-object p1, v2, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/in5;

    .line 51
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 52
    iget-boolean v0, p1, Lcom/shabakaty/downloader/in5;->v:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Analytics backend already started"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 53
    iput-boolean v1, p1, Lcom/shabakaty/downloader/in5;->v:Z

    .line 54
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fq1;->x1()Lcom/shabakaty/downloader/xu6;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/in5;)V

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, v0, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/qi5;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->K1()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/shabakaty/downloader/fj5;
    .locals 6

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/fj5;->k:Lcom/shabakaty/downloader/fj5;

    if-nez v0, :cond_3

    .line 3
    const-class v0, Lcom/shabakaty/downloader/fj5;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/fj5;->k:Lcom/shabakaty/downloader/fj5;

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/ox5;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/shabakaty/downloader/ox5;-><init>(Landroid/content/Context;I)V

    .line 7
    new-instance p0, Lcom/shabakaty/downloader/fj5;

    invoke-direct {p0, v3}, Lcom/shabakaty/downloader/fj5;-><init>(Lcom/shabakaty/downloader/ox5;)V

    .line 8
    sput-object p0, Lcom/shabakaty/downloader/fj5;->k:Lcom/shabakaty/downloader/fj5;

    .line 9
    const-class v3, Lcom/shabakaty/downloader/oq1;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sget-object v4, Lcom/shabakaty/downloader/oq1;->b:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 12
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 13
    sput-object v4, Lcom/shabakaty/downloader/oq1;->b:Ljava/util/List;

    .line 14
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 16
    sget-object v1, Lcom/shabakaty/downloader/ns5;->B:Lcom/shabakaty/downloader/ox5;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 18
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object p0

    const-string v5, "Slow initialization (ms)"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v5, v3, v1}, Lcom/shabakaty/downloader/fq1;->o1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 20
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 21
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 22
    :cond_3
    :goto_2
    sget-object p0, Lcom/shabakaty/downloader/fj5;->k:Lcom/shabakaty/downloader/fj5;

    return-object p0
.end method


# virtual methods
.method public final c()Lcom/shabakaty/downloader/wv5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->e:Lcom/shabakaty/downloader/wv5;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->e:Lcom/shabakaty/downloader/wv5;

    return-object v0
.end method

.method public final d()Lcom/shabakaty/downloader/xu6;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->f:Lcom/shabakaty/downloader/xu6;

    const-string v1, "null reference"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->f:Lcom/shabakaty/downloader/xu6;

    return-object v0
.end method

.method public final e()Lcom/shabakaty/downloader/tf5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->g:Lcom/shabakaty/downloader/tf5;

    invoke-static {v0}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fj5;->g:Lcom/shabakaty/downloader/tf5;

    return-object v0
.end method
