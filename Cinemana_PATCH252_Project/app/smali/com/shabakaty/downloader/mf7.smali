.class public final Lcom/shabakaty/downloader/mf7;
.super Lcom/shabakaty/downloader/br3$g;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mf7;->r:Lcom/shabakaty/downloader/br3;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/br3$g;-><init>(Lcom/shabakaty/downloader/br3;Z)V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mf7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3$g;->o:Lcom/shabakaty/downloader/pj5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v3

    :try_start_0
    const-string v5, "requestId"

    .line 6
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "SKIP_AD"

    .line 7
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mediaSessionId"

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 9
    iget-object v6, v0, Lcom/shabakaty/downloader/l56;->a:Lcom/shabakaty/downloader/pk2;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const-string v5, "Error creating SkipAd message: %s"

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/shabakaty/downloader/pk2;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/oh5;->v:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v0, v3, v4, v1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-void
.end method
