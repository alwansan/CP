.class public Lcom/shabakaty/downloader/k23;
.super Lorg/json/JSONObject;
.source "OSInAppMessageController.java"


# direct methods
.method public constructor <init>(Lcom/onesignal/x;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object p1, Lcom/onesignal/q0;->d:Ljava/lang/String;

    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object p1

    const-string v0, "player_id"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "variant_id"

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_0
    const-string v0, "com.amazon.device.messaging.ADM"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 p2, 0x2

    goto :goto_4

    .line 6
    :cond_0
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 7
    :cond_1
    invoke-static {}, Lcom/onesignal/o0;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, Lcom/onesignal/o0;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/o0;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {}, Lcom/onesignal/o0;->p()Z

    move-result p1

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const-string p1, "com.huawei.hwid"

    .line 11
    invoke-static {p1}, Lcom/onesignal/o0;->v(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    const/16 p2, 0xd

    :cond_7
    :goto_4
    const-string p1, "device_type"

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "page_id"

    .line 13
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
