.class public Lcom/shabakaty/downloader/z03;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.java"


# direct methods
.method public static a(Landroid/app/Activity;Lorg/json/JSONObject;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/r23;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/onesignal/q0;->Z(Landroid/app/Activity;)Z

    .line 3
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onesignal/x;->q(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "onesignalData"

    .line 1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "summary"

    const-string v7, "androidNotificationId"

    if-nez v3, :cond_1

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    :cond_3
    const-string v3, "action_button"

    .line 3
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_4

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/x03;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/x03;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 6
    iget-object v3, v3, Lcom/shabakaty/downloader/x03;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 7
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const/4 v3, 0x3

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v15

    .line 9
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v13, "dismissed"

    .line 10
    invoke-virtual {v2, v13, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string v11, "NotificationOpenedProcessor processIntent from an non Activity context: "

    if-nez v12, :cond_a

    .line 11
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    instance-of v10, v1, Landroid/app/Activity;

    if-nez v10, :cond_5

    .line 13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-static {v3, v10, v8}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_5
    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v9}, Lcom/shabakaty/downloader/z03;->a(Landroid/app/Activity;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v24, v13

    move-object v11, v14

    move-object v5, v15

    move-object v13, v8

    goto/16 :goto_9

    .line 16
    :cond_6
    :goto_2
    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v9, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v9, v8

    .line 20
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v8

    :goto_4
    move-object v3, v9

    if-eqz v14, :cond_9

    const-string v10, "full_data"

    .line 21
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v16

    new-array v9, v4, [Ljava/lang/String;

    aput-object v14, v9, v5

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "notification"

    const-string v20, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0"

    move-object/from16 v21, v9

    move-object v9, v15

    move-object v8, v10

    move-object/from16 v10, v19

    move-object/from16 v22, v11

    move-object/from16 v11, v16

    move/from16 v23, v12

    move-object/from16 v12, v20

    move-object/from16 v24, v13

    move-object/from16 v13, v21

    move-object/from16 v25, v14

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    .line 22
    invoke-virtual/range {v9 .. v16}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 23
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-le v10, v4, :cond_8

    .line 24
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    :goto_5
    :try_start_2
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 26
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v11, v25

    const/4 v13, 0x0

    goto :goto_6

    .line 27
    :catch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse JSON of sub notification in group: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    const/4 v13, 0x0

    .line 28
    invoke-static {v12, v10, v13}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v25, v11

    goto :goto_5

    :cond_8
    move-object/from16 v11, v25

    const/4 v13, 0x0

    .line 30
    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_9
    move-object/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v24, v13

    move-object v11, v14

    move-object v5, v15

    move-object v13, v8

    .line 31
    :goto_8
    new-instance v8, Lcom/shabakaty/downloader/i33;

    invoke-direct {v8, v0, v3}, Lcom/shabakaty/downloader/i33;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    :goto_9
    if-nez v8, :cond_b

    goto/16 :goto_11

    :cond_a
    move-object/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v24, v13

    move-object v11, v14

    move-object v5, v15

    move-object v13, v8

    .line 32
    :cond_b
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OS_CLEAR_GROUP_SUMMARY_CLICK"

    const-string v6, "os_group_undefined"

    if-eqz v0, :cond_f

    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v9, "group_id IS NULL"

    move-object v10, v9

    move-object v9, v13

    goto :goto_a

    :cond_c
    new-array v9, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const-string v10, "group_id = ?"

    :goto_a
    move/from16 v12, v23

    if-nez v12, :cond_e

    .line 34
    sget-object v13, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v13, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    invoke-static {v13, v3, v4}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_e

    .line 36
    invoke-static {v5, v0, v7}, Lcom/shabakaty/downloader/r73;->b(Lcom/shabakaty/downloader/q73;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v13, " AND android_notification_id = ?"

    .line 37
    invoke-static {v10, v13}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_d

    new-array v7, v4, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    goto :goto_c

    :cond_d
    const/4 v7, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v0, v13, v7

    aput-object v9, v13, v4

    goto :goto_b

    :cond_e
    move-object v7, v9

    goto :goto_c

    :cond_f
    move/from16 v12, v23

    const/4 v9, 0x0

    const-string v10, "android_notification_id = "

    .line 38
    invoke-static {v10}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_b
    move-object v7, v13

    :goto_c
    const-string v9, "notification"

    if-eqz v0, :cond_12

    .line 39
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/e13;->a(Lcom/shabakaty/downloader/p73;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 41
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 42
    invoke-static {v5, v0, v6}, Lcom/shabakaty/downloader/r73;->b(Lcom/shabakaty/downloader/q73;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 43
    sget-object v15, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v15, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    invoke-static {v15, v3, v4}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v6, :cond_10

    const v0, -0x2ad2e222

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_10
    if-eqz v13, :cond_16

    .line 46
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_f

    .line 47
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/onesignal/q0;->O(I)V

    goto :goto_f

    .line 48
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_16

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/r73;->a(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 50
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_d
    if-ge v4, v3, :cond_15

    aget-object v14, v0, v4

    .line 51
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 52
    iget v15, v15, Landroid/app/Notification;->flags:I

    and-int/lit16 v15, v15, 0x200

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    goto :goto_e

    :cond_13
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_14

    .line 53
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    add-int/lit8 v13, v13, 0x1

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 54
    :cond_15
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ge v0, v4, :cond_16

    .line 56
    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v3, -0x2ad2e222

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 58
    :cond_16
    :goto_f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v6, v24

    .line 59
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_17

    .line 61
    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10

    :cond_17
    const-string v3, "opened"

    .line 62
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    :goto_10
    invoke-virtual {v5, v9, v0, v10, v7}, Lcom/shabakaty/downloader/q73;->r(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/li;->b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V

    if-nez v11, :cond_18

    const-string v0, "grp"

    .line 65
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 66
    invoke-static {v1, v5, v0, v12}, Lcom/shabakaty/downloader/e13;->c(Landroid/content/Context;Lcom/shabakaty/downloader/p73;Ljava/lang/String;Z)V

    :cond_18
    const/4 v0, 0x6

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processIntent from context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 68
    invoke-static {v0, v3, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_19

    const-string v3, "processIntent intent extras: "

    .line 70
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v0, v3, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    if-nez v12, :cond_1b

    .line 72
    instance-of v0, v1, Landroid/app/Activity;

    if-nez v0, :cond_1a

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 74
    invoke-static {v1, v0, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 75
    :cond_1a
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 76
    iget-object v1, v8, Lcom/shabakaty/downloader/i33;->a:Lorg/json/JSONArray;

    const-string v3, "from_alert"

    const/4 v4, 0x0

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 78
    iget-object v3, v8, Lcom/shabakaty/downloader/i33;->b:Lorg/json/JSONObject;

    .line 79
    invoke-static {v3}, Lcom/shabakaty/downloader/g33;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/q0;->C(Landroid/app/Activity;Lorg/json/JSONArray;ZLjava/lang/String;)V

    :cond_1b
    :goto_11
    return-void
.end method
