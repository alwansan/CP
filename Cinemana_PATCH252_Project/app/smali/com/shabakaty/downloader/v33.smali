.class public final Lcom/shabakaty/downloader/v33;
.super Lcom/shabakaty/downloader/u33;
.source "OSOutcomeEventsV1Repository.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/p83;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeEventsCache"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/u33;-><init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/p83;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;ILcom/shabakaty/downloader/n33;Lcom/shabakaty/downloader/m73;)V
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventParams"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3}, Lcom/shabakaty/downloader/m33;->a(Lcom/shabakaty/downloader/n33;)Lcom/shabakaty/downloader/m33;

    move-result-object p3

    .line 2
    iget-object v0, p3, Lcom/shabakaty/downloader/m33;->a:Lcom/shabakaty/downloader/z23;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "direct"

    const/4 v2, 0x1

    const-string v3, "jsonObject"

    const-string v4, "device_type"

    const-string v5, "app_id"

    const/4 v6, 0x3

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/shabakaty/downloader/m33;->b()Lorg/json/JSONObject;

    move-result-object p3

    .line 5
    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->c:Lcom/shabakaty/downloader/p83;

    .line 8
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/shabakaty/downloader/p83;->a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/m73;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    .line 10
    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Generating unattributed outcome:JSON Failed."

    .line 11
    invoke-static {v6, p2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lcom/shabakaty/downloader/m33;->b()Lorg/json/JSONObject;

    move-result-object p3

    .line 13
    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->c:Lcom/shabakaty/downloader/p83;

    .line 17
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/shabakaty/downloader/p83;->a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/m73;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 18
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    .line 19
    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Generating indirect outcome:JSON Failed."

    .line 20
    invoke-static {v6, p2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 21
    :cond_3
    :try_start_2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/m33;->b()Lorg/json/JSONObject;

    move-result-object p3

    .line 22
    invoke-virtual {p3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->c:Lcom/shabakaty/downloader/p83;

    .line 26
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/shabakaty/downloader/p83;->a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/m73;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 27
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    .line 28
    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Generating direct outcome:JSON Failed."

    .line 29
    invoke-static {v6, p2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
