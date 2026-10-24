.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "ForceStopRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field public static final u:Ljava/lang/String;

.field public static final v:J


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Lcom/shabakaty/downloader/r75;

.field public t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->v:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/r75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->t:I

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 2
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->v:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/16 v5, 0x17

    const/4 v6, 0x0

    if-lt v0, v5, :cond_7

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    iget-object v5, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    sget-object v7, Lcom/shabakaty/downloader/dk4;->v:Ljava/lang/String;

    const-string v7, "jobscheduler"

    .line 3
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobScheduler;

    .line 4
    invoke-static {v0, v7}, Lcom/shabakaty/downloader/dk4;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v8, v5, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->r()Lcom/shabakaty/downloader/ak4;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/bk4;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 7
    invoke-static {v9, v2}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v9

    .line 8
    iget-object v10, v8, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 9
    iget-object v8, v8, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-static {v8, v9, v2, v6}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 10
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 12
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v9}, Lcom/shabakaty/downloader/yt3;->c()V

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 17
    :goto_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v0, :cond_3

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobInfo;

    .line 20
    invoke-static {v8}, Lcom/shabakaty/downloader/dk4;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 22
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/dk4;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 25
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 26
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v7, Lcom/shabakaty/downloader/dk4;->v:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/Throwable;

    const-string v9, "Reconciling jobs"

    invoke-virtual {v0, v7, v9, v8}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 27
    iget-object v5, v5, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 28
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 29
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 30
    :try_start_1
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v7

    .line 31
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 32
    move-object v10, v7

    check-cast v10, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v10, v9, v3, v4}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    goto :goto_4

    .line 33
    :cond_6
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->j()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 35
    throw v0

    :catchall_1
    move-exception v0

    .line 36
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v9}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 38
    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 39
    :cond_8
    :goto_5
    iget-object v5, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 40
    iget-object v5, v5, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 41
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v7

    .line 42
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->t()Lcom/shabakaty/downloader/w75;

    move-result-object v8

    .line 43
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 44
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 45
    :try_start_2
    check-cast v7, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/f85;->e()Ljava/util/List;

    move-result-object v9

    .line 46
    move-object v10, v9

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v1

    if-eqz v10, :cond_9

    .line 47
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/d85;

    .line 48
    sget-object v12, Landroidx/work/d;->r:Landroidx/work/d;

    new-array v13, v1, [Ljava/lang/String;

    iget-object v14, v11, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    aput-object v14, v13, v2

    invoke-virtual {v7, v12, v13}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 49
    iget-object v11, v11, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    invoke-virtual {v7, v11, v3, v4}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    goto :goto_6

    .line 50
    :cond_9
    check-cast v8, Lcom/shabakaty/downloader/x75;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/x75;->b()V

    .line 51
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 52
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->j()V

    if-nez v10, :cond_b

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v0, 0x1

    .line 53
    :goto_8
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 54
    iget-object v3, v3, Lcom/shabakaty/downloader/r75;->g:Lcom/shabakaty/downloader/ef3;

    .line 55
    iget-object v3, v3, Lcom/shabakaty/downloader/ef3;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->q()Lcom/shabakaty/downloader/bf3;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/cf3;

    const-string v4, "reschedule_needed"

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/cf3;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 56
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v5, v3, v7

    if-nez v5, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_d

    .line 57
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v4, "Rescheduling Workers."

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/r75;->d()V

    .line 59
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 60
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->g:Lcom/shabakaty/downloader/ef3;

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v3, Lcom/shabakaty/downloader/af3;

    const-string v4, "reschedule_needed"

    invoke-direct {v3, v4, v2}, Lcom/shabakaty/downloader/af3;-><init>(Ljava/lang/String;Z)V

    .line 63
    iget-object v0, v0, Lcom/shabakaty/downloader/ef3;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lcom/shabakaty/downloader/bf3;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/cf3;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/cf3;->b(Lcom/shabakaty/downloader/af3;)V

    goto :goto_b

    .line 64
    :cond_d
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    const/high16 v4, 0x20000000

    invoke-static {v3, v4}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_e

    .line 65
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    invoke-static {v3}, Landroidx/work/impl/utils/ForceStopRunnable;->c(Landroid/content/Context;)V

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_f

    .line 66
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v4, "Application was force-stopped, rescheduling."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v2}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/r75;->d()V

    goto :goto_b

    :cond_f
    if-eqz v0, :cond_10

    .line 68
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v4, "Found unfinished work, scheduling it."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v2}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 70
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 71
    iget-object v3, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 72
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 73
    invoke-static {v2, v3, v0}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 74
    :cond_10
    :goto_b
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lcom/shabakaty/downloader/r75;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/r75;->h:Z

    .line 77
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_11

    .line 78
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 79
    iput-object v6, v0, Lcom/shabakaty/downloader/r75;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 80
    :cond_11
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 81
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 82
    throw v0
.end method

.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->j:Lcom/shabakaty/downloader/hr3;

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/r75;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->j:Lcom/shabakaty/downloader/hr3;

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/r75;->f()V

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->j:Lcom/shabakaty/downloader/hr3;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library"

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->j:Lcom/shabakaty/downloader/hr3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v4, "Found a remote implementation for WorkManager"

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 13
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 15
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/dg3;->a(Landroid/content/Context;Lcom/shabakaty/downloader/y90;)Z

    move-result v0

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    const-string v5, "Is default app process = %s"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v4, v3, v5, v6}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_2
    if-nez v0, :cond_4

    return-void

    .line 17
    :catch_0
    :cond_4
    :goto_3
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Landroid/content/Context;

    sget-object v3, Lcom/shabakaty/downloader/o75;->a:Ljava/lang/String;

    const-string v3, "androidx.work.workdb"

    .line 18
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v7, Lcom/shabakaty/downloader/o75;->a:Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/Throwable;

    const-string v9, "Migrating WorkDatabase to the no-backup directory"

    invoke-virtual {v4, v7, v9, v8}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-lt v5, v6, :cond_6

    .line 22
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-ge v5, v6, :cond_5

    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_4

    .line 24
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    .line 25
    :goto_4
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v3, Lcom/shabakaty/downloader/o75;->b:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_6

    aget-object v8, v3, v6

    .line 27
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 30
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 31
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v1

    const-string v7, "Over-writing contents of %s"

    .line 34
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v7

    sget-object v8, Lcom/shabakaty/downloader/o75;->a:Ljava/lang/String;

    new-array v9, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v6, v9}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    :cond_8
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_9

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v5, v6, v2

    const-string v3, "Migrated %s to %s"

    .line 37
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v5, v6, v2

    const-string v3, "Renaming %s to %s failed"

    .line 38
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    :goto_7
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/o75;->a:Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, v3, v7}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    .line 40
    :cond_a
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v4, "Performing cleanup operations."

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 41
    :try_start_1
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    .line 42
    :goto_8
    iget v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->t:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->t:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_b

    int-to-long v3, v3

    const-wide/16 v5, 0x12c

    mul-long v3, v3, v5

    .line 43
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v7

    sget-object v8, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    const-string v9, "Retrying after %s"

    new-array v10, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    invoke-virtual {v7, v8, v3, v4}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 45
    iget v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->t:I

    int-to-long v3, v0

    mul-long v3, v3, v5

    .line 46
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_b
    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 47
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->u:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v0, v2, v1

    invoke-virtual {v4, v5, v3, v2}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->s:Lcom/shabakaty/downloader/r75;

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    throw v1
.end method
