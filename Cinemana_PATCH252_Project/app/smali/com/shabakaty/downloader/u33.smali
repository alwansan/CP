.class public abstract Lcom/shabakaty/downloader/u33;
.super Ljava/lang/Object;
.source "OSOutcomeEventsRepository.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t33;


# instance fields
.field public final a:Lcom/shabakaty/downloader/b33;

.field public final b:Lcom/shabakaty/downloader/tk1;

.field public final c:Lcom/shabakaty/downloader/p83;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/p83;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    iput-object p2, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    iput-object p3, p0, Lcom/shabakaty/downloader/u33;->c:Lcom/shabakaty/downloader/p83;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/v23;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "influences"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    monitor-enter v3

    :try_start_0
    const-string v4, "name"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "influences"

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    .line 4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/v23;

    .line 5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v8, v6, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_2

    .line 8
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 9
    iget-object v13, v6, Lcom/shabakaty/downloader/v23;->b:Lcom/shabakaty/downloader/w23;

    new-array v15, v10, [Ljava/lang/String;

    const-string v17, "channel_influence_id = ? AND channel_type = ? AND name = ?"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    aput-object v12, v14, v10

    .line 10
    iget-object v13, v13, Lcom/shabakaty/downloader/w23;->r:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v13, v14, v16

    const/4 v13, 0x2

    aput-object v0, v14, v13

    .line 11
    iget-object v13, v3, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v13, Lcom/shabakaty/downloader/p73;

    const-string v16, "cached_unique_outcome"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "1"

    check-cast v13, Lcom/shabakaty/downloader/q73;

    move-object/from16 v18, v14

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v13

    invoke-virtual/range {v14 .. v22}, Lcom/shabakaty/downloader/q73;->k(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v13, "cursor"

    .line 12
    invoke-static {v5, v13}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 14
    new-instance v8, Lcom/shabakaty/downloader/v23;

    .line 15
    iget-object v9, v6, Lcom/shabakaty/downloader/v23;->b:Lcom/shabakaty/downloader/w23;

    .line 16
    iget-object v10, v6, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 17
    iget-object v6, v6, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 18
    invoke-direct {v8, v9, v10, v6}, Lcom/shabakaty/downloader/v23;-><init>(Lcom/shabakaty/downloader/w23;Lcom/shabakaty/downloader/z23;Lorg/json/JSONArray;)V

    .line 19
    iput-object v7, v8, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 20
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 21
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 22
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 23
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 24
    :cond_4
    monitor-exit v3

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal getNotCachedUniqueOutcome influences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-object v4

    :goto_3
    if-eqz v5, :cond_5

    .line 26
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/n33;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v8, v1, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    sget-object v9, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    monitor-enter v8

    .line 3
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v11, 0x0

    .line 4
    :try_start_1
    iget-object v0, v8, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/p73;

    const-string v13, "outcome"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v0

    check-cast v12, Lcom/shabakaty/downloader/q73;

    invoke-virtual/range {v12 .. v19}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    const-string v0, "notification_influence_type"

    .line 6
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/z23;->values()[Lcom/shabakaty/downloader/z23;

    move-result-object v3

    array-length v4, v3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v11

    :goto_0
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v9

    :goto_1
    const-string v0, "iam_influence_type"

    .line 8
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/z23;->values()[Lcom/shabakaty/downloader/z23;

    move-result-object v3

    array-length v4, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v2}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_5
    move-object v6, v11

    :goto_2
    if-eqz v6, :cond_6

    move-object v3, v6

    goto :goto_3

    :cond_6
    move-object v3, v9

    :goto_3
    const-string v0, "notification_ids"

    .line 10
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "[]"

    :goto_4
    const-string v2, "iam_ids"

    .line 11
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    const-string v2, "[]"

    :goto_5
    move-object v6, v2

    const-string v2, "name"

    .line 12
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "weight"

    .line 13
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v16

    const-string v2, "timestamp"

    .line 14
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x3

    .line 15
    :try_start_3
    new-instance v4, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v4, v11, v11, v15}, Lcom/shabakaty/downloader/ag6;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;I)V

    .line 16
    new-instance v7, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v7, v11, v11, v15}, Lcom/shabakaty/downloader/ag6;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;I)V

    .line 17
    invoke-virtual {v8, v5, v4, v7, v0}, Lcom/shabakaty/downloader/tk1;->s(Lcom/shabakaty/downloader/z23;Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;Ljava/lang/String;)Lcom/shabakaty/downloader/z33;

    move-result-object v0

    move-object v2, v8

    move-object v5, v7

    move-object v7, v0

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/tk1;->p(Lcom/shabakaty/downloader/z23;Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;Ljava/lang/String;Lcom/shabakaty/downloader/z33;)Lcom/shabakaty/downloader/z33;

    if-eqz v0, :cond_9

    goto :goto_6

    .line 19
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/z33;

    invoke-direct {v0, v11, v11}, Lcom/shabakaty/downloader/z33;-><init>(Lcom/shabakaty/downloader/ag6;Lcom/shabakaty/downloader/ag6;)V

    .line 20
    :goto_6
    new-instance v2, Lcom/shabakaty/downloader/n33;

    const-string v3, "name"

    invoke-static {v14, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v2

    const/4 v3, 0x3

    move-object v15, v0

    :try_start_4
    invoke-direct/range {v13 .. v18}, Lcom/shabakaty/downloader/n33;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z33;FJ)V

    .line 21
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v3, 0x3

    .line 22
    :goto_7
    :try_start_5
    iget-object v2, v8, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/b33;

    const-string v4, "Generating JSONArray from notifications ids outcome:JSON Failed."

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v3, v4, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_0

    .line 25
    :cond_a
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 26
    :cond_b
    monitor-exit v8

    return-object v10

    :catchall_0
    move-exception v0

    move-object v11, v12

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v11, :cond_c

    .line 27
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_c
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public c(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unattributedUniqueOutcomeEvents"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal save unattributedUniqueOutcomeEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xl2;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    .line 8
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/n33;)V
    .locals 7

    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "eventParams"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal saveUniqueOutcomeEventParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/n33;->a:Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7
    iget-object v4, p1, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 9
    :goto_1
    invoke-virtual {v0, v2, v4}, Lcom/shabakaty/downloader/tk1;->c(Ljava/util/List;Lcom/shabakaty/downloader/ag6;)V

    .line 10
    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/tk1;->c(Ljava/util/List;Lcom/shabakaty/downloader/ag6;)V

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/b23;

    .line 12
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "channel_influence_id"

    .line 13
    iget-object v6, v2, Lcom/shabakaty/downloader/b23;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "channel_type"

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/b23;->b:Lcom/shabakaty/downloader/w23;

    .line 16
    iget-object v2, v2, Lcom/shabakaty/downloader/w23;->r:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 18
    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/p73;

    const-string v5, "cached_unique_outcome"

    check-cast v2, Lcom/shabakaty/downloader/q73;

    invoke-virtual {v2, v5, v3, v4}, Lcom/shabakaty/downloader/q73;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 20
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT EXISTS(SELECT NULL FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " n "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WHERE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " n."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "channel_influence_id"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "channel_type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "notification"

    .line 6
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/p73;

    const-string v1, "cached_unique_outcome"

    const/4 v2, 0x0

    check-cast p2, Lcom/shabakaty/downloader/q73;

    invoke-virtual {p2, v1, p1, v2}, Lcom/shabakaty/downloader/q73;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public g(Lcom/shabakaty/downloader/n33;)V
    .locals 8

    const-string v0, "outcomeEvent"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "event"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/p73;

    const-string v2, "outcome"

    const-string v3, "timestamp = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 4
    iget-wide v6, p1, Lcom/shabakaty/downloader/n33;->d:J

    .line 5
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    check-cast v1, Lcom/shabakaty/downloader/q73;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/q73;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public h()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/s73;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal getUnattributedUniqueOutcomeEventsSentByChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/n33;)V
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u33;->b:Lcom/shabakaty/downloader/tk1;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    sget-object v2, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    monitor-enter v0

    :try_start_0
    const-string v3, "eventParams"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 4
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 5
    sget-object v5, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    .line 6
    iget-object v6, p1, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, v6, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    if-eqz v6, :cond_2

    .line 8
    iget-object v7, v6, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v7, Lorg/json/JSONArray;

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    move-object v3, v7

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 10
    :goto_0
    iget-object v6, v6, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v7, v5

    .line 12
    :cond_3
    :goto_2
    iget-object v2, p1, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    if-eqz v2, :cond_6

    .line 13
    iget-object v2, v2, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    if-eqz v2, :cond_6

    .line 14
    iget-object v6, v2, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    move-object v7, v1

    move-object v3, v6

    .line 16
    :cond_4
    iget-object v2, v2, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    move-object v4, v2

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_3
    move-object v5, v1

    .line 18
    :cond_6
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "notification_ids"

    .line 19
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iam_ids"

    .line 20
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notification_influence_type"

    .line 21
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iam_influence_type"

    .line 22
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 23
    iget-object v3, p1, Lcom/shabakaty/downloader/n33;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "weight"

    .line 25
    iget v3, p1, Lcom/shabakaty/downloader/n33;->c:F

    .line 26
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v2, "timestamp"

    .line 27
    iget-wide v3, p1, Lcom/shabakaty/downloader/n33;->d:J

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    iget-object p1, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/p73;

    const-string v2, "outcome"

    const/4 v3, 0x0

    check-cast p1, Lcom/shabakaty/downloader/q73;

    invoke-virtual {p1, v2, v3, v1}, Lcom/shabakaty/downloader/q73;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    .line 31
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
