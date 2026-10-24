.class public final Lcom/shabakaty/downloader/u23;
.super Lcom/shabakaty/downloader/c23;
.source "OSInAppMessageTracker.kt"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y23;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/c21;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/c23;-><init>(Lcom/shabakaty/downloader/y23;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/c21;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/v23;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    :cond_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "influenceType"

    .line 5
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    .line 10
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

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

    const-string v2, "PREFS_OS_IAM_LIMIT"

    .line 5
    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/s73;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Lcom/shabakaty/downloader/w23;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w23;->s:Lcom/shabakaty/downloader/w23;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "iam_id"

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

    const-string v2, "PREFS_OS_IAM_INDIRECT_ATTRIBUTION_WINDOW"

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

    const-string v1, "PREFS_OS_LAST_IAMS_RECEIVED"

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
    .locals 7

    const/4 v0, 0x3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u23;->h()Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "iam_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 8
    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Generating tracker lastChannelObjectReceived get JSONObject "

    .line 9
    invoke-static {v0, v2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1

    :catch_1
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 11
    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Generating IAM tracker getLastChannelObjects JSONObject "

    .line 12
    invoke-static {v0, v1, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v1, "PREFS_OS_OUTCOMES_CURRENT_IAM_INFLUENCE"

    const-string v2, "UNATTRIBUTED"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/z23;->values()[Lcom/shabakaty/downloader/z23;

    move-result-object v1

    array-length v2, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v3, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    .line 8
    :goto_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/z23;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->j()Lorg/json/JSONArray;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    .line 10
    :cond_3
    iput-object v3, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal InAppMessageTracker initInfluencedTypeFromCache: "

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

    const-string v1, "PREFS_OS_LAST_IAMS_RECEIVED"

    .line 7
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
