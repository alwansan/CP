.class public Lcom/shabakaty/downloader/iy4;
.super Lcom/onesignal/n1;
.source "UserStatePush.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/onesignal/n1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    const-string v0, "notification_types"

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/iy4;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/onesignal/n1;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/onesignal/n1;->c:Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)Lcom/onesignal/n1;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/iy4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/iy4;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final q()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "subscribableStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x2

    if-ge v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "androidPermission"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "userSubscribePref"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method
