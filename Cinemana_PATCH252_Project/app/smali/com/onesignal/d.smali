.class public final Lcom/onesignal/d;
.super Ljava/lang/Object;
.source "FCMBroadcastReceiver.java"

# interfaces
.implements Lcom/onesignal/q$c;


# instance fields
.field public final synthetic a:Lcom/onesignal/q$c;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/onesignal/q$c;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/d;->a:Lcom/onesignal/q$c;

    iput-object p2, p0, Lcom/onesignal/d;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/d;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onesignal/q$d;)V
    .locals 13

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/onesignal/q$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/onesignal/d;->a:Lcom/onesignal/q$c;

    invoke-interface {v0, p1}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onesignal/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/onesignal/d;->c:Landroid/os/Bundle;

    sget v2, Lcom/onesignal/FCMBroadcastReceiver;->t:I

    const/4 v2, 0x6

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFCMService from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-static {v2, v3, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "licon"

    .line 6
    invoke-static {v1, v3}, Lcom/onesignal/q;->c(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    const-string v3, "bicon"

    .line 7
    invoke-static {v1, v3}, Lcom/onesignal/q;->c(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "bg_img"

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    const-string v3, "startFCMService with no remote resources, no need for services"

    .line 9
    invoke-static {v2, v3, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/xo;->a()Lcom/shabakaty/downloader/wo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/FCMBroadcastReceiver;->c(Landroid/os/Bundle;Lcom/shabakaty/downloader/wo;)Lcom/shabakaty/downloader/wo;

    const-string v1, "android_notif_id"

    .line 11
    invoke-static {v0}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    :try_start_0
    const-string v3, "json_payload"

    .line 12
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/wo;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v0, 0x3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json_payload key is nonexistent from mBundle passed to ProcessFromFCMIntentService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0, v1, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 15
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "is_restoring"

    .line 16
    invoke-interface {v2, v3, v6}, Lcom/shabakaty/downloader/wo;->b(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "timestamp"

    .line 17
    invoke-interface {v2, v4}, Lcom/shabakaty/downloader/wo;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 18
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/wo;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/wo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 20
    :goto_2
    new-instance v12, Lcom/onesignal/p;

    move-object v1, v12

    move v2, v3

    move-object v3, v9

    move-object v4, v0

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/onesignal/p;-><init>(ZLorg/json/JSONObject;Landroid/content/Context;ILjava/lang/String;J)V

    .line 21
    invoke-static {v0, v9, v12}, Lcom/onesignal/q0;->K(Landroid/content/Context;Lorg/json/JSONObject;Lcom/onesignal/d0$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_5
    const-string v2, "pri"

    const-string v3, "0"

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_7

    .line 25
    invoke-static {v0, v1}, Lcom/onesignal/FCMBroadcastReceiver;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_4

    .line 26
    :cond_7
    :try_start_1
    invoke-static {v0, v1}, Lcom/onesignal/FCMBroadcastReceiver;->e(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 27
    :catch_1
    invoke-static {v0, v1}, Lcom/onesignal/FCMBroadcastReceiver;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 28
    :goto_4
    iget-object v0, p0, Lcom/onesignal/d;->a:Lcom/onesignal/q$c;

    invoke-interface {v0, p1}, Lcom/onesignal/q$c;->a(Lcom/onesignal/q$d;)V

    return-void
.end method
