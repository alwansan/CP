.class public Lcom/onesignal/w1;
.super Lcom/onesignal/x0$d;
.source "UserStateSynchronizer.java"


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/onesignal/t1;


# direct methods
.method public constructor <init>(Lcom/onesignal/t1;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    iput-object p2, p0, Lcom/onesignal/w1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/onesignal/w1;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/onesignal/w1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/onesignal/x0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    iget-object p3, p3, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter p3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/onesignal/t1;->i:Z

    const/4 v0, 0x4

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed last request. statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    const-string v1, "not a valid device_type"

    invoke-static {v0, p1, p2, v1}, Lcom/onesignal/t1;->a(Lcom/onesignal/t1;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    invoke-static {p1}, Lcom/onesignal/t1;->c(Lcom/onesignal/t1;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    invoke-static {p2, p1}, Lcom/onesignal/t1;->d(Lcom/onesignal/t1;I)V

    .line 8
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    iget-object v0, v0, Lcom/onesignal/t1;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/onesignal/t1;->i:Z

    .line 3
    iget-object v1, v1, Lcom/onesignal/t1;->j:Lcom/onesignal/n1;

    .line 4
    iget-object v2, p0, Lcom/onesignal/w1;->a:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/onesignal/w1;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/onesignal/n1;->l(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCreateOrNewSession:response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 8
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const-string p1, "id"

    .line 9
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v4, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    invoke-virtual {v4, p1}, Lcom/onesignal/t1;->E(Ljava/lang/String;)V

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device registered, UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v2, p1, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session sent, UserId = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onesignal/w1;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v2, p1, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    invoke-virtual {p1}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object p1

    const-string v2, "session"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Lcom/onesignal/n1;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    invoke-virtual {p1}, Lcom/onesignal/t1;->r()Lcom/onesignal/n1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/n1;->k()V

    const-string p1, "in_app_messages"

    .line 17
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object p1

    const-string v2, "in_app_messages"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/x;->E(Lorg/json/JSONArray;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/onesignal/w1;->d:Lcom/onesignal/t1;

    iget-object v1, p0, Lcom/onesignal/w1;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/onesignal/t1;->v(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x3

    :try_start_2
    const-string v2, "ERROR parsing on_session or create JSON Response."

    .line 20
    invoke-static {v1, v2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
