.class public Lcom/onesignal/q;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/q$b;,
        Lcom/onesignal/q$c;,
        Lcom/onesignal/q$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x3

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundleAsJSONObject error for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http://"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Lcom/shabakaty/downloader/h33;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    const-string v1, "Marking restored or disabled notifications as dismissed: "

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/h33;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_notification_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v1

    .line 7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dismissed"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "notification"

    .line 9
    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/shabakaty/downloader/q73;->r(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 11
    invoke-static {v1, p0}, Lcom/shabakaty/downloader/li;->b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/q$c;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v10, Lcom/onesignal/q$d;

    invoke-direct {v10}, Lcom/onesignal/q$d;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/downloader/g33;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {v1, v10}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v10, Lcom/onesignal/q$d;->a:Z

    const-string v0, "n"

    const-string v3, "custom"

    const-string v5, "p"

    const-string v6, "i"

    const-string v7, "a"

    const-string v8, "o"

    .line 5
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    goto :goto_0

    .line 9
    :cond_2
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :goto_0
    new-instance v14, Lorg/json/JSONArray;

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 12
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v8, v15, :cond_5

    .line 13
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 14
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 17
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 18
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v2, v16

    goto :goto_2

    :cond_3
    move-object/from16 v17, v0

    move-object v2, v12

    :goto_2
    const-string v0, "id"

    .line 19
    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "text"

    .line 20
    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "icon"

    .line 22
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "actionButtons"

    .line 24
    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "actionId"

    const-string v2, "__DEFAULT__"

    .line 25
    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    invoke-virtual {v9, v7, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_6
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/onesignal/q;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/shabakaty/downloader/r23;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 32
    sget-boolean v3, Lcom/onesignal/q0;->o:Z

    if-eqz v3, :cond_7

    .line 33
    sget-boolean v3, Lcom/onesignal/q0;->p:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    .line 34
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onesignal/x;->q(Ljava/lang/String;)V

    goto :goto_5

    .line 35
    :cond_8
    new-instance v2, Lcom/shabakaty/downloader/h33;

    invoke-direct {v2, v11, v0}, Lcom/shabakaty/downloader/h33;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 36
    sget-object v0, Lcom/shabakaty/downloader/np1;->a:Ljava/lang/Class;

    .line 37
    iget-object v0, v2, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 38
    invoke-static {v0}, Lcom/shabakaty/downloader/np1;->t(Landroid/content/Context;)V

    .line 39
    invoke-static {v2}, Lcom/shabakaty/downloader/np1;->v(Lcom/shabakaty/downloader/h33;)Z

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 40
    iput-boolean v2, v10, Lcom/onesignal/q$d;->c:Z

    .line 41
    invoke-interface {v1, v10}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void

    :cond_a
    const/4 v2, 0x1

    .line 42
    new-instance v5, Lcom/onesignal/q$a;

    invoke-direct {v5, v10, v1}, Lcom/onesignal/q$a;-><init>(Lcom/onesignal/q$d;Lcom/onesignal/q$c;)V

    .line 43
    invoke-static/range {p1 .. p1}, Lcom/onesignal/q;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 45
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    .line 47
    div-long v7, v6, v8

    const-string v1, "is_restoring"

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "pri"

    const-string v9, "0"

    .line 49
    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x9

    if-le v1, v9, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    .line 50
    :goto_7
    new-instance v12, Lcom/onesignal/r;

    move-object v1, v12

    move v2, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v10}, Lcom/onesignal/r;-><init>(ZLandroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/q$b;Lorg/json/JSONObject;JZLcom/onesignal/q$d;)V

    .line 51
    invoke-static {v11, v0, v12}, Lcom/onesignal/q0;->K(Landroid/content/Context;Lorg/json/JSONObject;Lcom/onesignal/d0$a;)V

    return-void
.end method

.method public static f(Lcom/onesignal/b0;ZZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting processJobForDisplay opened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fromBackgroundLogic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 2
    invoke-static {v4, v3, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v3, v0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    .line 4
    iget-boolean v6, v3, Lcom/shabakaty/downloader/h33;->e:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v6, v3, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    const-string v9, "collapse_key"

    .line 6
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7
    iget-object v6, v3, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "do_not_collapse"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, v3, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v9, v3, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 12
    invoke-static {v9}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v10

    const-string v9, "android_notification_id"

    .line 13
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    new-array v14, v7, [Ljava/lang/String;

    aput-object v6, v14, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v11, "notification"

    const-string v13, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    invoke-virtual/range {v10 .. v17}, Lcom/shabakaty/downloader/q73;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 15
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v10, v3, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/c33;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    .line 18
    :cond_3
    iget-object v10, v3, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 19
    iput v9, v10, Lcom/shabakaty/downloader/c33;->c:I

    .line 20
    :cond_4
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v6

    .line 22
    iget-object v9, v3, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    .line 23
    iget-object v9, v9, Lcom/shabakaty/downloader/c33;->a:Lcom/shabakaty/downloader/o03;

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_8

    .line 24
    iget-object v9, v3, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    const-string v10, "alert"

    .line 25
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/onesignal/o0;->r(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_3
    if-eqz v7, :cond_c

    .line 26
    invoke-virtual {v3}, Lcom/shabakaty/downloader/h33;->a()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    .line 27
    sget-boolean v7, Lcom/onesignal/q0;->p:Z

    if-nez v7, :cond_9

    const-string v7, "App is in background, show notification"

    .line 28
    invoke-static {v2, v7, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    const-string v7, "No NotificationWillShowInForegroundHandler setup, show notification"

    .line 29
    invoke-static {v2, v7, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_a
    :goto_4
    sget-object v2, Lcom/shabakaty/downloader/np1;->a:Ljava/lang/Class;

    .line 31
    iget-object v2, v3, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 32
    invoke-static {v2}, Lcom/shabakaty/downloader/np1;->t(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/onesignal/o0;->q()Z

    move-result v2

    if-nez v2, :cond_b

    .line 34
    invoke-static {v3}, Lcom/shabakaty/downloader/np1;->v(Lcom/shabakaty/downloader/h33;)Z

    move-result v8

    goto :goto_5

    .line 35
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/xv4;

    const/4 v1, 0x2

    const-string v2, "Process for showing a notification should never been done on Main Thread!"

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xv4;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 36
    :cond_c
    :goto_5
    iget-boolean v2, v3, Lcom/shabakaty/downloader/h33;->e:Z

    if-nez v2, :cond_e

    .line 37
    invoke-static {v3, v1, v8}, Lcom/onesignal/q;->g(Lcom/shabakaty/downloader/h33;ZZ)V

    .line 38
    iget-object v0, v0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    .line 39
    iget-object v0, v0, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 40
    invoke-static {v0}, Lcom/shabakaty/downloader/g33;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/onesignal/OSNotificationWorkManager;->a:Ljava/util/Set;

    .line 42
    invoke-static {v0}, Lcom/onesignal/o0;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    sget-object v1, Lcom/onesignal/OSNotificationWorkManager;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    :cond_d
    invoke-static {v3}, Lcom/onesignal/q0;->D(Lcom/shabakaty/downloader/h33;)V

    goto :goto_6

    .line 45
    :cond_e
    iget-object v0, v3, Lcom/shabakaty/downloader/h33;->a:Lcom/shabakaty/downloader/ar$a;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process notification restored or IAM with callback completer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v4, v1, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_f

    .line 48
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    return v6
.end method

.method public static g(Lcom/shabakaty/downloader/h33;ZZ)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "grp"

    const-string v2, "collapse_key"

    const-string v3, "Saving Notification job: "

    .line 1
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 2
    invoke-static {v4, v3, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v3, v1, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 4
    iget-object v6, v1, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 5
    :try_start_0
    invoke-static {v6}, Lcom/onesignal/q;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 6
    iget-object v10, v1, Lcom/shabakaty/downloader/h33;->c:Landroid/content/Context;

    .line 7
    invoke-static {v10}, Lcom/shabakaty/downloader/q73;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/q73;

    move-result-object v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const-string v12, "notification"

    if-eqz v11, :cond_1

    .line 9
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "android_notification_id = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "dismissed"

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {v10, v12, v13, v11, v5}, Lcom/shabakaty/downloader/q73;->r(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13
    invoke-static {v10, v3}, Lcom/shabakaty/downloader/li;->b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V

    .line 14
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "notification_id"

    const-string v13, "i"

    .line 15
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "group_id"

    .line 17
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "do_not_collapse"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "collapse_id"

    .line 19
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "opened"

    .line 20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_4

    const-string v0, "android_notification_id"

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->d()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "title"

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->c()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "message"

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/h33;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "google.sent_time"

    .line 26
    sget-object v2, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    .line 29
    invoke-virtual {v6, v0, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    const-string v0, "google.ttl"

    const v2, 0x3f480

    .line 30
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v13, v4

    const-string v0, "expire_time"

    .line 31
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "full_data"

    .line 32
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v10, v12, v4, v8}, Lcom/shabakaty/downloader/q73;->f(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification saved values: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v4, 0x0

    .line 35
    invoke-static {v2, v0, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-nez p1, :cond_7

    .line 36
    invoke-static {v10, v3}, Lcom/shabakaty/downloader/li;->b(Lcom/shabakaty/downloader/p73;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    :cond_7
    :goto_1
    iget-object v15, v1, Lcom/shabakaty/downloader/h33;->a:Lcom/shabakaty/downloader/ar$a;

    if-nez p2, :cond_9

    .line 39
    invoke-static/range {p0 .. p0}, Lcom/onesignal/q;->d(Lcom/shabakaty/downloader/h33;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process notification not displayed with callback completer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 41
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v15, :cond_8

    .line 42
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 43
    invoke-virtual {v15, v0}, Lcom/shabakaty/downloader/ar$a;->a(Ljava/lang/Object;)Z

    :cond_8
    return-void

    .line 44
    :cond_9
    iget-object v0, v1, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    sget-object v1, Lcom/onesignal/q0;->a:Ljava/util/List;

    const-string v1, "i"

    if-nez v0, :cond_a

    goto :goto_2

    .line 45
    :cond_a
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "custom"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x0

    .line 47
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    .line 48
    :cond_b
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    const-string v1, "Not a OneSignal formatted FCM message. No \'i\' field in custom."

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 49
    :catch_1
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v1, "Not a OneSignal formatted FCM message. No \'custom\' field in the JSONObject."

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    :goto_2
    const/4 v4, 0x0

    .line 50
    :goto_3
    const-class v1, Lcom/shabakaty/downloader/b43;

    monitor-enter v1

    .line 51
    :try_start_3
    sget-object v0, Lcom/shabakaty/downloader/b43;->d:Lcom/shabakaty/downloader/b43;

    if-nez v0, :cond_c

    .line 52
    new-instance v0, Lcom/shabakaty/downloader/b43;

    .line 53
    sget-object v3, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    .line 54
    sget-object v5, Lcom/onesignal/q0;->A:Lcom/shabakaty/downloader/d23;

    .line 55
    invoke-direct {v0, v3, v5}, Lcom/shabakaty/downloader/b43;-><init>(Lcom/onesignal/i0;Lcom/shabakaty/downloader/d23;)V

    sput-object v0, Lcom/shabakaty/downloader/b43;->d:Lcom/shabakaty/downloader/b43;

    .line 56
    :cond_c
    sget-object v0, Lcom/shabakaty/downloader/b43;->d:Lcom/shabakaty/downloader/b43;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/onesignal/q0;->d:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    sget-object v1, Lcom/onesignal/q0;->d:Ljava/lang/String;

    goto :goto_5

    :cond_e
    :goto_4
    invoke-static {}, Lcom/onesignal/q0;->w()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v12, v1

    .line 59
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v13

    .line 60
    iget-object v1, v0, Lcom/shabakaty/downloader/b43;->c:Lcom/onesignal/i0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v3, "PREFS_OS_RECEIVE_RECEIPTS_ENABLED"

    invoke-static {v1, v3, v7}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "sendReceiveReceipt disable"

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 62
    invoke-static {v2, v1, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {v0, v15}, Lcom/shabakaty/downloader/b43;->a(Lcom/shabakaty/downloader/ar$a;)V

    goto :goto_7

    .line 64
    :cond_f
    new-instance v1, Lcom/onesignal/g0;

    move-object v10, v1

    move-object v11, v0

    move-object v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/onesignal/g0;-><init>(Lcom/shabakaty/downloader/b43;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ar$a;)V

    .line 65
    iget-object v0, v0, Lcom/shabakaty/downloader/b43;->a:Lcom/shabakaty/downloader/d23;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v5, v0, Lcom/shabakaty/downloader/d23;->a:I

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    mul-double v2, v2, v5

    int-to-double v5, v7

    add-double/2addr v2, v5

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_14

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v7, v2, v5

    if-lez v7, :cond_10

    const v2, 0x7fffffff

    goto :goto_6

    :cond_10
    const-wide/high16 v5, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v7, v2, v5

    if-gez v7, :cond_11

    const/high16 v2, -0x80000000

    goto :goto_6

    .line 68
    :cond_11
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 69
    :goto_6
    iget-object v3, v0, Lcom/shabakaty/downloader/d23;->c:Lcom/shabakaty/downloader/b33;

    const-string v5, "OSDelayTaskController delaying task "

    const-string v6, " second from thread: "

    invoke-static {v5, v2, v6}, Lcom/shabakaty/downloader/lh4;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, v0, Lcom/shabakaty/downloader/d23;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 71
    :goto_7
    sget-object v0, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 72
    iget-object v1, v0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    const-string v2, "OneSignal SessionManager onNotificationReceived notificationId: "

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_13

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_8

    .line 74
    :cond_12
    iget-object v0, v0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->i()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/c23;->n(Ljava/lang/String;)V

    :cond_13
    :goto_8
    return-void

    .line 76
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit v1

    throw v0
.end method
