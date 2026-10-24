.class public abstract Lcom/shabakaty/downloader/c23;
.super Ljava/lang/Object;
.source "OSChannelTracker.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/z23;

.field public b:Lorg/json/JSONArray;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/y23;

.field public e:Lcom/shabakaty/downloader/b33;

.field public f:Lcom/shabakaty/downloader/c21;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y23;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/c21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    iput-object p2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    iput-object p3, p0, Lcom/shabakaty/downloader/c23;->f:Lcom/shabakaty/downloader/c21;

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;Lcom/shabakaty/downloader/v23;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()I
.end method

.method public abstract d()Lcom/shabakaty/downloader/w23;
.end method

.method public final e()Lcom/shabakaty/downloader/v23;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v23;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->d()Lcom/shabakaty/downloader/w23;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/z23;->u:Lcom/shabakaty/downloader/z23;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/v23;-><init>(Lcom/shabakaty/downloader/w23;Lcom/shabakaty/downloader/z23;Lorg/json/JSONArray;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->k()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-eqz v1, :cond_1

    move-object v2, v1

    .line 4
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z23;->h()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "PREFS_OS_DIRECT_ENABLED"

    .line 9
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/z23;->r:Lcom/shabakaty/downloader/z23;

    .line 13
    iput-object v1, v0, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z23;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 16
    iget-object v1, v1, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "PREFS_OS_INDIRECT_ENABLED"

    .line 19
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    .line 21
    iput-object v1, v0, Lcom/shabakaty/downloader/v23;->c:Lorg/json/JSONArray;

    .line 22
    sget-object v1, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    .line 23
    iput-object v1, v0, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    goto :goto_0

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->d:Lcom/shabakaty/downloader/y23;

    .line 25
    iget-object v1, v1, Lcom/shabakaty/downloader/y23;->r:Lcom/shabakaty/downloader/xl2;

    .line 26
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v2, "PREFS_OS_UNATTRIBUTED_ENABLED"

    .line 28
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/s73;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    sget-object v1, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    .line 30
    iput-object v1, v0, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/c23;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    iget-object v3, p1, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Lorg/json/JSONArray;
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public abstract i(Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public final j()Lorg/json/JSONArray;
    .locals 12

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->h()Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal ChannelTracker getLastReceivedIds lastChannelObjectReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->g()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/c23;->f:Lcom/shabakaty/downloader/c21;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 8
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "time"

    .line 9
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v9, v4, v9

    cmp-long v11, v9, v2

    if-gtz v11, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    const-string v3, "Generating tracker getLastReceivedIds JSONObject "

    .line 13
    invoke-static {v2, v3, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public abstract k()V
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->j()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/z23;->s:Lcom/shabakaty/downloader/z23;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->b()V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    const-string v1, "OneSignal OSChannelTracker resetAndInitInfluence: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish with influenceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract m(Lorg/json/JSONArray;)V
.end method

.method public final n(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    const-string v1, "OneSignal OSChannelTracker for: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " saveLastId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/c23;->i(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " saveLastId with lastChannelObjectsReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/c23;->f:Lcom/shabakaty/downloader/c21;

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "time"

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10
    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->c()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->c()I

    move-result v3

    sub-int/2addr p1, v3

    .line 14
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge p1, v4, :cond_2

    .line 16
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 17
    iget-object v6, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    check-cast v6, Lcom/shabakaty/downloader/a33;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Generating tracker lastChannelObjectsReceived get JSONObject "

    .line 18
    invoke-static {v2, v6, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with channelObjectToSave: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/c23;->m(Lorg/json/JSONArray;)V

    return-void

    :catch_1
    move-exception p1

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/c23;->e:Lcom/shabakaty/downloader/b33;

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Generating tracker newInfluenceId JSONObject "

    .line 22
    invoke-static {v2, v0, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OSChannelTracker{tag="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", influenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->a:Lcom/shabakaty/downloader/z23;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indirectIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", directId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/c23;->c:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
