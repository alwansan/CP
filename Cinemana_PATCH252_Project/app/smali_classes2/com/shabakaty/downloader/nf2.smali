.class public Lcom/shabakaty/downloader/nf2;
.super Lcom/shabakaty/downloader/pf2;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nf2$c;,
        Lcom/shabakaty/downloader/nf2$b;
    }
.end annotation


# virtual methods
.method public a()Lcom/shabakaty/downloader/es2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pf2;->b:Lcom/shabakaty/downloader/es2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pf2;->b:Lcom/shabakaty/downloader/es2;

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :try_start_1
    iput-object v0, p0, Lcom/shabakaty/downloader/pf2;->b:Lcom/shabakaty/downloader/es2;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pf2;->b:Lcom/shabakaty/downloader/es2;

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/nf2;->a()Lcom/shabakaty/downloader/es2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
