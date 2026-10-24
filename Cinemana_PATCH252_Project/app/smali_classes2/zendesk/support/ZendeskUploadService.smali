.class public Lzendesk/support/ZendeskUploadService;
.super Ljava/lang/Object;
.source "ZendeskUploadService.java"


# instance fields
.field public final uploadService:Lzendesk/support/UploadService;


# direct methods
.method public constructor <init>(Lzendesk/support/UploadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    return-void
.end method


# virtual methods
.method public deleteAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/n95<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    .line 2
    invoke-interface {v0, p1}, Lzendesk/support/UploadService;->deleteAttachment(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/mt3;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/mt3;-><init>(Lcom/shabakaty/downloader/n95;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    return-void
.end method

.method public uploadAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/n95<",
            "Lzendesk/support/UploadResponseWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    .line 2
    invoke-static {p3}, Lcom/shabakaty/downloader/fr2;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p3

    const-string v1, "file"

    .line 3
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/wr3;

    invoke-direct {v1, p2, p3}, Lcom/shabakaty/downloader/wr3;-><init>(Ljava/io/File;Lcom/shabakaty/downloader/fr2;)V

    .line 5
    invoke-interface {v0, p1, v1}, Lzendesk/support/UploadService;->uploadAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/nq;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/mt3;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/mt3;-><init>(Lcom/shabakaty/downloader/n95;)V

    .line 6
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/nq;->c0(Lcom/shabakaty/downloader/xq;)V

    return-void
.end method
