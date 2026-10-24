.class public final Lcom/shabakaty/downloader/xx5;
.super Lcom/shabakaty/downloader/cr3$e;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# instance fields
.field public final synthetic t:Lorg/json/JSONObject;

.field public final synthetic u:Lcom/shabakaty/downloader/cr3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xx5;->u:Lcom/shabakaty/downloader/cr3;

    iput-object p3, p0, Lcom/shabakaty/downloader/xx5;->t:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/cr3$e;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final q(Lcom/shabakaty/downloader/s57;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/xx5;->u:Lcom/shabakaty/downloader/cr3;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cr3$e;->q:Lcom/shabakaty/downloader/pj5;

    iget-object v1, p0, Lcom/shabakaty/downloader/xx5;->t:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v3

    :try_start_0
    const-string v5, "requestId"

    .line 6
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "STOP"

    .line 7
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v5, "customData"

    .line 9
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/oh5;->l:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {p1, v3, v4, v0}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-void
.end method
