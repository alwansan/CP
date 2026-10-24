.class public final synthetic Lcom/shabakaty/downloader/no4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Ljava/util/concurrent/ScheduledExecutorService;

.field public final t:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final u:Lcom/shabakaty/downloader/mc1;

.field public final v:Lcom/shabakaty/downloader/rs2;

.field public final w:Lcom/shabakaty/downloader/nq1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/rs2;Lcom/shabakaty/downloader/nq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/no4;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/no4;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/shabakaty/downloader/no4;->t:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lcom/shabakaty/downloader/no4;->u:Lcom/shabakaty/downloader/mc1;

    iput-object p5, p0, Lcom/shabakaty/downloader/no4;->v:Lcom/shabakaty/downloader/rs2;

    iput-object p6, p0, Lcom/shabakaty/downloader/no4;->w:Lcom/shabakaty/downloader/nq1;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10

    iget-object v6, p0, Lcom/shabakaty/downloader/no4;->r:Landroid/content/Context;

    iget-object v7, p0, Lcom/shabakaty/downloader/no4;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/shabakaty/downloader/no4;->t:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v2, p0, Lcom/shabakaty/downloader/no4;->u:Lcom/shabakaty/downloader/mc1;

    iget-object v3, p0, Lcom/shabakaty/downloader/no4;->v:Lcom/shabakaty/downloader/rs2;

    iget-object v5, p0, Lcom/shabakaty/downloader/no4;->w:Lcom/shabakaty/downloader/nq1;

    .line 1
    const-class v0, Lcom/shabakaty/downloader/mo4;

    monitor-enter v0

    :try_start_0
    sget-object v4, Lcom/shabakaty/downloader/mo4;->d:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mo4;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    const-string v4, "com.google.android.gms.appid"

    const/4 v8, 0x0

    .line 3
    invoke-virtual {v6, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v8, Lcom/shabakaty/downloader/mo4;

    .line 4
    invoke-direct {v8, v4, v7}, Lcom/shabakaty/downloader/mo4;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    .line 5
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v9, "topic_operation_queue"

    .line 6
    invoke-static {v4, v9, v7}, Lcom/shabakaty/downloader/e54;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/e54;

    move-result-object v4

    iput-object v4, v8, Lcom/shabakaty/downloader/mo4;->b:Lcom/shabakaty/downloader/e54;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 7
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/shabakaty/downloader/mo4;->d:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    move-object v4, v8

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v8

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :cond_1
    monitor-exit v0

    .line 11
    :goto_1
    new-instance v8, Lcom/shabakaty/downloader/oo4;

    move-object v0, v8

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/oo4;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/rs2;Lcom/shabakaty/downloader/mo4;Lcom/shabakaty/downloader/nq1;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v8

    :catchall_1
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1
.end method
