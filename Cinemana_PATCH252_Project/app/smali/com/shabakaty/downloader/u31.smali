.class public Lcom/shabakaty/downloader/u31;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public final r:Lcom/shabakaty/downloader/l75;

.field public final s:Lcom/shabakaty/downloader/z73;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/u31;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/l75;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/z73;

    invoke-direct {p1}, Lcom/shabakaty/downloader/z73;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u31;->s:Lcom/shabakaty/downloader/z73;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/l75;)Z
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/l75;->g:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/l75;

    .line 3
    iget-boolean v6, v5, Lcom/shabakaty/downloader/l75;->h:Z

    if-nez v6, :cond_0

    .line 4
    invoke-static {v5}, Lcom/shabakaty/downloader/u31;->a(Lcom/shabakaty/downloader/l75;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/u31;->t:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/Object;

    .line 6
    iget-object v5, v5, Lcom/shabakaty/downloader/l75;->e:Ljava/util/List;

    const-string v9, ", "

    .line 7
    invoke-static {v9, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    const-string v5, "Already enqueued work ids (%s)."

    .line 8
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v7, v5, v8}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 9
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/l75;->f(Lcom/shabakaty/downloader/l75;)Ljava/util/Set;

    move-result-object v1

    .line 10
    iget-object v5, v0, Lcom/shabakaty/downloader/l75;->a:Lcom/shabakaty/downloader/r75;

    .line 11
    iget-object v6, v0, Lcom/shabakaty/downloader/l75;->d:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/String;

    .line 12
    invoke-interface {v1, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 13
    iget-object v7, v0, Lcom/shabakaty/downloader/l75;->b:Ljava/lang/String;

    .line 14
    iget v8, v0, Lcom/shabakaty/downloader/l75;->c:I

    .line 15
    sget-object v9, Landroidx/work/d;->r:Landroidx/work/d;

    sget-object v11, Landroidx/work/d;->t:Landroidx/work/d;

    sget-object v12, Landroidx/work/d;->w:Landroidx/work/d;

    sget-object v13, Landroidx/work/d;->u:Landroidx/work/d;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 17
    iget-object v10, v5, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_3

    .line 18
    array-length v3, v1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_8

    .line 19
    array-length v2, v1

    move/from16 v17, v4

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_2
    if-ge v4, v2, :cond_9

    move/from16 v21, v2

    aget-object v2, v1, v4

    .line 20
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f85;->i(Ljava/lang/String;)Lcom/shabakaty/downloader/d85;

    move-result-object v0

    if-nez v0, :cond_4

    .line 21
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/u31;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v2, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 22
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v1, v2, v4}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 24
    :cond_4
    iget-object v0, v0, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    if-ne v0, v11, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    and-int v20, v20, v2

    if-ne v0, v13, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v12, :cond_7

    const/16 v18, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v21

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 25
    :cond_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_a

    if-nez v3, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_1c

    .line 26
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/f85;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x3

    if-eq v8, v4, :cond_10

    const/4 v4, 0x4

    if-ne v8, v4, :cond_b

    goto :goto_9

    :cond_b
    const/4 v4, 0x2

    if-ne v8, v4, :cond_e

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/d85$a;

    .line 29
    iget-object v8, v8, Lcom/shabakaty/downloader/d85$a;->b:Landroidx/work/d;

    if-eq v8, v9, :cond_d

    sget-object v11, Landroidx/work/d;->s:Landroidx/work/d;

    if-ne v8, v11, :cond_c

    :cond_d
    :goto_6
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    goto/16 :goto_1c

    .line 30
    :cond_e
    new-instance v4, Lcom/shabakaty/downloader/av;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v8}, Lcom/shabakaty/downloader/av;-><init>(Lcom/shabakaty/downloader/r75;Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bv;->run()V

    .line 32
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v4

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/d85$a;

    .line 34
    iget-object v8, v8, Lcom/shabakaty/downloader/d85$a;->a:Ljava/lang/String;

    move-object v11, v4

    check-cast v11, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/f85;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    move/from16 v21, v0

    move-object/from16 v25, v5

    move-object/from16 v23, v9

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_12

    .line 35
    :cond_10
    :goto_9
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->p()Lcom/shabakaty/downloader/iq0;

    move-result-object v3

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    check-cast v2, Lcom/shabakaty/downloader/d85$a;

    move/from16 v21, v0

    .line 38
    iget-object v0, v2, Lcom/shabakaty/downloader/d85$a;->a:Ljava/lang/String;

    move-object/from16 v23, v9

    move-object v9, v3

    check-cast v9, Lcom/shabakaty/downloader/jq0;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v3

    const-string v3, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v25, v5

    const/4 v5, 0x1

    .line 39
    invoke-static {v3, v5}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v3

    if-nez v0, :cond_11

    .line 40
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_b

    .line 41
    :cond_11
    invoke-virtual {v3, v5, v0}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 42
    :goto_b
    iget-object v0, v9, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 43
    iget-object v0, v9, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v3, v9, v5}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 44
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_c

    :cond_12
    const/4 v0, 0x0

    .line 46
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 47
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yt3;->c()V

    if-nez v0, :cond_16

    .line 48
    iget-object v0, v2, Lcom/shabakaty/downloader/d85$a;->b:Landroidx/work/d;

    if-ne v0, v11, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    :goto_d
    and-int v3, v20, v3

    if-ne v0, v13, :cond_14

    const/16 v19, 0x1

    goto :goto_e

    :cond_14
    if-ne v0, v12, :cond_15

    const/16 v18, 0x1

    .line 49
    :cond_15
    :goto_e
    iget-object v0, v2, Lcom/shabakaty/downloader/d85$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v20, v3

    :cond_16
    move/from16 v0, v21

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 50
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v3}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 52
    throw v0

    :cond_17
    move/from16 v21, v0

    move-object/from16 v25, v5

    move-object/from16 v23, v9

    const/4 v0, 0x4

    const/4 v9, 0x0

    if-ne v8, v0, :cond_1a

    if-nez v18, :cond_18

    if-eqz v19, :cond_1a

    .line 53
    :cond_18
    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v0

    .line 54
    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/f85;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/d85$a;

    .line 56
    iget-object v3, v3, Lcom/shabakaty/downloader/d85$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/f85;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 57
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v19, 0x0

    goto :goto_10

    :cond_1a
    move/from16 v3, v18

    .line 58
    :goto_10
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 59
    array-length v0, v1

    move/from16 v18, v3

    if-lez v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_11

    :cond_1b
    const/4 v3, 0x0

    goto :goto_11

    :cond_1c
    move/from16 v21, v0

    move-object/from16 v25, v5

    move-object/from16 v23, v9

    const/4 v9, 0x0

    :goto_11
    const/4 v0, 0x0

    .line 60
    :goto_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/a85;

    .line 61
    iget-object v5, v4, Lcom/shabakaty/downloader/a85;->b:Lcom/shabakaty/downloader/d85;

    if-eqz v3, :cond_1f

    if-nez v20, :cond_1f

    if-eqz v19, :cond_1d

    .line 62
    iput-object v13, v5, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    goto :goto_14

    :cond_1d
    if-eqz v18, :cond_1e

    .line 63
    iput-object v12, v5, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    goto :goto_14

    .line 64
    :cond_1e
    sget-object v6, Landroidx/work/d;->v:Landroidx/work/d;

    iput-object v6, v5, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    goto :goto_14

    .line 65
    :cond_1f
    invoke-virtual {v5}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result v6

    if-nez v6, :cond_20

    .line 66
    iput-wide v14, v5, Lcom/shabakaty/downloader/d85;->n:J

    :goto_14
    move-object v6, v10

    goto :goto_15

    :cond_20
    move-object v6, v10

    const-wide/16 v9, 0x0

    .line 67
    iput-wide v9, v5, Lcom/shabakaty/downloader/d85;->n:J

    .line 68
    :goto_15
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_21

    const/16 v9, 0x19

    if-gt v8, v9, :cond_21

    .line 69
    invoke-static {v5}, Lcom/shabakaty/downloader/u31;->b(Lcom/shabakaty/downloader/d85;)V

    goto :goto_17

    :cond_21
    const/16 v9, 0x16

    if-gt v8, v9, :cond_24

    const-string v8, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 70
    :try_start_1
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, v25

    .line 71
    :try_start_2
    iget-object v10, v9, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 72
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_22
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/downloader/xx3;

    .line 73
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v11, :cond_22

    const/4 v8, 0x1

    goto :goto_16

    :catch_0
    move-object/from16 v9, v25

    :catch_1
    :cond_23
    const/4 v8, 0x0

    :goto_16
    if-eqz v8, :cond_25

    .line 74
    invoke-static {v5}, Lcom/shabakaty/downloader/u31;->b(Lcom/shabakaty/downloader/d85;)V

    goto :goto_18

    :cond_24
    :goto_17
    move-object/from16 v9, v25

    .line 75
    :cond_25
    :goto_18
    iget-object v8, v5, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    move-object/from16 v10, v23

    if-ne v8, v10, :cond_26

    const/4 v0, 0x1

    .line 76
    :cond_26
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/f85;

    .line 77
    iget-object v11, v8, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 78
    iget-object v11, v8, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 79
    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 80
    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 81
    :try_start_3
    iget-object v11, v8, Lcom/shabakaty/downloader/f85;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v11, v5}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 82
    iget-object v5, v8, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 83
    iget-object v5, v8, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 84
    invoke-virtual {v5}, Lcom/shabakaty/downloader/vt3;->j()V

    if-eqz v3, :cond_27

    .line 85
    array-length v5, v1

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v5, :cond_27

    aget-object v11, v1, v8

    move/from16 v16, v0

    .line 86
    new-instance v0, Lcom/shabakaty/downloader/dq0;

    move-object/from16 v22, v1

    invoke-virtual {v4}, Lcom/shabakaty/downloader/a85;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/shabakaty/downloader/dq0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->p()Lcom/shabakaty/downloader/iq0;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/jq0;

    .line 88
    iget-object v11, v1, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 89
    iget-object v11, v1, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    .line 90
    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 91
    invoke-virtual {v11}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 92
    :try_start_4
    iget-object v11, v1, Lcom/shabakaty/downloader/jq0;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v11, v0}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 93
    iget-object v0, v1, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 94
    iget-object v0, v1, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    .line 95
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    move-object/from16 v1, v22

    goto :goto_19

    :catchall_1
    move-exception v0

    .line 96
    iget-object v1, v1, Lcom/shabakaty/downloader/jq0;->a:Lcom/shabakaty/downloader/vt3;

    .line 97
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 98
    throw v0

    :cond_27
    move/from16 v16, v0

    move-object/from16 v22, v1

    .line 99
    iget-object v0, v4, Lcom/shabakaty/downloader/a85;->c:Ljava/util/Set;

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->v()Lcom/shabakaty/downloader/h85;

    move-result-object v5

    new-instance v8, Lcom/shabakaty/downloader/g85;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/a85;->a()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v1, v11}, Lcom/shabakaty/downloader/g85;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lcom/shabakaty/downloader/i85;

    .line 102
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 103
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->a:Lcom/shabakaty/downloader/vt3;

    .line 104
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 105
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 106
    :try_start_5
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 107
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 108
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->a:Lcom/shabakaty/downloader/vt3;

    .line 109
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    goto :goto_1a

    :catchall_2
    move-exception v0

    .line 110
    iget-object v1, v5, Lcom/shabakaty/downloader/i85;->a:Lcom/shabakaty/downloader/vt3;

    .line 111
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 112
    throw v0

    :cond_28
    if-eqz v21, :cond_29

    .line 113
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->s()Lcom/shabakaty/downloader/u75;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/t75;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/a85;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v7, v4}, Lcom/shabakaty/downloader/t75;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/v75;

    .line 114
    iget-object v0, v4, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 115
    iget-object v0, v4, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    .line 116
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 117
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 118
    :try_start_6
    iget-object v0, v4, Lcom/shabakaty/downloader/v75;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 119
    iget-object v0, v4, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 120
    iget-object v0, v4, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    .line 121
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    goto :goto_1b

    :catchall_3
    move-exception v0

    .line 122
    iget-object v1, v4, Lcom/shabakaty/downloader/v75;->a:Lcom/shabakaty/downloader/vt3;

    .line 123
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 124
    throw v0

    :cond_29
    :goto_1b
    move-object/from16 v25, v9

    move-object/from16 v23, v10

    move/from16 v0, v16

    move-object/from16 v1, v22

    const/4 v9, 0x0

    move-object v10, v6

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    .line 125
    iget-object v1, v8, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    .line 126
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 127
    throw v0

    :cond_2a
    const/4 v1, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 128
    :goto_1c
    iput-boolean v1, v0, Lcom/shabakaty/downloader/l75;->h:Z

    or-int v0, v17, v3

    return v0
