.class public final Lcom/shabakaty/downloader/n33;
.super Ljava/lang/Object;
.source "OSOutcomeEventParams.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/z33;

.field public c:F

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/z33;FJ)V
    .locals 1

    const-string v0, "outcomeId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n33;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    iput p3, p0, Lcom/shabakaty/downloader/n33;->c:F

    iput-wide p4, p0, Lcom/shabakaty/downloader/n33;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/n33;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-object v3, v1, Lcom/shabakaty/downloader/z33;->a:Lcom/shabakaty/downloader/ag6;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ag6;->p()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "direct"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/z33;->b:Lcom/shabakaty/downloader/ag6;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ag6;->p()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "indirect"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "sources"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/n33;->c:F

    const/4 v2, 0x0

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_3
    iget-wide v1, p0, Lcom/shabakaty/downloader/n33;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "json"

    .line 12
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "OSOutcomeEventParams{outcomeId=\'"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/n33;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", outcomeSource="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/n33;->b:Lcom/shabakaty/downloader/z33;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/n33;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lcom/shabakaty/downloader/n33;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
