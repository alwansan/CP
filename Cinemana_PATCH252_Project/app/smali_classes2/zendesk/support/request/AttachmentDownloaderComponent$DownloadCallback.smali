.class Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;
.super Lcom/shabakaty/downloader/n95;
.source "AttachmentDownloaderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/n95<",
        "Lcom/shabakaty/downloader/tp2;",
        ">;"
    }
.end annotation


# instance fields
.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field public final synthetic this$0:Lzendesk/support/request/AttachmentDownloaderComponent;


# direct methods
.method public constructor <init>(Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/StateRequestAttachment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RequestActivity"

    const-string v1, "Unable to download attachment. Error: %s"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/shabakaty/downloader/tp2;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-static {v0}, Lzendesk/support/request/AttachmentDownloaderComponent;->access$100(Lzendesk/support/request/AttachmentDownloaderComponent;)Lcom/shabakaty/downloader/eu0;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-static {v1}, Lzendesk/support/request/AttachmentDownloaderComponent;->access$000(Lzendesk/support/request/AttachmentDownloaderComponent;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1, v2, p1}, Lzendesk/support/request/ActionFactory;->attachmentDownloaded(Lzendesk/support/request/StateRequestAttachment;Lcom/shabakaty/downloader/tp2;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/eu0;->e(Lcom/shabakaty/downloader/i2;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tp2;

    invoke-virtual {p0, p1}, Lzendesk/support/request/AttachmentDownloaderComponent$DownloadCallback;->onSuccess(Lcom/shabakaty/downloader/tp2;)V

    return-void
.end method
