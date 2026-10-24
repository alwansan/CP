.class public final Lcom/shabakaty/downloader/zd4;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zd4$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/shabakaty/downloader/bm2; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lcom/shabakaty/downloader/zr4;->C:Lcom/shabakaty/downloader/wr4;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/wr4;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/z92;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/shabakaty/downloader/bm2; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/aa2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/aa2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ja2;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ja2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
