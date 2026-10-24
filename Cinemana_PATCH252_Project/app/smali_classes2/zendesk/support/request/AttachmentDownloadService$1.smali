.class Lzendesk/support/request/AttachmentDownloadService$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/AttachmentDownloadService;->downloadAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/request/AttachmentDownloadService;

.field public final synthetic val$callback:Lcom/shabakaty/downloader/n95;


# direct methods
.method public constructor <init>(Lzendesk/support/request/AttachmentDownloadService;Lcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->this$0:Lzendesk/support/request/AttachmentDownloadService;

    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/shabakaty/downloader/n95;

    new-instance v0, Lcom/shabakaty/downloader/j61;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ws3;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/shabakaty/downloader/n95;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$1;->val$callback:Lcom/shabakaty/downloader/n95;

    new-instance v0, Lcom/shabakaty/downloader/j61;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p2, v1}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    :goto_0
    return-void
.end method
