.class public final Lcom/shabakaty/downloader/hy2;
.super Ljava/lang/Object;
.source "NetworkInformation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/gy2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gy2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hy2;->a:Lcom/shabakaty/downloader/gy2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/hy2;->a:Lcom/shabakaty/downloader/gy2;

    const-string p2, ""

    .line 2
    iput-object p2, p1, Lcom/shabakaty/downloader/gy2;->d:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/gy2;->a(Lcom/shabakaty/downloader/gy2;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->g()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/hy2;->a:Lcom/shabakaty/downloader/gy2;

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ip"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 7
    :goto_0
    iput-object p1, p2, Lcom/shabakaty/downloader/gy2;->d:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/hy2;->a:Lcom/shabakaty/downloader/gy2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gy2;->a(Lcom/shabakaty/downloader/gy2;)V

    return-void
.end method
