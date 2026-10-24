.class interface abstract Lzendesk/core/AccessService;
.super Ljava/lang/Object;
.source "AccessService.java"


# virtual methods
.method public abstract getAuthTokenForAnonymous(Lzendesk/core/AuthenticationRequestWrapper;)Lcom/shabakaty/downloader/nq;
    .param p1    # Lzendesk/core/AuthenticationRequestWrapper;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/access/sdk/anonymous"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/AuthenticationRequestWrapper;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthTokenForJwt(Lzendesk/core/AuthenticationRequestWrapper;)Lcom/shabakaty/downloader/nq;
    .param p1    # Lzendesk/core/AuthenticationRequestWrapper;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/access/sdk/jwt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/AuthenticationRequestWrapper;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/AuthenticationResponse;",
            ">;"
        }
    .end annotation
.end method