.end method

.method public static b(Lcom/shabakaty/downloader/d85;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/gc0;->d:Z

    if-nez v1, :cond_0

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/gc0;->e:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    .line 7
    iget-object v2, v2, Landroidx/work/b;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroidx/work/b$a;->b(Ljava/util/Map;)Landroidx/work/b$a;

    .line 8
    iget-object v2, v1, Landroidx/work/b$a;->a:Ljava/util/Map;

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/l75;->e(Lcom/shabakaty/downloader/l75;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/l75;->a:Lcom/shabakaty/downloader/r75;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    invoke-static {v2}, Lcom/shabakaty/downloader/u31;->a(Lcom/shabakaty/downloader/l75;)Z

    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    if-eqz v2, :cond_0

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    .line 12
    iget-object v0, v0, Lcom/shabakaty/downloader/l75;->a:Lcom/shabakaty/downloader/r75;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->a:Landroid/content/Context;

    .line 14
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/p93;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/l75;->a:Lcom/shabakaty/downloader/r75;

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/r75;->b:Lcom/shabakaty/downloader/y90;

    .line 18
    iget-object v2, v0, Lcom/shabakaty/downloader/r75;->c:Landroidx/work/impl/WorkDatabase;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/r75;->e:Ljava/util/List;

    .line 20
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u31;->s:Lcom/shabakaty/downloader/z73;

    sget-object v1, Lcom/shabakaty/downloader/x73;->a:Lcom/shabakaty/downloader/x73$b$c;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/z73;->a(Lcom/shabakaty/downloader/x73$b;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 23
    throw v1

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shabakaty/downloader/u31;->r:Lcom/shabakaty/downloader/l75;

    aput-object v4, v1, v3

    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/u31;->s:Lcom/shabakaty/downloader/z73;

    new-instance v2, Lcom/shabakaty/downloader/x73$b$a;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/x73$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/z73;->a(Lcom/shabakaty/downloader/x73$b;)V

    :goto_0
    return-void
.end method
