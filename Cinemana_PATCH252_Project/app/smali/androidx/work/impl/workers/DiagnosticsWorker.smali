.class public Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "DiagnosticsWorker.java"


# static fields
.field public static final w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsWrkr"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/workers/DiagnosticsWorker;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/u75;Lcom/shabakaty/downloader/h85;Lcom/shabakaty/downloader/ak4;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/u75;",
            "Lcom/shabakaty/downloader/h85;",
            "Lcom/shabakaty/downloader/ak4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/d85;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const-string v1, "Job Id"

    goto :goto_0

    :cond_0
    const-string v1, "Alarm Id"

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t"

    .line 3
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/d85;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Lcom/shabakaty/downloader/bk4;

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/bk4;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/zj4;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 7
    iget v3, v3, Lcom/shabakaty/downloader/zj4;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v5

    .line 8
    :goto_2
    iget-object v6, v1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    move-object v7, p0

    check-cast v7, Lcom/shabakaty/downloader/v75;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 9
    invoke-static {v8, v2}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v8

    if-nez v6, :cond_2

    .line 10
    invoke-virtual {v8, v2}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v8, v2, v6}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 12
    :goto_3
    iget-object v6, v7, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 13
    iget-object v6, v7, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-static {v6, v8, v4, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 14
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 18
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 20
    iget-object v5, v1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lcom/shabakaty/downloader/i85;

    invoke-virtual {v7, v5}, Lcom/shabakaty/downloader/i85;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v7, ","

    .line 21
    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 23
    iget-object v8, v1, Lcom/shabakaty/downloader/d85;->a:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, v1, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    aput-object v8, v7, v2

    const/4 v8, 0x2

    aput-object v3, v7, v8

    iget-object v1, v1, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v7, v3

    const/4 v1, 0x4

    aput-object v6, v7, v1

    const/4 v1, 0x5

    aput-object v5, v7, v1

    const-string v1, "\n%s\t %s\t %s\t %s\t %s\t %s\t"

    .line 25
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    .line 27
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 29
    throw p0

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public g()Landroidx/work/ListenableWorker$a;
    .locals 37

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 4
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->s()Lcom/shabakaty/downloader/u75;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lcom/shabakaty/downloader/h85;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lcom/shabakaty/downloader/ak4;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 9
    move-object v7, v2

    check-cast v7, Lcom/shabakaty/downloader/f85;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v9, 0x1

    .line 10
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v9, v5, v6}, Lcom/shabakaty/downloader/yt3;->h0(IJ)V

    .line 12
    iget-object v5, v7, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 13
    iget-object v5, v7, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v8, v7, v6}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v6, "required_network_type"

    .line 14
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v10, "requires_charging"

    .line 15
    invoke-static {v5, v10}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "requires_device_idle"

    .line 16
    invoke-static {v5, v11}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "requires_battery_not_low"

    .line 17
    invoke-static {v5, v12}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "requires_storage_not_low"

    .line 18
    invoke-static {v5, v13}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "trigger_content_update_delay"

    .line 19
    invoke-static {v5, v14}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "trigger_max_content_delay"

    .line 20
    invoke-static {v5, v15}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v9, "content_uri_triggers"

    .line 21
    invoke-static {v5, v9}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v7, "id"

    .line 22
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v1, "state"

    .line 23
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v16, v0

    const-string v0, "worker_class_name"

    .line 24
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v3

    const-string v3, "input_merger_class_name"

    .line 25
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v18, v4

    const-string v4, "input"

    .line 26
    invoke-static {v5, v4}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v19, v2

    const-string v2, "output"

    .line 27
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v8

    :try_start_1
    const-string v8, "initial_delay"

    .line 28
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v21, v8

    const-string v8, "interval_duration"

    .line 29
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v22, v8

    const-string v8, "flex_duration"

    .line 30
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v23, v8

    const-string v8, "run_attempt_count"

    .line 31
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v24, v8

    const-string v8, "backoff_policy"

    .line 32
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v25, v8

    const-string v8, "backoff_delay_duration"

    .line 33
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v26, v8

    const-string v8, "period_start_time"

    .line 34
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v27, v8

    const-string v8, "minimum_retention_duration"

    .line 35
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v28, v8

    const-string v8, "schedule_requested_at"

    .line 36
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v29, v8

    const-string v8, "run_in_foreground"

    .line 37
    invoke-static {v5, v8}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move/from16 v30, v8

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v31, v2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 40
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v32, v7

    .line 41
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v33, v0

    .line 42
    new-instance v0, Lcom/shabakaty/downloader/gc0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/gc0;-><init>()V

    .line 43
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    move/from16 v35, v6

    .line 44
    invoke-static/range {v34 .. v34}, Lcom/shabakaty/downloader/k85;->c(I)Landroidx/work/c;

    move-result-object v6

    .line 45
    iput-object v6, v0, Lcom/shabakaty/downloader/gc0;->a:Landroidx/work/c;

    .line 46
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 47
    :goto_1
    iput-boolean v6, v0, Lcom/shabakaty/downloader/gc0;->b:Z

    .line 48
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 49
    :goto_2
    iput-boolean v6, v0, Lcom/shabakaty/downloader/gc0;->c:Z

    .line 50
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    .line 51
    :goto_3
    iput-boolean v6, v0, Lcom/shabakaty/downloader/gc0;->d:Z

    .line 52
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    .line 53
    :goto_4
    iput-boolean v6, v0, Lcom/shabakaty/downloader/gc0;->e:Z

    move v6, v10

    move/from16 v34, v11

    .line 54
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 55
    iput-wide v10, v0, Lcom/shabakaty/downloader/gc0;->f:J

    .line 56
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 57
    iput-wide v10, v0, Lcom/shabakaty/downloader/gc0;->g:J

    .line 58
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 59
    invoke-static {v10}, Lcom/shabakaty/downloader/k85;->a([B)Lcom/shabakaty/downloader/id0;

    move-result-object v10

    .line 60
    iput-object v10, v0, Lcom/shabakaty/downloader/gc0;->h:Lcom/shabakaty/downloader/id0;

    .line 61
    new-instance v10, Lcom/shabakaty/downloader/d85;

    invoke-direct {v10, v2, v7}, Lcom/shabakaty/downloader/d85;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 63
    invoke-static {v2}, Lcom/shabakaty/downloader/k85;->d(I)Landroidx/work/d;

    move-result-object v2

    iput-object v2, v10, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    .line 64
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    .line 65
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 66
    invoke-static {v2}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v2

    iput-object v2, v10, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    move/from16 v2, v31

    .line 67
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 68
    invoke-static {v7}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v7

    iput-object v7, v10, Lcom/shabakaty/downloader/d85;->f:Landroidx/work/b;

    move v11, v1

    move/from16 v31, v2

    move/from16 v7, v21

    .line 69
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/shabakaty/downloader/d85;->g:J

    move/from16 v21, v3

    move/from16 v1, v22

    .line 70
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/shabakaty/downloader/d85;->h:J

    move/from16 v22, v4

    move/from16 v2, v23

    .line 71
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/shabakaty/downloader/d85;->i:J

    move/from16 v3, v24

    .line 72
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/shabakaty/downloader/d85;->k:I

    move/from16 v4, v25

    .line 73
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v24, v1

    .line 74
    invoke-static/range {v23 .. v23}, Lcom/shabakaty/downloader/k85;->b(I)Landroidx/work/a;

    move-result-object v1

    iput-object v1, v10, Lcom/shabakaty/downloader/d85;->l:Landroidx/work/a;

    move/from16 v23, v2

    move/from16 v25, v3

    move/from16 v1, v26

    .line 75
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/shabakaty/downloader/d85;->m:J

    move/from16 v26, v4

    move/from16 v2, v27

    .line 76
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/shabakaty/downloader/d85;->n:J

    move v4, v1

    move/from16 v27, v2

    move/from16 v3, v28

    .line 77
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/shabakaty/downloader/d85;->o:J

    move/from16 v28, v3

    move/from16 v1, v29

    .line 78
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/shabakaty/downloader/d85;->p:J

    move/from16 v2, v30

    .line 79
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 80
    :goto_5
    iput-boolean v3, v10, Lcom/shabakaty/downloader/d85;->q:Z

    .line 81
    iput-object v0, v10, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 82
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v29, v1

    move/from16 v30, v2

    move v10, v6

    move v1, v11

    move/from16 v3, v21

    move/from16 v0, v33

    move/from16 v11, v34

    move/from16 v6, v35

    move/from16 v21, v7

    move/from16 v7, v32

    move/from16 v36, v26

    move/from16 v26, v4

    move/from16 v4, v22

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v36

    goto/16 :goto_0

    .line 83
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 84
    invoke-virtual/range {v20 .. v20}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 85
    move-object/from16 v2, v19

    check-cast v2, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/f85;->e()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc8

    .line 86
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/f85;->b(I)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 88
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorker;->w:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Throwable;

    const-string v6, "Recently completed work:\n\n"

    invoke-virtual {v2, v3, v6, v5}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 89
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    .line 90
    invoke-static {v5, v6, v7, v8}, Landroidx/work/impl/workers/DiagnosticsWorker;->h(Lcom/shabakaty/downloader/u75;Lcom/shabakaty/downloader/h85;Lcom/shabakaty/downloader/ak4;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Throwable;

    .line 91
    invoke-virtual {v2, v3, v8, v9}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v7, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    .line 92
    :goto_6
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 93
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/workers/DiagnosticsWorker;->w:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Throwable;

    const-string v9, "Running work:\n\n"

    invoke-virtual {v2, v3, v9, v8}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v2

    invoke-static {v5, v6, v7, v0}, Landroidx/work/impl/workers/DiagnosticsWorker;->h(Lcom/shabakaty/downloader/u75;Lcom/shabakaty/downloader/h85;Lcom/shabakaty/downloader/ak4;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-array v8, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v0, v8}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    :cond_7
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 96
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/workers/DiagnosticsWorker;->w:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Throwable;

    const-string v8, "Enqueued work:\n\n"

    invoke-virtual {v0, v2, v8, v3}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 97
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    .line 98
    invoke-static {v5, v6, v7, v1}, Landroidx/work/impl/workers/DiagnosticsWorker;->h(Lcom/shabakaty/downloader/u75;Lcom/shabakaty/downloader/h85;Lcom/shabakaty/downloader/ak4;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 99
    invoke-virtual {v0, v2, v1, v3}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 100
    :cond_8
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    .line 101
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-virtual/range {v20 .. v20}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 103
    throw v0
.end method
