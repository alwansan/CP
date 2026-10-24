.class public Lcom/shabakaty/downloader/kd;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Lcom/shabakaty/downloader/a34;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/ja1;
    .locals 3

    const-string v0, "collect_reports"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "collect_anrs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ja1;

    invoke-direct {v1, v0, p0}, Lcom/shabakaty/downloader/ja1;-><init>(ZZ)V

    return-object v1
.end method

.method public static e(Lcom/shabakaty/downloader/zl2;JLorg/json/JSONObject;)J
    .locals 4

    const-string v0, "expires_at"

    .line 1
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long p0, p1, v0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zl2;Lorg/json/JSONObject;)Lcom/shabakaty/downloader/w24;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "settings_version"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "cache_duration"

    const/16 v3, 0xe10

    .line 2
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "app"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "status"

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "url"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "reports_url"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "ndk_reports_url"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "update_required"

    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/hb;

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/shabakaty/downloader/hb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "session"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "max_custom_exception_events"

    const/16 v3, 0x8

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/c24;

    const/4 v2, 0x4

    invoke-direct {v7, v1, v2}, Lcom/shabakaty/downloader/c24;-><init>(II)V

    const-string v1, "features"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/kd;->b(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/ja1;

    move-result-object v8

    int-to-long v1, v10

    move-object/from16 v3, p1

    .line 14
    invoke-static {v3, v1, v2, v0}, Lcom/shabakaty/downloader/kd;->e(Lcom/shabakaty/downloader/zl2;JLorg/json/JSONObject;)J

    move-result-wide v4

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/w24;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/w24;-><init>(JLcom/shabakaty/downloader/hb;Lcom/shabakaty/downloader/c24;Lcom/shabakaty/downloader/ja1;II)V

    return-object v0
.end method

.method public c(I)Lcom/shabakaty/downloader/fg4;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/fg4$c;->c:Lcom/shabakaty/downloader/fg4$c;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/fg4$a;->c:Lcom/shabakaty/downloader/fg4$a;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/fg4$e;->c:Lcom/shabakaty/downloader/fg4$e;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/fg4$b;->c:Lcom/shabakaty/downloader/fg4$b;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/fg4$d;->c:Lcom/shabakaty/downloader/fg4$d;

    :goto_0
    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/fg4;)I
    .locals 1

    const-string v0, "edge"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Lcom/shabakaty/downloader/fg4;->a:I

    return p1
.end method
