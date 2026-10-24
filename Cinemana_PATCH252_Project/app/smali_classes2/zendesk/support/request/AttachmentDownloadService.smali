.class Lzendesk/support/request/AttachmentDownloadService;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final okHttpClient:Lcom/shabakaty/downloader/a63;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a63;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService;->okHttpClient:Lcom/shabakaty/downloader/a63;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public downloadAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/n95<",
            "Lcom/shabakaty/downloader/ys3;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vr3$a;->d()Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vr3$a;->k(Ljava/lang/String;)Lcom/shabakaty/downloader/vr3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vr3$a;->b()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService;->okHttpClient:Lcom/shabakaty/downloader/a63;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object p1

    new-instance v0, Lzendesk/support/request/AttachmentDownloadService$1;

    invoke-direct {v0, p0, p2}, Lzendesk/support/request/AttachmentDownloadService$1;-><init>(Lzendesk/support/request/AttachmentDownloadService;Lcom/shabakaty/downloader/n95;)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/wq;)V

    return-void
.end method

.method public storeAttachment(Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/tp2;Lcom/shabakaty/downloader/n95;)V
    .locals 3
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

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;-><init>(Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/tp2;Lcom/shabakaty/downloader/n95;Lzendesk/support/request/AttachmentDownloadService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
