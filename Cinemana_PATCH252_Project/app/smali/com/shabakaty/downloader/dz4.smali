.class public final Lcom/shabakaty/downloader/dz4;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/bw1;Lcom/shabakaty/downloader/my0;)Lcom/shabakaty/downloader/bw1;
    .locals 8

    .line 1
    check-cast p0, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/lo0;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x12d

    const/4 v6, 0x1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x12e

    if-eq v0, v5, :cond_1

    const/16 v5, 0x12f

    if-eq v0, v5, :cond_1

    const/16 v5, 0x12c

    if-eq v0, v5, :cond_1

    const/16 v5, 0x133

    if-eq v0, v5, :cond_1

    const/16 v5, 0x134

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 3
    iput-object v1, p1, Lcom/shabakaty/downloader/my0;->a:Ljava/lang/String;

    .line 4
    sget-object p0, Lcom/shabakaty/downloader/u80;->f:Lcom/shabakaty/downloader/u80;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/u80;->b()Lcom/shabakaty/downloader/bw1;

    move-result-object p0

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/lo0;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lo0;->a(Lcom/shabakaty/downloader/my0;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lo0;->b()I

    move-result v1

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/lo0;->r:Ljava/net/URLConnection;

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v4, v6

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Max redirection done"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Location is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".temp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Deletion Failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    .line 9
    :cond_3
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Rename Failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    :cond_4
    throw p0
.end method
