.class interface abstract Lzendesk/core/PushRegistrationService;
.super Ljava/lang/Object;
.source "PushRegistrationService.java"


# virtual methods
.method public abstract registerDevice(Lzendesk/core/PushRegistrationRequestWrapper;)Lcom/shabakaty/downloader/nq;
    .param p1    # Lzendesk/core/PushRegistrationRequestWrapper;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/api/mobile/push_notification_devices.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/PushRegistrationRequestWrapper;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/PushRegistrationResponseWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unregisterDevice(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/mh0;
        value = "/api/mobile/push_notification_devices/{id}.json"
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
