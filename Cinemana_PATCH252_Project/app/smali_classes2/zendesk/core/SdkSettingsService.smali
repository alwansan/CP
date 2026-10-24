.class interface abstract Lzendesk/core/SdkSettingsService;
.super Ljava/lang/Object;
.source "SdkSettingsService.java"


# virtual methods
.method public abstract getSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Accept-Language"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "applicationId"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/private/mobile_sdk/settings/{applicationId}.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/z92;",
            ">;>;"
        }
    .end annotation
.end method
