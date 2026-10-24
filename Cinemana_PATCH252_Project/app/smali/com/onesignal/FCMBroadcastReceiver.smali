.class public Lcom/onesignal/FCMBroadcastReceiver;
.super Lcom/shabakaty/downloader/j55;
.source "FCMBroadcastReceiver.java"


# static fields
.field public static final synthetic t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/j55;-><init>()V

    return-void
.end method

.method public static c(Landroid/os/Bundle;Lcom/shabakaty/downloader/wo;)Lcom/shabakaty/downloader/wo;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/onesignal/q;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "json_payload"

    invoke-interface {p1, v0, p0}, Lcom/shabakaty/downloader/wo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 5
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-interface {p1, v0, p0}, Lcom/shabakaty/downloader/wo;->c(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method public static d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xo;->a()Lcom/shabakaty/downloader/wo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/FCMBroadcastReceiver;->c(Landroid/os/Bundle;Lcom/shabakaty/downloader/wo;)Lcom/shabakaty/downloader/wo;

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/FCMIntentJobService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Bundle:Parcelable:Extras"

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/wo;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    sget v0, Lcom/onesignal/FCMIntentJobService;->y:I

    .line 5
    const-class v0, Lcom/onesignal/FCMIntentJobService;

    .line 6
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    sget-object v0, Lcom/onesignal/JobIntentService;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    const v3, 0x1e3f2

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {p0, v1, v2, v3, v4}, Lcom/onesignal/JobIntentService;->b(Landroid/content/Context;Landroid/content/ComponentName;ZIZ)Lcom/onesignal/JobIntentService$WorkEnqueuer;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v3}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->ensureJobId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/onesignal/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 12
    throw p0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static e(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onesignal/FCMIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/onesignal/q;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "json_payload"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 9
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p1, "timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/j55;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "from"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/onesignal/FCMBroadcastReceiver$a;

    invoke-direct {v1, p0}, Lcom/onesignal/FCMBroadcastReceiver$a;-><init>(Lcom/onesignal/FCMBroadcastReceiver;)V

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "message_type"

    .line 6
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v2, "gcm"

    .line 7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v1, p2}, Lcom/onesignal/FCMBroadcastReceiver$a;->a(Lcom/onesignal/q$d;)V

    .line 9
    :cond_3
    new-instance p2, Lcom/onesignal/d;

    invoke-direct {p2, v1, p1, v0}, Lcom/onesignal/d;-><init>(Lcom/onesignal/q$c;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 10
    invoke-static {p1, v0, p2}, Lcom/onesignal/q;->e(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/q$c;)V

    :cond_4
    :goto_0
    return-void
.end method
