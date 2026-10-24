.class public final Lcom/shabakaty/downloader/x33;
.super Lcom/shabakaty/downloader/u33;
.source "OSOutcomeEventsV2Repository.kt"


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
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lcom/shabakaty/downloader/n33;->a()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 2
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "device_type"

    .line 3
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->c:Lcom/shabakaty/downloader/p83;

    const-string p3, "jsonObject"

    .line 5
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/shabakaty/downloader/p83;->a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/m73;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/u33;->a:Lcom/shabakaty/downloader/b33;

    .line 7
    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    const-string p3, "Generating indirect outcome:JSON Failed."

    .line 8
    invoke-static {p2, p3, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
