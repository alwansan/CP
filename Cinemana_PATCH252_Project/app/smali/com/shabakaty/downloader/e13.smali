.class public Lcom/shabakaty/downloader/e13;
.super Ljava/lang/Object;
.source "NotificationSummaryManager.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/p73;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    const-string v0, "android_notification_id"

    const-string v4, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 1"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "notification"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/q73;

    invoke-virtual/range {v1 .. v8}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v9

    .line 6
    :cond_1
    :try_start_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v9

    move-object v9, p0

    move-object p0, v10

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, p0

    move-object p0, v9

    :goto_0
    const/4 v1, 0x3

    .line 10
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting android notification id for summary notification group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_2

    .line 11
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, p0

    :cond_3
    :goto_1
    return-object v9

    :catchall_2
    move-exception p0

    if-eqz v9, :cond_4

    .line 13
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_4
    throw p0
.end method

.method public static b(Landroid/content/Context;Lcom/shabakaty/downloader/p73;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "android_notification_id"

    const-string v3, "created_time"

    .line 1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v8, v12

    move-object/from16 v13, p1

    check-cast v13, Lcom/shabakaty/downloader/q73;

    const-string v5, "notification"

    const-string v7, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "_id DESC"

    move-object v4, v13

    invoke-virtual/range {v4 .. v11}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4
    invoke-static {v13, v1}, Lcom/shabakaty/downloader/e13;->a(Lcom/shabakaty/downloader/p73;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    const-string v3, "notification"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_1

    const-string v5, "dismissed"

    goto :goto_0

    :cond_1
    const-string v5, "opened"

    .line 8
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_notification_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v3, v0, v1, v6}, Lcom/shabakaty/downloader/q73;->r(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v4

    :cond_2
    if-ne v5, v2, :cond_6

    .line 10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-static {v13, v1}, Lcom/shabakaty/downloader/e13;->a(Lcom/shabakaty/downloader/p73;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v4

    .line 12
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v13

    new-array v3, v2, [Ljava/lang/String;

    aput-object v1, v3, v12

    :try_start_0
    const-string v14, "notification"

    .line 13
    sget-object v15, Lcom/onesignal/OSNotificationRestoreWorkManager;->a:[Ljava/lang/String;

    const-string v16, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v3

    invoke-virtual/range {v13 .. v20}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 14
    invoke-static {v0, v6, v12, v2}, Lcom/onesignal/OSNotificationRestoreWorkManager;->b(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x3

    :try_start_1
    const-string v2, "Error restoring notification records! "

    .line 16
    invoke-static {v1, v2, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_4

    .line 17
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v4

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    .line 19
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_5
    throw v0

    .line 22
    :cond_6
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 24
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-static {v13, v1}, Lcom/shabakaty/downloader/e13;->a(Lcom/shabakaty/downloader/p73;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_7

    return-object v4

    .line 26
    :cond_7
    new-instance v5, Lcom/shabakaty/downloader/h33;

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/h33;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, v5, Lcom/shabakaty/downloader/h33;->e:Z

    .line 28
    iput-object v3, v5, Lcom/shabakaty/downloader/h33;->f:Ljava/lang/Long;

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "grp"

    .line 30
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iput-object v0, v5, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/np1;->a:Ljava/lang/Class;

    .line 33
    iget-object v0, v5, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Lcom/shabakaty/downloader/np1;->t(Landroid/content/Context;)V

    .line 35
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/np1;->e(Lcom/shabakaty/downloader/h33;Lcom/shabakaty/downloader/np1$b;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v4
.end method

.method public static c(Landroid/content/Context;Lcom/shabakaty/downloader/p73;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/e13;->b(Landroid/content/Context;Lcom/shabakaty/downloader/p73;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x3

    :try_start_1
    const-string p2, "Error running updateSummaryNotificationAfterChildRemoved!"

    .line 4
    invoke-static {p1, p2, p0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 5
    throw p0
.end method
