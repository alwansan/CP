.class public Lcom/shabakaty/downloader/lo0;
.super Ljava/lang/Object;
.source "DefaultHttpClient.java"

# interfaces
.implements Lcom/shabakaty/downloader/bw1;


# instance fields
.field public r:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/my0;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/my0;->a:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    iput-object v0, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    .line 4
    iget v1, p1, Lcom/shabakaty/downloader/my0;->h:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    .line 7
    iget v1, p1, Lcom/shabakaty/downloader/my0;->i:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "bytes=%d-"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    iget-wide v3, p1, Lcom/shabakaty/downloader/my0;->f:J

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 12
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    const-string v2, "Range"

    invoke-virtual {v1, v2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    const-string v1, "User-Agent"

    .line 15
    iget-object v2, p1, Lcom/shabakaty/downloader/my0;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 16
    sget-object v2, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    .line 17
    iget-object v3, v2, Lcom/shabakaty/downloader/u80;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 18
    const-class v3, Lcom/shabakaty/downloader/u80;

    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v4, v2, Lcom/shabakaty/downloader/u80;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "PRDownloader"

    .line 20
    iput-object v4, v2, Lcom/shabakaty/downloader/u80;->c:Ljava/lang/String;

    .line 21
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v2, v2, Lcom/shabakaty/downloader/u80;->c:Ljava/lang/String;

    .line 23
    iput-object v2, p1, Lcom/shabakaty/downloader/my0;->j:Ljava/lang/String;

    .line 24
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/my0;->j:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo0;-><init>()V

    return-object v0
.end method
