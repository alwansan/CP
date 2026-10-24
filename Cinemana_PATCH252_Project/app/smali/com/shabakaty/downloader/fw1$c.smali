.class public Lcom/shabakaty/downloader/fw1$c;
.super Lcom/shabakaty/downloader/wl0;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yl0;II)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/fw1$c;->a(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/wl0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V
    .locals 0

    .line 3
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/fw1$c;->a(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/wl0;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/yl0;II)V
    .locals 0

    .line 2
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/fw1$c;->a(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/wl0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V
    .locals 0

    .line 4
    invoke-static {p4, p5}, Lcom/shabakaty/downloader/fw1$c;->a(II)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/wl0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public static a(II)I
    .locals 1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x7d1

    :cond_0
    return p0
.end method

.method public static b(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;I)Lcom/shabakaty/downloader/fw1$c;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_0

    const/16 v0, 0x7d2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    const/16 v0, 0x3ec

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7d7

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d1

    :goto_0
    if-ne v0, v2, :cond_3

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/fw1$a;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/fw1$a;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;)V

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/fw1$c;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/shabakaty/downloader/fw1$c;-><init>(Ljava/io/IOException;Lcom/shabakaty/downloader/yl0;II)V

    move-object p2, v1

    :goto_1
    return-object p2
.end method
