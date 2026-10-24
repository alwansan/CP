.class public final Lcom/shabakaty/downloader/kv6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/kv6;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vy1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/kv6;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wc6;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/kv6;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lcom/shabakaty/downloader/kv6;->r:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/wc6;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/zu6;

    iget-object v0, v0, Lcom/shabakaty/downloader/wc6;->j:Lcom/shabakaty/downloader/mc6;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zu6;-><init>(Lcom/shabakaty/downloader/mc6;)V

    return-object v1

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const-string v2, "google_sdk_flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kv6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vy1;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/vy1;->r:Ljava/net/URL;

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Starting download of: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/vy1;->r:Ljava/net/URL;

    .line 8
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    const/high16 v5, 0x100000

    if-gt v4, v5, :cond_b

    .line 10
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_0
    iput-object v2, v0, Lcom/shabakaty/downloader/vy1;->t:Ljava/io/InputStream;

    .line 11
    sget v4, Lcom/shabakaty/downloader/qz6;->a:I

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/yu6;

    .line 13
    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/yu6;-><init>(Ljava/io/InputStream;)V

    .line 14
    new-instance v6, Ljava/util/ArrayDeque;

    const/16 v7, 0x14

    .line 15
    invoke-direct {v6, v7}, Ljava/util/ArrayDeque;-><init>(I)V

    const/16 v7, 0x2000

    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    const v10, 0x7ffffff7

    if-ge v8, v10, :cond_4

    sub-int/2addr v10, v8

    .line 16
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v11, v10, [B

    .line 17
    invoke-virtual {v6, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_1

    sub-int v13, v10, v12

    .line 18
    invoke-virtual {v4, v11, v12, v13}, Lcom/shabakaty/downloader/yu6;->read([BII)I

    move-result v13

    if-ne v13, v9, :cond_0

    .line 19
    invoke-static {v6, v8}, Lcom/shabakaty/downloader/qz6;->a(Ljava/util/Queue;I)[B

    move-result-object v4

    goto :goto_3

    :cond_0
    add-int/2addr v12, v13

    add-int/2addr v8, v13

    goto :goto_2

    :cond_1
    int-to-long v9, v7

    add-long/2addr v9, v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v7, v9, v11

    if-lez v7, :cond_2

    const v7, 0x7fffffff

    goto :goto_1

    :cond_2
    const-wide/32 v11, -0x80000000

    cmp-long v7, v9, v11

    if-gez v7, :cond_3

    const/high16 v7, -0x80000000

    goto :goto_1

    :cond_3
    long-to-int v7, v9

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/yu6;->read()I

    move-result v4

    if-ne v4, v9, :cond_9

    .line 21
    invoke-static {v6, v10}, Lcom/shabakaty/downloader/qz6;->a(Ljava/util/Queue;I)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x2

    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/shabakaty/downloader/vy1;->r:Ljava/net/URL;

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x22

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Downloaded "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes from "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    array-length v2, v4

    if-gt v2, v5, :cond_8

    .line 25
    array-length v2, v4

    .line 26
    invoke-static {v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v2, 0x3

    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/shabakaty/downloader/vy1;->r:Ljava/net/URL;

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Successfully downloaded image: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1

    .line 29
    :cond_7
    new-instance v1, Ljava/io/IOException;

    iget-object v0, v0, Lcom/shabakaty/downloader/vy1;->r:Ljava/net/URL;

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode image: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Image exceeds max size of 1048576"

    .line 32
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_9
    :try_start_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "input is too large to fit in a byte array"

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    .line 35
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 36
    sget-object v2, Lcom/shabakaty/downloader/ne7;->a:Lcom/shabakaty/downloader/kz6;

    .line 37
    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/kz6;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 38
    :cond_a
    :goto_4
    throw v0

    .line 39
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length exceeds max size of 1048576"

    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
