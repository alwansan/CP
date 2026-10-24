.class Lzendesk/support/request/AttachmentUploadService;
.super Ljava/lang/Object;
.source "AttachmentUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;,
        Lzendesk/support/request/AttachmentUploadService$AttachmentsCallback;,
        Lzendesk/support/request/AttachmentUploadService$ResolveCallback;
    }
.end annotation


# instance fields
.field private final belvedere:Lcom/shabakaty/downloader/ul;

.field private final errorItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final itemsForUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final localToRemoteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final processedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private resolveCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/AttachmentUploadService$ResolveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private resultListener:Lcom/shabakaty/downloader/n95;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/n95<",
            "Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private subDirectory:Ljava/lang/String;

.field private final uploadProvider:Lzendesk/support/UploadProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/UploadProvider;Lcom/shabakaty/downloader/ul;Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/UploadProvider;",
            "Lcom/shabakaty/downloader/ul;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/AttachmentUploadService;->belvedere:Lcom/shabakaty/downloader/ul;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/AttachmentUploadService;->itemsForUpload:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->resolveCallbacks:Ljava/util/List;

    .line 7
    invoke-static {}, Lzendesk/support/request/UtilsAttachment;->getTemporaryRequestCacheDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->subDirectory:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->processedItems:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->errorItems:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->localToRemoteMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$100(Lzendesk/support/request/AttachmentUploadService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->isUploadFinished()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateRequestAttachment;Lcom/shabakaty/downloader/tp2;)Lzendesk/support/request/StateRequestAttachment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/AttachmentUploadService;->updateRequestAttachment(Lzendesk/support/request/StateRequestAttachment;Lcom/shabakaty/downloader/tp2;)Lzendesk/support/request/StateRequestAttachment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lzendesk/support/request/AttachmentUploadService;)Lzendesk/support/UploadProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/AttachmentUploadService;->uploadProvider:Lzendesk/support/UploadProvider;

    return-object p0
.end method

