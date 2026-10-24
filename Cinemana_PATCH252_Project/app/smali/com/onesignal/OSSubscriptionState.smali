.class public Lcom/onesignal/OSSubscriptionState;
.super Ljava/lang/Object;
.source "OSSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public r:Lcom/shabakaty/downloader/l33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l33<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/l33;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/l33;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSSubscriptionState;->r:Lcom/shabakaty/downloader/l33;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string p2, "ONESIGNAL_SUBSCRIPTION_LAST"

    invoke-static {p1, p2, v0}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->v:Z

    const/4 p2, 0x0

    const-string v0, "ONESIGNAL_PLAYER_ID_LAST"

    .line 4
    invoke-static {p1, v0, p2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    const-string v0, "ONESIGNAL_PUSH_TOKEN_LAST"

    .line 5
    invoke-static {p1, v0, p2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    const-string p2, "ONESIGNAL_PERMISSION_ACCEPTED_LAST"

    .line 6
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->u:Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/onesignal/t1;->q()Lcom/onesignal/n1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/n1;->e()Lcom/shabakaty/downloader/yo;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "userSubscribePref"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 10
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->v:Z

    .line 11
    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/onesignal/c1;->b()Lcom/onesignal/q1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/t1;->o()Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/onesignal/OSSubscriptionState;->u:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onesignal/OSSubscriptionState;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->s:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "userId"

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSSubscriptionState;->t:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "pushToken"

    if-eqz v1, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "isPushDisabled"

    .line 8
    iget-boolean v2, p0, Lcom/onesignal/OSSubscriptionState;->v:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isSubscribed"

    .line 10
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public changed(Lcom/shabakaty/downloader/a43;)V
    .locals 1

    .line 1
    iget-boolean p1, p1, Lcom/shabakaty/downloader/a43;->s:Z

    .line 2
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->a()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/onesignal/OSSubscriptionState;->u:Z

    .line 4
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->a()Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/onesignal/OSSubscriptionState;->r:Lcom/shabakaty/downloader/l33;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/l33;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
