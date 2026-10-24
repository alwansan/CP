.class Lzendesk/support/ZendeskUploadProvider;
.super Ljava/lang/Object;
.source "ZendeskUploadProvider.java"

# interfaces
.implements Lzendesk/support/UploadProvider;


# instance fields
.field private final uploadService:Lzendesk/support/ZendeskUploadService;


# direct methods
.method public constructor <init>(Lzendesk/support/ZendeskUploadService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskUploadProvider;->uploadService:Lzendesk/support/ZendeskUploadService;

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
    iget-object v0, p0, Lzendesk/support/ZendeskUploadProvider;->uploadService:Lzendesk/support/ZendeskUploadService;

    invoke-virtual {v0, p1, p2}, Lzendesk/support/ZendeskUploadService;->deleteAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V

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
            "Lzendesk/support/UploadResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskUploadProvider;->uploadService:Lzendesk/support/ZendeskUploadService;

    new-instance v1, Lzendesk/support/ZendeskUploadProvider$1;

    invoke-direct {v1, p0, p4, p4}, Lzendesk/support/ZendeskUploadProvider$1;-><init>(Lzendesk/support/ZendeskUploadProvider;Lcom/shabakaty/downloader/n95;Lcom/shabakaty/downloader/n95;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lzendesk/support/ZendeskUploadService;->uploadAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/shabakaty/downloader/n95;)V

    return-void
.end method
