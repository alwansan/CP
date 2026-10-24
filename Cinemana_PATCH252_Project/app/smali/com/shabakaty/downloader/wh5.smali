.class public final Lcom/shabakaty/downloader/wh5;
.super Lcom/shabakaty/downloader/br3$g;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic r:[I

.field public final synthetic s:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wh5;->s:Lcom/shabakaty/downloader/br3;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh5;->r:[I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/br3$g;-><init>(Lcom/shabakaty/downloader/br3;Z)V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh5;->s:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->c:Lcom/shabakaty/downloader/oh5;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/br3$g;->o:Lcom/shabakaty/downloader/pj5;

    iget-object v2, p0, Lcom/shabakaty/downloader/wh5;->r:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/l56;->b()J

    move-result-wide v4

    :try_start_0
    const-string v6, "requestId"

    .line 6
    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "type"

    const-string v7, "QUEUE_GET_ITEMS"

    .line 7
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "mediaSessionId"

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->u()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 10
    array-length v7, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget v9, v2, v8

    .line 11
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "itemIds"

    .line 12
    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/shabakaty/downloader/l56;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/oh5;->t:Lcom/shabakaty/downloader/ej5;

    invoke-virtual {v0, v4, v5, v1}, Lcom/shabakaty/downloader/ej5;->c(JLcom/shabakaty/downloader/pj5;)V

    return-void
.end method
