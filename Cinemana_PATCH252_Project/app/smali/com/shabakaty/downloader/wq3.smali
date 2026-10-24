.class public final synthetic Lcom/shabakaty/downloader/wq3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/x90;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/wq3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wq3;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/xq3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/wq3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wq3;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/wq3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wq3;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xq3;

    const-string v1, "firebase"

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/xq3;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fd1;

    move-result-object v0

    return-object v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wq3;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/x90;

    .line 3
    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/x90;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/shabakaty/downloader/x90;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v2, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 7
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v4}, Lcom/shabakaty/downloader/t90;->a(Lorg/json/JSONObject;)Lcom/shabakaty/downloader/t90;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception v2

    :goto_1
    if-eqz v1, :cond_0

    .line 12
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 13
    :cond_0
    throw v2

    :catch_1
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    .line 15
    :cond_1
    :goto_3
    monitor-exit v0

    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
