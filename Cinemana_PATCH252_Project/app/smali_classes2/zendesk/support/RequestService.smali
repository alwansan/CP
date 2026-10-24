.class interface abstract Lzendesk/support/RequestService;
.super Ljava/lang/Object;
.source "RequestService.java"


# virtual methods
.method public abstract addComment(Ljava/lang/String;Lzendesk/support/UpdateRequestWrapper;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lzendesk/support/UpdateRequestWrapper;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/j93;
        value = "/api/mobile/requests/{id}.json?include=last_comment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/UpdateRequestWrapper;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RequestResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createRequest(Ljava/lang/String;Lzendesk/support/CreateRequestWrapper;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/os1;
            value = "Mobile-Sdk-Identity"
        .end annotation
    .end param
    .param p2    # Lzendesk/support/CreateRequestWrapper;
        .annotation runtime Lcom/shabakaty/downloader/sm;
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/i93;
        value = "/api/mobile/requests.json?include=last_comment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/CreateRequestWrapper;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RequestResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllRequests(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "status"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "include"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/requests.json?sort_by=updated_at&sort_order=desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RequestsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComments(Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/requests/{id}/comments.json?sort_order=desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/CommentsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommentsSince(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "since"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "role"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/requests/{id}/comments.json?sort_order=desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/CommentsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getManyRequests(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "tokens"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "status"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "include"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/requests/show_many.json?sort_order=desc"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RequestsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/va3;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "include"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/mobile/requests/{id}.json"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RequestResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTicketFormsById(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/nq;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "ids"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/shabakaty/downloader/ok3;
            value = "include"
        .end annotation
    .end param
    .annotation runtime Lcom/shabakaty/downloader/lo1;
        value = "/api/v2/ticket_forms/show_many.json?active=true"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/downloader/nq<",
            "Lzendesk/support/RawTicketFormResponse;",
            ">;"
        }
    .end annotation
.end method
