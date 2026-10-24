.class public final Lcom/shabakaty/downloader/k33;
.super Lcom/shabakaty/downloader/c23;
.source "OSNotificationTracker.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y23;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/c21;)V
    .locals 1

    const-string v0, "dataRepository"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/c23;-><init>(Lcom/shabakaty/downloader/y23;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/c21;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/v23;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/z23;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "direct"

    .line 3
    iget-object v1, p2, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "notification_ids"

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 6
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 8
    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    const-string v0, "Generating notification tracker addSessionData JSONObject "

    .line 9
    invoke-static {p2, v0, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "influenceType"

    .line 4
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "PREFS_OS_NOTIFICATION_LIMIT"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Lcom/shabakaty/downloader/w23;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w23;->t:Lcom/shabakaty/downloader/w23;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_id"

    return-object v0
.end method

.method public g()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const/16 v1, 0x5a0

    const-string v2, "PREFS_OS_INDIRECT_ATTRIBUTION_WINDOW"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h()Lorg/json/JSONArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v1, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    const-string v2, "[]"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v1
.end method

.method public i(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/k33;->h()Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "Generating Notification tracker getLastChannelObjects JSONObject "

    .line 4
    invoke-static {v0, v1, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object p1
.end method

.method public k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v1, "PREFS_OS_OUTCOMES_CURRENT_SESSION"

    const-string v2, "UNATTRIBUTED"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/z23;->values()[Lcom/shabakaty/downloader/z23;

    move-result-object v2

    array-length v3, v2

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v4, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    .line 8
    :goto_1
    invoke-virtual {v4}, Lcom/shabakaty/downloader/z23;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->j()Lorg/json/JSONArray;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "PREFS_OS_LAST_ATTRIBUTED_NOTIFICATION_OPEN"

    .line 16
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 18
    :cond_4
    :goto_2
    iput-object v4, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal NotificationTracker initInfluencedTypeFromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m(Lorg/json/JSONArray;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREFS_OS_LAST_NOTIFICATIONS_RECEIVED"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
