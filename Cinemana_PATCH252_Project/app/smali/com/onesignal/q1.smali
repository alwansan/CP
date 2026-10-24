.class public Lcom/onesignal/q1;
.super Lcom/onesignal/t1;
.source "UserStatePushSynchronizer.java"


# static fields
.field public static l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/c1$a;->r:Lcom/onesignal/c1$a;

    invoke-direct {p0, v0}, Lcom/onesignal/t1;-><init>(Lcom/onesignal/c1$a;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .locals 3

    .line 1
    sput-object p1, Lcom/onesignal/q0;->h:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    sget-object v1, Lcom/onesignal/q0;->h:Ljava/lang/String;

    const-string v2, "GT_PLAYER_ID"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/onesignal/q0;->G()V

    .line 6
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/q0;->p(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 7
    iget-object v2, v0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_1
    iput-object p1, v0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 10
    iget-object p1, v0, Lcom/onesignal/OSSubscriptionState;->r:Lcom/shabakaty/downloader/l33;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    sget-object p1, Lcom/onesignal/q0;->h0:Lcom/onesignal/q0$q;

    if-eqz p1, :cond_4

    .line 12
    iget-object v0, p1, Lcom/onesignal/q0$q;->a:Lorg/json/JSONArray;

    iget-boolean v1, p1, Lcom/onesignal/q0$q;->b:Z

    iget-object p1, p1, Lcom/onesignal/q0$q;->c:Lcom/onesignal/x0$d;

    invoke-static {v0, v1, p1}, Lcom/onesignal/q0;->T(Lorg/json/JSONArray;ZLcom/onesignal/x0$d;)V

    const/4 p1, 0x0

    .line 13
    sput-object p1, Lcom/onesignal/q0;->h0:Lcom/onesignal/q0$q;

    .line 14
    :cond_4
    invoke-static {}, Lcom/onesignal/c1;->a()Lcom/onesignal/o1;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/onesignal/s1;->z()V

    .line 16
    invoke-static {}, Lcom/onesignal/c1;->c()Lcom/onesignal/r1;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/onesignal/s1;->z()V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public i(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "email"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/onesignal/q0;->a:Ljava/util/List;

    :cond_0
    const-string v0, "sms_number"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/onesignal/q0;->a:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public u(Ljava/lang/String;Z)Lcom/onesignal/n1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/iy4;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/iy4;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public v(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "sms_auth_hash"

    const-string v1, "email"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/onesignal/q0;->a:Ljava/util/List;

    :cond_0
    const-string v1, "sms_number"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Lcom/onesignal/q0;->a:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/t1;->n(Ljava/lang/Integer;)Lcom/onesignal/t1$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/t1$c;->a()V

    return-void
.end method
