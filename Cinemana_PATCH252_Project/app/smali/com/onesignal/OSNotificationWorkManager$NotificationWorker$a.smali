.class public Lcom/onesignal/OSNotificationWorkManager$NotificationWorker$a;
.super Ljava/lang/Object;
.source "OSNotificationWorkManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;->d()Lcom/shabakaty/downloader/pi2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ar$c<",
        "Landroidx/work/ListenableWorker$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/OSNotificationWorkManager$NotificationWorker$a;->r:Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onesignal/OSNotificationWorkManager$NotificationWorker$a;->r:Lcom/onesignal/OSNotificationWorkManager$NotificationWorker;

    .line 2
    iget-object v1, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 3
    iget-object v1, v1, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationWorker running doWork with data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v2, v4, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "android_notif_id"

    .line 6
    iget-object v4, v1, Landroidx/work/b;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 8
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 9
    :goto_0
    new-instance v7, Lorg/json/JSONObject;

    const-string v2, "json_payload"

    invoke-virtual {v1, v2}, Landroidx/work/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "timestamp"

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 11
    iget-object v8, v1, Landroidx/work/b;->a:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v8, v2, Ljava/lang/Long;

    if-eqz v8, :cond_1

    .line 13
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1
    const-string v2, "is_restoring"

    .line 14
    iget-object v8, v1, Landroidx/work/b;->a:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    instance-of v8, v2, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    .line 16
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 17
    :goto_1
    iget-object v2, v0, Landroidx/work/ListenableWorker;->r:Landroid/content/Context;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v4, p1

    move-object v5, v2

    .line 19
    invoke-static/range {v4 .. v9}, Lcom/onesignal/OSNotificationWorkManager;->b(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;ILorg/json/JSONObject;ZLjava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v4, 0x3

    const-string v5, "Error occurred doing work for job with id: "

    .line 20
    invoke-static {v5}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 21
    iget-object v0, v0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 22
    iget-object v0, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 23
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v4, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    :goto_2
    const-string p1, "os_bnotification_id"

    .line 27
    invoke-virtual {v1, p1}, Landroidx/work/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationWorkerFutureCallback_"

    .line 28
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
