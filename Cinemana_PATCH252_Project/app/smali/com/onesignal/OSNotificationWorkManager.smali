.class public Lcom/onesignal/OSNotificationWorkManager;
.super Ljava/lang/Object;
.source "OSNotificationWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OSNotificationWorkManager;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JZZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p7, :cond_0

    .line 1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v1, 0x0

    move-object v2, p0

    move v3, p2

    move v5, p6

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/onesignal/OSNotificationWorkManager;->b(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;ILorg/json/JSONObject;ZLjava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "Error occurred parsing jsonPayload to JSONObject in beginEnqueueingWork e: "

    .line 4
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p2, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const-string p7, "os_bnotification_id"

    .line 7
    invoke-static {p7, p1}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p7

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "android_notif_id"

    invoke-virtual {p7, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "json_payload"

    .line 9
    invoke-virtual {p7, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "timestamp"

    invoke-virtual {p7, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p4, "is_restoring"

    invoke-virtual {p7, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p2, Landroidx/work/b;

    invoke-direct {p2, p7}, Landroidx/work/b;-><init>(Ljava/util/Map;)V

    .line 13
    invoke-static {p2}, Landroidx/work/b;->c(Landroidx/work/b;)[B

    .line 14
    new-instance p4, Lcom/shabakaty/downloader/t73$a;

    const-class p5, Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;

    invoke-direct {p4, p5}, Lcom/shabakaty/downloader/t73$a;-><init>(Ljava/lang/Class;)V

    .line 15
    iget-object p5, p4, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iput-object p2, p5, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    .line 16
    invoke-virtual {p4}, Lcom/shabakaty/downloader/a85$a;->a()Lcom/shabakaty/downloader/a85;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/t73;

    const/4 p4, 0x6

    .line 17
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "OSNotificationWorkManager enqueueing notification work with notificationId: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " and jsonPayload: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {p4, p3, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {p0}, Lcom/shabakaty/downloader/r75;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/r75;

    move-result-object p0

    const/4 p3, 0x2

    .line 20
    invoke-virtual {p0, p1, p3, p2}, Lcom/shabakaty/downloader/q75;->a(Ljava/lang/String;ILcom/shabakaty/downloader/t73;)Lcom/shabakaty/downloader/x73;

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;ILorg/json/JSONObject;ZLjava/lang/Long;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Lorg/json/JSONObject;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c33;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p2}, Lcom/shabakaty/downloader/c33;-><init>(Ljava/util/List;Lorg/json/JSONObject;I)V

    .line 2
    new-instance p2, Lcom/onesignal/b0;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/b0;-><init>(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;Lorg/json/JSONObject;ZZLjava/lang/Long;)V

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/j33;

    invoke-direct {p0, p2, v0}, Lcom/shabakaty/downloader/j33;-><init>(Lcom/onesignal/b0;Lcom/shabakaty/downloader/c33;)V

    .line 4
    sget-object p2, Lcom/onesignal/q0;->m:Lcom/onesignal/q0$v;

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    invoke-interface {p2, p1, p0}, Lcom/onesignal/q0$v;->a(Landroid/content/Context;Lcom/shabakaty/downloader/j33;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "remoteNotificationReceived throw an exception. Displaying normal OneSignal notification."

    .line 6
    invoke-static {p2, p3, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/j33;->a(Lcom/shabakaty/downloader/c33;)V

    .line 8
    throw p1

    :cond_0
    const/4 p1, 0x4

    const-string p2, "remoteNotificationReceivedHandler not setup, displaying normal OneSignal notification"

    .line 9
    invoke-static {p1, p2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/j33;->a(Lcom/shabakaty/downloader/c33;)V

    :goto_0
    return-void
.end method
