.class public Lcom/shabakaty/downloader/r75;
.super Lcom/shabakaty/downloader/q75;
.source "WorkManagerImpl.java"


# static fields
.field public static final k:Ljava/lang/String;

.field public static l:Lcom/shabakaty/downloader/r75;

.field public static m:Lcom/shabakaty/downloader/r75;

.field public static final n:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/shabakaty/downloader/y90;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Lcom/shabakaty/downloader/bl4;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xx3;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/shabakaty/downloader/fg3;

.field public g:Lcom/shabakaty/downloader/ef3;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public volatile j:Lcom/shabakaty/downloader/hr3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/r75;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/r75;->l:Lcom/shabakaty/downloader/r75;

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/r75;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/y90;Lcom/shabakaty/downloader/bl4;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    move-object v3, v9

    check-cast v3, Lcom/shabakaty/downloader/s75;

    .line 4
    iget-object v3, v3, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    .line 5
    sget v4, Landroidx/work/impl/WorkDatabase;->o:I

    .line 6
    const-class v4, Landroidx/work/impl/WorkDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/vt3$a;

    invoke-direct {v0, v2, v4, v5}, Lcom/shabakaty/downloader/vt3$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-boolean v6, v0, Lcom/shabakaty/downloader/vt3$a;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/o75;->a:Ljava/lang/String;

    const-string v0, "androidx.work.workdb"

    .line 10
    invoke-static {v2, v4, v0}, Lcom/shabakaty/downloader/ut3;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/vt3$a;

    move-result-object v0

    .line 11
    new-instance v4, Lcom/shabakaty/downloader/m75;

    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/m75;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v4, v0, Lcom/shabakaty/downloader/vt3$a;->g:Lcom/shabakaty/downloader/zh4$c;

    .line 13
    :goto_0
    iput-object v3, v0, Lcom/shabakaty/downloader/vt3$a;->e:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/n75;

    invoke-direct {v3}, Lcom/shabakaty/downloader/n75;-><init>()V

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/vt3$a;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/shabakaty/downloader/vt3$a;->d:Ljava/util/ArrayList;

    .line 17
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/vt3$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    .line 18
    sget-object v4, Landroidx/work/impl/a;->a:Lcom/shabakaty/downloader/ht2;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    .line 19
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    new-instance v4, Landroidx/work/impl/a$g;

    const/4 v7, 0x3

    const/4 v11, 0x2

    invoke-direct {v4, v2, v11, v7}, Landroidx/work/impl/a$g;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v10

    .line 20
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    sget-object v4, Landroidx/work/impl/a;->b:Lcom/shabakaty/downloader/ht2;

    aput-object v4, v3, v10

    .line 21
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    sget-object v4, Landroidx/work/impl/a;->c:Lcom/shabakaty/downloader/ht2;

    aput-object v4, v3, v10

    .line 22
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    new-instance v4, Landroidx/work/impl/a$g;

    const/4 v7, 0x5

    const/4 v12, 0x6

    invoke-direct {v4, v2, v7, v12}, Landroidx/work/impl/a$g;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v10

    .line 23
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    sget-object v4, Landroidx/work/impl/a;->d:Lcom/shabakaty/downloader/ht2;

    aput-object v4, v3, v10

    .line 24
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    sget-object v4, Landroidx/work/impl/a;->e:Lcom/shabakaty/downloader/ht2;

    aput-object v4, v3, v10

    .line 25
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    sget-object v4, Landroidx/work/impl/a;->f:Lcom/shabakaty/downloader/ht2;

    aput-object v4, v3, v10

    .line 26
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    new-instance v4, Landroidx/work/impl/a$h;

    invoke-direct {v4, v2}, Landroidx/work/impl/a$h;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v10

    .line 27
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    new-array v3, v6, [Lcom/shabakaty/downloader/ht2;

    new-instance v4, Landroidx/work/impl/a$g;

    const/16 v7, 0xa

    const/16 v12, 0xb

    invoke-direct {v4, v2, v7, v12}, Landroidx/work/impl/a$g;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v10

    .line 28
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/vt3$a;->a([Lcom/shabakaty/downloader/ht2;)Lcom/shabakaty/downloader/vt3$a;

    .line 29
    iput-boolean v10, v0, Lcom/shabakaty/downloader/vt3$a;->i:Z

    .line 30
    iput-boolean v6, v0, Lcom/shabakaty/downloader/vt3$a;->j:Z

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3$a;->b()Lcom/shabakaty/downloader/vt3;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/work/impl/WorkDatabase;

    .line 32
    invoke-direct {p0}, Lcom/shabakaty/downloader/q75;-><init>()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 34
    new-instance v0, Lcom/shabakaty/downloader/ok2$a;

    .line 35
    iget v3, v8, Lcom/shabakaty/downloader/y90;->f:I

    .line 36
    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/ok2$a;-><init>(I)V

    .line 37
    const-class v3, Lcom/shabakaty/downloader/ok2;

    monitor-enter v3

    .line 38
    :try_start_0
    sput-object v0, Lcom/shabakaty/downloader/ok2;->a:Lcom/shabakaty/downloader/ok2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    monitor-exit v3

    new-array v3, v11, [Lcom/shabakaty/downloader/xx3;

    .line 40
    sget-object v0, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_2

    .line 42
    new-instance v0, Lcom/shabakaty/downloader/dk4;

    invoke-direct {v0, v2, p0}, Lcom/shabakaty/downloader/dk4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/r75;)V

    .line 43
    const-class v4, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v2, v4, v6}, Lcom/shabakaty/downloader/p93;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 44
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Throwable;

    const-string v11, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v4, v5, v11, v7}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :try_start_1
    const-string v0, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 45
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Class;

    .line 46
    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v10

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xx3;

    .line 48
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v7, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    const-string v11, "Created %s"

    new-array v13, v6, [Ljava/lang/Object;

    const-string v14, "androidx.work.impl.background.gcm.GcmScheduler"

    aput-object v14, v13, v10

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v13, v10, [Ljava/lang/Throwable;

    invoke-virtual {v4, v7, v11, v13}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 49
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v7, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Throwable;

    aput-object v0, v11, v10

    const-string v0, "Unable to create GCM Scheduler"

    invoke-virtual {v4, v7, v0, v11}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    if-nez v5, :cond_3

    .line 50
    new-instance v0, Lcom/shabakaty/downloader/tj4;

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/tj4;-><init>(Landroid/content/Context;)V

    .line 51
    const-class v4, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-static {v2, v4, v6}, Lcom/shabakaty/downloader/p93;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 52
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/by3;->a:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Throwable;

    const-string v11, "Created SystemAlarmScheduler"

    invoke-virtual {v4, v5, v11, v7}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    aput-object v0, v3, v10

    .line 53
    new-instance v0, Lcom/shabakaty/downloader/zq1;

    invoke-direct {v0, v2, v8, v9, p0}, Lcom/shabakaty/downloader/zq1;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/y90;Lcom/shabakaty/downloader/bl4;Lcom/shabakaty/downloader/r75;)V

    aput-object v0, v3, v6

    .line 54
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v11, Lcom/shabakaty/downloader/fg3;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v12

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/fg3;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/y90;Lcom/shabakaty/downloader/bl4;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    iput-object v2, v1, Lcom/shabakaty/downloader/r75;->a:Landroid/content/Context;

    .line 58
    iput-object v8, v1, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 59
    iput-object v9, v1, Lcom/shabakaty/downloader/r75;->d:Lcom/shabakaty/downloader/bl4;

    .line 60
    iput-object v12, v1, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 61
    iput-object v0, v1, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 62
    iput-object v11, v1, Lcom/shabakaty/downloader/r75;->f:Lcom/shabakaty/downloader/fg3;

    .line 63
    new-instance v0, Lcom/shabakaty/downloader/ef3;

    invoke-direct {v0, v12}, Lcom/shabakaty/downloader/ef3;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, v1, Lcom/shabakaty/downloader/r75;->g:Lcom/shabakaty/downloader/ef3;

    .line 64
    iput-boolean v10, v1, Lcom/shabakaty/downloader/r75;->h:Z

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/shabakaty/downloader/r75;->d:Lcom/shabakaty/downloader/bl4;

    new-instance v3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v3, v2, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/r75;)V

    check-cast v0, Lcom/shabakaty/downloader/s75;

    .line 68
    iget-object v0, v0, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/x04;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 69
    monitor-exit v3

    throw v2
