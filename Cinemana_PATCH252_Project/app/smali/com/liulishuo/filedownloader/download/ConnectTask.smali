.class public Lcom/liulishuo/filedownloader/download/ConnectTask;
.super Ljava/lang/Object;
.source "ConnectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/download/ConnectTask$Builder;,
        Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;
    }
.end annotation


# instance fields
.field public final downloadId:I

.field private etag:Ljava/lang/String;

.field public final header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

.field private redirectedUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    .line 4
    iput-object p3, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    .line 7
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Lcom/liulishuo/filedownloader/download/ConnectTask$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/liulishuo/filedownloader/download/ConnectTask;-><init>(Lcom/liulishuo/filedownloader/download/ConnectionProfile;ILjava/lang/String;Ljava/lang/String;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)V

    return-void
.end method

.method private addRangeHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v1, v1, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    invoke-interface {p1, v0, v1, v2}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->dispatchAddResumeOffset(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->processProfile(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    return-void
.end method

.method private addUserRequiredHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%d add outside header: %s"

    .line 6
    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-interface {p1, v2, v3}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fixNeededHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->header:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/model/FileDownloadHeader;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/liulishuo/filedownloader/util/FileDownloadUtils;->defaultUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public connect()Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;
    .locals 6

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->getImpl()Lcom/liulishuo/filedownloader/download/CustomComponentHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/download/CustomComponentHolder;->createConnection(Ljava/lang/String;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->addUserRequiredHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->addRangeHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/liulishuo/filedownloader/download/ConnectTask;->fixNeededHeader(Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;)V

    .line 5
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getRequestHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    .line 6
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 7
    iget v5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    aput-object v5, v1, v2

    const-string v5, "<---- %s request header %s"

    invoke-static {p0, v5, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->execute()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    .line 10
    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    invoke-static {v5, v0, v1}, Lcom/liulishuo/filedownloader/connection/RedirectHandler;->process(Ljava/util/Map;Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;Ljava/util/List;)Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;

    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 12
    iget v4, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->downloadId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 13
    invoke-interface {v0}, Lcom/liulishuo/filedownloader/connection/FileDownloadConnection;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "----> %s response header %s"

    .line 14
    invoke-static {p0, v2, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getFinalRedirectedUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->redirectedUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile()Lcom/liulishuo/filedownloader/download/ConnectionProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->requestHeader:Ljava/util/Map;

    return-object v0
.end method

.method public isRangeNotFromBeginning()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v0, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retryOnConnectedWithNewParam(Lcom/liulishuo/filedownloader/download/ConnectionProfile;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 3
    iput-object p2, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->etag:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;

    invoke-direct {p1, p0}, Lcom/liulishuo/filedownloader/download/ConnectTask$Reconnect;-><init>(Lcom/liulishuo/filedownloader/download/ConnectTask;)V

    throw p1
.end method

.method public updateConnectionProfile(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    iget-wide v1, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->currentOffset:J

    const/4 v8, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "no data download, no need to update"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-wide v3, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->contentLength:J

    sub-long v1, p1, v1

    sub-long v6, v3, v1

    .line 4
    iget-wide v1, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->startOffset:J

    iget-wide v4, v0, Lcom/liulishuo/filedownloader/download/ConnectionProfile;->endOffset:J

    move-wide v0, v1

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lcom/liulishuo/filedownloader/download/ConnectionProfile$ConnectionProfileBuild;->buildConnectionProfile(JJJJ)Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/ConnectTask;->profile:Lcom/liulishuo/filedownloader/download/ConnectionProfile;

    .line 5
    sget-boolean v1, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->NEED_LOG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v8

    const-string v0, "after update profile:%s"

    .line 6
    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/util/FileDownloadLog;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
