.class interface abstract Lzendesk/support/UploadService;
.super Ljava/lang/Object;
.source "UploadService.java"


# virtual methods
.method public abstract deleteAttachment(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "token"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/mh0;
        value = "/api/mobile/uploads/{token}.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract uploadAttachment(Ljava/lang/String;Lcom/shabakaty/downloader/yr3;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "filename"
        .end annotation
    .end param
    .param p2    # Lcom/shabakaty/downloader/yr3;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/api/mobile/uploads.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/yr3;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/UploadResponseWrapper;",
            ">;"
        }
    .end annotation
.end method