.method public static synthetic access$400(Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateRequestAttachment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/request/AttachmentUploadService;->errorUpload(Lzendesk/support/request/StateRequestAttachment;)V

    return-void
.end method

.method public static synthetic access$500(Lzendesk/support/request/AttachmentUploadService;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/AttachmentUploadService;->localToRemoteMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600(Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/UploadResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/AttachmentUploadService;->uploadSuccess(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/UploadResponse;)V

    return-void
.end method

.method private errorUpload(Lzendesk/support/request/StateRequestAttachment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->errorItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->notifyIfFinished()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private isUploadFinished()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->errorItems:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/h50;->g(Ljava/util/Collection;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/AttachmentUploadService;->processedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lzendesk/support/request/AttachmentUploadService;->itemsForUpload:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :cond_2
    :goto_1
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyIfFinished()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->isUploadFinished()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "RequestActivity"

    const-string v3, "Notify if finished. Listener: %s, isUploadFinished: %s"

    .line 3
    invoke-static {v2, v3, v1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->isUploadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->errorItems:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/h50;->f(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    new-instance v1, Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    iget-object v2, p0, Lzendesk/support/request/AttachmentUploadService;->processedItems:Ljava/util/List;

    invoke-static {v2}, Lcom/shabakaty/downloader/h50;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/request/AttachmentUploadService;->localToRemoteMap:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    new-instance v2, Lcom/shabakaty/downloader/j61;

    const-string v3, "Error uploading attachments."

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    :cond_1
    return-void
.end method

.method private renameFile(Ljava/io/File;J)Lcom/shabakaty/downloader/tp2;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->belvedere:Lcom/shabakaty/downloader/ul;

    iget-object v1, p0, Lzendesk/support/request/AttachmentUploadService;->subDirectory:Ljava/lang/String;

    invoke-static {v1, p2, p3}, Lzendesk/support/request/UtilsAttachment;->getAttachmentSubDir(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {v0, p2, p3}, Lcom/shabakaty/downloader/ul;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/tp2;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 5
    iget-object v0, p2, Lcom/shabakaty/downloader/tp2;->r:Ljava/io/File;

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const-string v0, "RequestActivity"

    const-string v1, "Rename local file: %s -> %s"

    .line 7
    invoke-static {v0, v1, p3}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p3, p2, Lcom/shabakaty/downloader/tp2;->r:Ljava/io/File;

    .line 9
    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private updateRequestAttachment(Lzendesk/support/request/StateRequestAttachment;Lcom/shabakaty/downloader/tp2;)Lzendesk/support/request/StateRequestAttachment;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->newBuilder()Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 2
    iget-object v0, p2, Lcom/shabakaty/downloader/tp2;->r:Ljava/io/File;

    .line 3
    invoke-virtual {p1, v0}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalFile(Ljava/io/File;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/tp2;->u:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lzendesk/support/request/StateRequestAttachment$Builder;->setName(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 6
    iget-object v0, p2, Lcom/shabakaty/downloader/tp2;->v:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lzendesk/support/request/StateRequestAttachment$Builder;->setMimeType(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/tp2;->s:Landroid/net/Uri;

    .line 9
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalUri(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment$Builder;->build()Lzendesk/support/request/StateRequestAttachment;

    move-result-object p1

    return-object p1
.end method

.method private uploadAttachment(Lzendesk/support/request/StateRequestAttachment;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getParsedLocalUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->isUploadFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lzendesk/support/request/AttachmentUploadService$ResolveCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lzendesk/support/request/AttachmentUploadService$ResolveCallback;-><init>(Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/AttachmentUploadService$1;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->resolveCallbacks:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->belvedere:Lcom/shabakaty/downloader/ul;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lzendesk/support/request/AttachmentUploadService;->subDirectory:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/ul;->c(Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/vq;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "RequestActivity"

    const-string v2, "Unable to parse uri, skipping. | %s"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1}, Lzendesk/support/request/AttachmentUploadService;->errorUpload(Lzendesk/support/request/StateRequestAttachment;)V

    :goto_0
    return-void
.end method

.method private uploadSuccess(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/UploadResponse;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lzendesk/support/UploadResponse;->getAttachment()Lzendesk/support/Attachment;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lzendesk/support/Attachment;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lzendesk/support/request/AttachmentUploadService;->renameFile(Ljava/io/File;J)Lcom/shabakaty/downloader/tp2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/tp2;->s:Landroid/net/Uri;

    .line 4
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/tp2;->r:Ljava/io/File;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->newBuilder()Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalUri(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalFile(Ljava/io/File;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lzendesk/support/UploadResponse;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setToken(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lzendesk/support/Attachment;->getContentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setUrl(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {v0}, Lzendesk/support/Attachment;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setMimeType(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {v0}, Lzendesk/support/Attachment;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setName(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment$Builder;->build()Lzendesk/support/request/StateRequestAttachment;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lzendesk/support/request/AttachmentUploadService;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 17
    :try_start_0
    iget-object v0, p0, Lzendesk/support/request/AttachmentUploadService;->processedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->notifyIfFinished()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public setResultListener(Lcom/shabakaty/downloader/n95;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/n95<",
            "Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->resultListener:Lcom/shabakaty/downloader/n95;

    .line 2
    invoke-direct {p0}, Lzendesk/support/request/AttachmentUploadService;->notifyIfFinished()V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lzendesk/support/request/UtilsAttachment;->getCacheDirForRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->subDirectory:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RequestActivity"

    const-string v1, "Start uploading attachments"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/request/AttachmentUploadService;->itemsForUpload:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateRequestAttachment;

    .line 5
    invoke-direct {p0, v0}, Lzendesk/support/request/AttachmentUploadService;->uploadAttachment(Lzendesk/support/request/StateRequestAttachment;)V

    goto :goto_0

    :cond_1
    return-void
.end method
