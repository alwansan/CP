.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field public static final l:J

.field public static m:Lcom/google/firebase/messaging/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static n:Lcom/shabakaty/downloader/pq4;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FirebaseUnknownNullness"
        }
    .end annotation
.end field

.field public static o:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ec1;

.field public final b:Lcom/shabakaty/downloader/pc1;

.field public final c:Lcom/shabakaty/downloader/mc1;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/shabakaty/downloader/nq1;

.field public final f:Lcom/shabakaty/downloader/as3;

.field public final g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lcom/shabakaty/downloader/rs2;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/pc1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/pq4;Lcom/shabakaty/downloader/ff4;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec1;",
            "Lcom/shabakaty/downloader/pc1;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/qx4;",
            ">;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/xs1;",
            ">;",
            "Lcom/shabakaty/downloader/mc1;",
            "Lcom/shabakaty/downloader/pq4;",
            "Lcom/shabakaty/downloader/ff4;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    new-instance v9, Lcom/shabakaty/downloader/rs2;

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v9, v1}, Lcom/shabakaty/downloader/rs2;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v10, Lcom/shabakaty/downloader/nq1;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/nq1;-><init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/rs2;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/mc1;)V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/nw2;

    const-string v2, "Firebase-Messaging-Task"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/shabakaty/downloader/nw2;

    const-string v4, "Firebase-Messaging-Init"

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-direct {v2, v11, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    sput-object p6, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lcom/shabakaty/downloader/pq4;

    iput-object v0, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    iput-object v7, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/shabakaty/downloader/pc1;

    move-object/from16 v5, p5

    iput-object v5, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/shabakaty/downloader/mc1;

    new-instance v4, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    move-object/from16 v6, p7

    .line 9
    invoke-direct {v4, v8, v6}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/ff4;)V

    iput-object v4, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 11
    iget-object v4, v0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 12
    iput-object v4, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 13
    new-instance v6, Lcom/shabakaty/downloader/ha1;

    invoke-direct {v6}, Lcom/shabakaty/downloader/ha1;-><init>()V

    iput-object v9, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/shabakaty/downloader/rs2;

    iput-object v1, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Ljava/util/concurrent/Executor;

    iput-object v10, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/shabakaty/downloader/nq1;

    new-instance v12, Lcom/shabakaty/downloader/as3;

    .line 14
    invoke-direct {v12, v1}, Lcom/shabakaty/downloader/as3;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v12, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/shabakaty/downloader/as3;

    iput-object v2, v8, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 17
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 18
    check-cast v0, Landroid/app/Application;

    .line 19
    invoke-virtual {v0, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7d

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Context "

    const-string v12, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    const-string v13, "FirebaseMessaging"

    invoke-static {v6, v1, v0, v12, v13}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v7, :cond_1

    .line 21
    new-instance v0, Lcom/shabakaty/downloader/qc1;

    invoke-direct {v0, v8, v3}, Lcom/shabakaty/downloader/qc1;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    invoke-interface {v7, v0}, Lcom/shabakaty/downloader/pc1;->a(Lcom/shabakaty/downloader/pc1$a;)V

    :cond_1
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/firebase/messaging/a;

    .line 22
    invoke-direct {v0, v4}, Lcom/google/firebase/messaging/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/a;

    .line 23
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/shabakaty/downloader/zz6;

    .line 24
    invoke-direct {v0, v8}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/shabakaty/downloader/nw2;

    const-string v2, "Firebase-Messaging-Topics-Io"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v11, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 26
    sget v1, Lcom/shabakaty/downloader/oo4;->k:I

    .line 27
    new-instance v12, Lcom/shabakaty/downloader/no4;

    move-object v1, v12

    move-object v2, v4

    move-object v3, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object v6, v9

    move-object v7, v10

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/no4;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/shabakaty/downloader/mc1;Lcom/shabakaty/downloader/rs2;Lcom/shabakaty/downloader/nq1;)V

    invoke-static {v0, v12}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v18, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/nw2;

    const-string v3, "Firebase-Messaging-Trigger-Topics-Io"

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v15, 0x1e

    move-object v12, v1

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    new-instance v2, Lcom/shabakaty/downloader/qc1;

    invoke-direct {v2, v8, v11}, Lcom/shabakaty/downloader/qc1;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    .line 32
    check-cast v0, Lcom/shabakaty/downloader/ye7;

    .line 33
    iget-object v3, v0, Lcom/shabakaty/downloader/ye7;->b:Lcom/shabakaty/downloader/ic7;

    new-instance v4, Lcom/shabakaty/downloader/rk6;

    .line 34
    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/rk6;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/a73;)V

    .line 35
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ic7;->c(Lcom/shabakaty/downloader/jd7;)V

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ye7;->u()V

    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/shabakaty/downloader/ec1;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/shabakaty/downloader/pc1;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/pc1;->b()Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->a(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 3
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d()Lcom/google/firebase/messaging/a$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(Lcom/google/firebase/messaging/a$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/google/firebase/messaging/a$a;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/rs2;->b(Lcom/shabakaty/downloader/ec1;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/shabakaty/downloader/mc1;

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/mc1;->getId()Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/nw2;

    const-string v4, "Firebase-Messaging-Network-Io"

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v4, p0, v1}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/uk4;->f(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/td0;)Lcom/shabakaty/downloader/uk4;

    move-result-object v2

    .line 12
    :try_start_1
    invoke-static {v2}, Lcom/shabakaty/downloader/kl4;->a(Lcom/shabakaty/downloader/uk4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/a;

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/shabakaty/downloader/rs2;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/rs2;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/firebase/messaging/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/firebase/messaging/a$a;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    return-object v2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 16
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 1
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/shabakaty/downloader/nw2;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Lcom/google/firebase/messaging/a$a;
    .locals 4

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/a;

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    invoke-static {v2}, Lcom/shabakaty/downloader/rs2;->b(Lcom/shabakaty/downloader/ec1;)Ljava/lang/String;

    move-result-object v2

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/google/firebase/messaging/a;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/a$a;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/a$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/shabakaty/downloader/ec1;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invoking onNewToken for app: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 9
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/shabakaty/downloader/ga1;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 12
    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ga1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ga1;->b(Landroid/content/Intent;)Lcom/shabakaty/downloader/uk4;

    :cond_2
    return-void
.end method

.method public declared-synchronized f(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/shabakaty/downloader/pc1;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/shabakaty/downloader/pc1;->getToken()Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d()Lcom/google/firebase/messaging/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(Lcom/google/firebase/messaging/a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method

.method public declared-synchronized h(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    .line 1
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/shabakaty/downloader/dj4;

    .line 2
    invoke-direct {v2, p0, v0, v1}, Lcom/shabakaty/downloader/dj4;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lcom/google/firebase/messaging/a$a;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/shabakaty/downloader/rs2;

    .line 1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/rs2;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/firebase/messaging/a$a;->c:J

    sget-wide v6, Lcom/google/firebase/messaging/a$a;->d:J

    add-long/2addr v4, v6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    iget-object p1, p1, Lcom/google/firebase/messaging/a$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    :goto_2
    return v0
.end method
