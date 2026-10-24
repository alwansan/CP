.class Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveToFileTask"
.end annotation


# instance fields
.field private final callback:Lcom/shabakaty/downloader/n95;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/n95<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;"
        }
    .end annotation
.end field

.field private final destFile:Lcom/shabakaty/downloader/tp2;

.field private final responseBody:Lcom/shabakaty/downloader/ys3;


# direct methods
.method private constructor <init>(Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/tp2;Lcom/shabakaty/downloader/n95;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ys3;",
            "Lcom/shabakaty/downloader/tp2;",
            "Lcom/shabakaty/downloader/n95<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lcom/shabakaty/downloader/ys3;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lcom/shabakaty/downloader/tp2;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/shabakaty/downloader/n95;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/tp2;Lcom/shabakaty/downloader/n95;Lzendesk/support/request/AttachmentDownloadService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;-><init>(Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/tp2;Lcom/shabakaty/downloader/n95;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lcom/shabakaty/downloader/tp2;

    .line 2
    iget-object v3, v3, Lcom/shabakaty/downloader/tp2;->r:Ljava/io/File;

    .line 3
    invoke-static {v3, v1, v0, v2}, Lcom/shabakaty/downloader/md0;->N(Ljava/io/File;ZILjava/lang/Object;)Lcom/shabakaty/downloader/l84;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v4, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lcom/shabakaty/downloader/ys3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ys3;->f()Lcom/shabakaty/downloader/eo;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/shabakaty/downloader/nn3;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/nn3;->s0(Lcom/shabakaty/downloader/r94;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-static {v3}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lcom/shabakaty/downloader/ys3;

    invoke-static {v0}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_0
    :try_start_2
    const-string v4, "RequestActivity"

    const-string v5, "Unable to save attachment to disk. Error: \'%s\'"

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v4, v5, v0}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/j61;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {v3}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lcom/shabakaty/downloader/ys3;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v0

    .line 12
    :goto_1
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/shabakaty/downloader/n95;

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    .line 13
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lcom/shabakaty/downloader/tp2;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 15
    :goto_3
    invoke-static {v2}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lcom/shabakaty/downloader/ys3;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 17
    throw v0
.end method
