.class public final Lcom/shabakaty/downloader/ea2;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public static a(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;
    .locals 6

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 1
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ga2;->s:Z

    const/4 v3, 0x1

    .line 2
    iput-boolean v3, p0, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/zd4;->a(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ga2;->s:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    :try_start_1
    new-instance v4, Lcom/shabakaty/downloader/da2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/shabakaty/downloader/da2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/da2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/shabakaty/downloader/da2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ga2;->s:Z

    .line 8
    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/shabakaty/downloader/z92;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p0, Lcom/shabakaty/downloader/ga2;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ga2;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/ea2;->a(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v1, v0, Lcom/shabakaty/downloader/ba2;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object p0

    sget-object v1, Lcom/shabakaty/downloader/ka2;->A:Lcom/shabakaty/downloader/ka2;

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/ja2;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/shabakaty/downloader/bm2; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/aa2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
