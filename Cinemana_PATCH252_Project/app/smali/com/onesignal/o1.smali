.class public Lcom/onesignal/o1;
.super Lcom/onesignal/s1;
.source "UserStateEmailSynchronizer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/c1$a;->s:Lcom/onesignal/c1$a;

    invoke-direct {p0, v0}, Lcom/onesignal/s1;-><init>(Lcom/onesignal/c1$a;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/onesignal/q0;->R(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/q0;->m(Landroid/content/Context;)Lcom/shabakaty/downloader/g23;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/g23;->s:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/g23;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iput-object p1, v0, Lcom/shabakaty/downloader/g23;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/g23;->r:Lcom/shabakaty/downloader/l33;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/onesignal/c1;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/q0;->a:Ljava/util/List;

    return-void
.end method

.method public H(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/onesignal/q0;->a:Ljava/util/List;

    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    const-string v0, "email_auth_hash"

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

    return-object v0
.end method

.method public K()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/onesignal/q0;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;Z)Lcom/onesignal/n1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hy4;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/hy4;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
