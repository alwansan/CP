.class interface abstract Lzendesk/core/UserService;
.super Ljava/lang/Object;
.source "UserService.java"


# virtual methods
.method public abstract addTags(Lzendesk/core/UserTagRequest;)Lcom/shabakaty/downloader/nq;
    .param p1    # Lzendesk/core/UserTagRequest;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/api/mobile/user_tags.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/UserTagRequest;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/UserResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteTags(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "tags"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/mh0;
        value = "/api/mobile/user_tags/destroy_many.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/UserResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUser()Lcom/shabakaty/downloader/nq;
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/users/me.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/UserResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserFields()Lcom/shabakaty/downloader/nq;
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/user_fields.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/UserFieldResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setUserFields(Lzendesk/core/UserFieldRequest;)Lcom/shabakaty/downloader/nq;
    .param p1    # Lzendesk/core/UserFieldRequest;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/j93;
        value = "/api/mobile/users/me.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/UserFieldRequest;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/core/UserResponse;",
            ">;"
        }
    .end annotation
.end method
