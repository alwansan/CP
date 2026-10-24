.class public final Lcom/shabakaty/downloader/ey5;
.super Lcom/shabakaty/downloader/cr3$e;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic t:J

.field public final synthetic u:I

.field public final synthetic v:Lorg/json/JSONObject;

.field public final synthetic w:Lcom/shabakaty/downloader/cr3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ey5;->w:Lcom/shabakaty/downloader/cr3;

    iput-wide p3, p0, Lcom/shabakaty/downloader/ey5;->t:J

    iput p5, p0, Lcom/shabakaty/downloader/ey5;->u:I

    iput-object p6, p0, Lcom/shabakaty/downloader/ey5;->v:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/cr3$e;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ey5;->w:Lcom/shabakaty/downloader/cr3;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cr3$e;->q:Lcom/shabakaty/downloader/pj5;

    iget-wide v1, p0, Lcom/shabakaty/downloader/ey5;->t:J

    .line 4
    iget v3, p0, Lcom/shabakaty/downloader/ey5;->u:I

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/ey5;->v:Lorg/json/JSONObject;

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v6

    :try_start_0
    const-string v8, "requestId"

    .line 8
    invoke-virtual {v5, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "type"

    const-string v9, "SEEK"

    .line 9
    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "mediaSessionId"

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "currentTime"

    .line 11
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/yw;->b(J)D

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    const-string v9, "resumeState"

    if-ne v3, v8, :cond_0

    :try_start_1
    const-string v3, "PLAYBACK_START"

    .line 12
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    if-ne v3, v8, :cond_1

    const-string v3, "PLAYBACK_PAUSE"

    .line 13
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string v3, "customData"

    .line 14
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    :catch_0
    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v6, v7, v4}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/shabakaty/downloader/oh5;->g:Ljava/lang/Long;

    .line 17
    iget-object v1, p1, Lcom/shabakaty/downloader/oh5;->m:Lcom/shabakaty/downloader/ej5;

    new-instance v2, Lcom/shabakaty/downloader/ag6;

    invoke-direct {v2, p1, v0}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/oh5;Lcom/shabakaty/downloader/pj5;)V

    invoke-virtual {v1, v6, v7, v2}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-void
.end method