.end method

.method public static b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/r75;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/r75;->l:Lcom/shabakaty/downloader/r75;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Lcom/shabakaty/downloader/y90$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/y90$b;

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/y90$b;->a()Lcom/shabakaty/downloader/y90;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/r75;->c(Landroid/content/Context;Lcom/shabakaty/downloader/y90;)V

    .line 11
    invoke-static {p0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;Lcom/shabakaty/downloader/y90;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/r75;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/r75;->l:Lcom/shabakaty/downloader/r75;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/r75;

    new-instance v2, Lcom/shabakaty/downloader/s75;

    .line 7
    iget-object v3, p1, Lcom/shabakaty/downloader/y90;->b:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/s75;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/r75;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/y90;Lcom/shabakaty/downloader/bl4;)V

    sput-object v1, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    .line 9
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/r75;->m:Lcom/shabakaty/downloader/r75;

    sput-object p0, Lcom/shabakaty/downloader/r75;->l:Lcom/shabakaty/downloader/r75;

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r75;->a:Landroid/content/Context;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/dk4;->v:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/dk4;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 8
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dk4;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/f85;

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/f85;->i:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 16
    :try_start_0
    invoke-interface {v1}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v2, v0, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/f85;->i:Lcom/shabakaty/downloader/f54;

    .line 21
    iget-object v2, v0, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v1, v2, :cond_1

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 25
    iget-object v2, p0, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 26
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 27
    iget-object v3, v0, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 28
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 29
    iget-object v0, v0, Lcom/shabakaty/downloader/f85;->i:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 30
    throw v2
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r75;->d:Lcom/shabakaty/downloader/bl4;

    new-instance v1, Lcom/shabakaty/downloader/jd4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/jd4;-><init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;Z)V

    check-cast v0, Lcom/shabakaty/downloader/s75;

    .line 2
    iget-object p1, v0, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/x04;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "androidx.work.multiprocess.RemoteWorkManagerClient"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Lcom/shabakaty/downloader/r75;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/r75;->a:Landroid/content/Context;

    aput-object v4, v3, v0

    aput-object p0, v3, v1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/hr3;

    iput-object v2, p0, Lcom/shabakaty/downloader/r75;->j:Lcom/shabakaty/downloader/hr3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/r75;->k:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v2, v1, v0

    const-string v0, "Unable to initialize multi-process support"

    invoke-virtual {v3, v4, v0, v1}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
