.class public Lcom/onesignal/x0;
.super Ljava/lang/Object;
.source "OneSignalRestClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/x0$d;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/x0$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/x0$b;-><init>(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V

    const-string p0, "OS_REST_ASYNC_GET"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V
    .locals 12

    move-object v0, p1

    .line 1
    invoke-static {}, Lcom/onesignal/o0;->q()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/onesignal/q0;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Thread;

    .line 3
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/onesignal/x0$c;

    move-object v1, v11

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/onesignal/x0$c;-><init>([Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V

    const-string v0, "OS_HTTPConnection"

    invoke-direct {v10, v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    move/from16 v0, p4

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    .line 5
    :try_start_0
    invoke-virtual {v10, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 6
    invoke-virtual {v10}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x0

    .line 8
    aget-object v1, v9, v0

    if-eqz v1, :cond_2

    .line 9
    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/xv4;

    const-string v2, "Method: "

    const-string v3, " was called from the Main Thread!"

    invoke-static {v2, p1, v3}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/xv4;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/x0$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/x0$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V

    const-string p0, "OS_REST_ASYNC_POST"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V
    .locals 6

    const-string v1, "POST"

    const v4, 0x1d4c0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/onesignal/x0;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;ILjava/lang/String;)V

    return-void
.end method
