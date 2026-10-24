.class Lzendesk/support/request/ActionFactory;
.super Ljava/lang/Object;
.source "ActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ActionFactory$ErrorAction;
    }
.end annotation


# static fields
.field public static final ANDROID_ON_PAUSE:Ljava/lang/String; = "ANDROID_ON_PAUSE"

.field public static final ANDROID_ON_RESUME:Ljava/lang/String; = "ANDROID_ON_RESUME"

.field public static final ATTACHMENTS_DESELECTED:Ljava/lang/String; = "ATTACHMENTS_DESELECTED"

.field public static final ATTACHMENTS_SELECTED:Ljava/lang/String; = "ATTACHMENTS_SELECTED"

.field public static final ATTACHMENT_DOWNLOADED:Ljava/lang/String; = "ATTACHMENT_DOWNLOADED"

.field public static final CLEAR_ATTACHMENTS:Ljava/lang/String; = "CLEAR_ATTACHMENTS"

.field public static final CLEAR_MESSAGES:Ljava/lang/String; = "CLEAR_MESSAGES"

.field public static final CREATE_COMMENT:Ljava/lang/String; = "CREATE_COMMENT"

.field public static final CREATE_COMMENT_ERROR:Ljava/lang/String; = "CREATE_COMMENT_ERROR"

.field public static final CREATE_COMMENT_SUCCESS:Ljava/lang/String; = "CREATE_COMMENT_SUCCESS"

.field public static final CREATE_REQUEST:Ljava/lang/String; = "CREATE_REQUEST"

.field public static final CREATE_REQUEST_ERROR:Ljava/lang/String; = "CREATE_REQUEST_ERROR"

.field public static final CREATE_REQUEST_SUCCESS:Ljava/lang/String; = "CREATE_REQUEST_SUCCESS"

.field public static final DELETE_MESSAGE:Ljava/lang/String; = "DELETE_MESSAGE"

.field public static final DIALOG_DISMISSED:Ljava/lang/String; = "DIALOG_DISMISSED"

.field public static final LOAD_COMMENTS_FROM_CACHE:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE"

.field public static final LOAD_COMMENTS_FROM_CACHE_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE_ERROR"

.field public static final LOAD_COMMENTS_FROM_CACHE_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

.field public static final LOAD_COMMENTS_INITIAL:Ljava/lang/String; = "LOAD_COMMENT_INITIAL"

.field public static final LOAD_COMMENTS_INITIAL_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_INITIAL_ERROR"

.field public static final LOAD_COMMENTS_INITIAL_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_INITIAL_SUCCESS"

.field public static final LOAD_COMMENTS_UPDATE:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE"

.field public static final LOAD_COMMENTS_UPDATE_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE_ERROR"

.field public static final LOAD_COMMENTS_UPDATE_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE_SUCCESS"

.field public static final LOAD_REQUEST:Ljava/lang/String; = "LOAD_REQUEST"

.field public static final LOAD_REQUEST_ERROR:Ljava/lang/String; = "LOAD_REQUEST_ERROR"

.field public static final LOAD_REQUEST_SUCCESS:Ljava/lang/String; = "LOAD_REQUEST_SUCCESS"

.field public static final LOAD_SETTINGS:Ljava/lang/String; = "LOAD_SETTINGS"

.field public static final LOAD_SETTINGS_ERROR:Ljava/lang/String; = "LOAD_SETTINGS_ERROR"

.field public static final LOAD_SETTINGS_SUCCESS:Ljava/lang/String; = "LOAD_SETTINGS_SUCCESS"

.field public static final REQUEST_CLOSED:Ljava/lang/String; = "REQUEST_CLOSED"

.field public static final SHOW_RETRY_DIALOG:Ljava/lang/String; = "SHOW_RETRY_DIALOG"

.field public static final SKIP_ACTION:Ljava/lang/String; = "SKIP_ACTION"

.field public static final START_CONFIG:Ljava/lang/String; = "START_CONFIG"


# instance fields
.field private final authProvider:Lzendesk/core/AuthenticationProvider;

.field private final belvedere:Lcom/shabakaty/downloader/ul;

.field private final executorService:Ljava/util/concurrent/Executor;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final sdkVersion:Ljava/lang/String;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;

.field private final uploadProvider:Lzendesk/support/UploadProvider;

.field private final zendesk:Lzendesk/core/Zendesk;


# direct methods
.method public constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/SupportSettingsProvider;Lcom/shabakaty/downloader/ul;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;Lzendesk/support/SupportBlipsProvider;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    .line 8
    iput-object p11, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p7, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    .line 11
    iput-object p9, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    .line 12
    iput-object p10, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method


# virtual methods
.method public androidOnPause()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "ANDROID_ON_PAUSE"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public androidOnResume()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "ANDROID_ON_RESUME"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public attachmentDownloaded(Lzendesk/support/request/StateRequestAttachment;Lcom/shabakaty/downloader/tp2;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/y93;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "ATTACHMENT_DOWNLOADED"

    .line 3
    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public clearAttachments()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "CLEAR_ATTACHMENTS"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clearMessages()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "CLEAR_MESSAGES"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Lzendesk/support/request/StateMessage;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "CREATE_COMMENT"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCommentAsync(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/i2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lcom/shabakaty/downloader/i2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    invoke-direct {v0, v1, v2, p2}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lcom/shabakaty/downloader/ul;Ljava/util/List;)V

    .line 2
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v3, Lzendesk/support/request/StateMessage;

    invoke-direct {v3, p1, p2}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 3
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    return-object p1
.end method

.method public createCommentError(Lcom/shabakaty/downloader/z41;Lzendesk/support/request/StateMessage;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_COMMENT_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCommentSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "CREATE_COMMENT_SUCCESS"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createRequestError(Lcom/shabakaty/downloader/z41;Lzendesk/support/request/StateMessage;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_REQUEST_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createRequestSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "CREATE_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public deleteMessage(Lzendesk/support/request/StateMessage;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "DELETE_MESSAGE"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public deselectAttachment(Ljava/util/List;)Lcom/shabakaty/downloader/i2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)",
            "Lcom/shabakaty/downloader/i2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "ATTACHMENTS_DESELECTED"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public initialLoadCommentsAsync()Lcom/shabakaty/downloader/i2;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lcom/shabakaty/downloader/ul;Z)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object v0

    return-object v0
.end method

.method public installStartConfigAsync(Lzendesk/support/request/RequestConfiguration;)Lcom/shabakaty/downloader/i2;
    .locals 8

    .line 1
    new-instance v7, Lzendesk/support/request/ActionInstallConfiguration;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    move-object v0, v7

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lzendesk/support/request/ActionInstallConfiguration;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/RequestConfiguration;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportBlipsProvider;)V

    .line 2
    invoke-static {v7}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    return-object p1
.end method

.method public loadComments(Z)Lcom/shabakaty/downloader/i2;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/i2;

    const-string v0, "LOAD_COMMENT_INITIAL"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/i2;

    const-string v0, "LOAD_COMMENTS_UPDATE"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public loadCommentsError(ZLcom/shabakaty/downloader/z41;)Lcom/shabakaty/downloader/i2;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_INITIAL_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_UPDATE_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V

    return-object p1
.end method

.method public loadCommentsFromCache()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadCommentsFromCacheAsync()Lcom/shabakaty/downloader/i2;
    .locals 7

    .line 1
    new-instance v6, Lzendesk/support/request/ActionLoadCachedComments;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/ActionLoadCachedComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportUiStorage;Lcom/shabakaty/downloader/ul;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 2
    invoke-static {v6}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object v0

    return-object v0
.end method

.method public loadCommentsFromCacheError()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_ERROR"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadCommentsFromCacheSuccess(Lzendesk/support/request/StateConversation;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public loadCommentsSuccess(ZLzendesk/support/CommentsResponse;Ljava/util/Map;)Lcom/shabakaty/downloader/i2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lzendesk/support/CommentsResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)",
            "Lcom/shabakaty/downloader/i2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/y93;

    invoke-direct {v0, p2, p3}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/i2;

    const-string p2, "LOAD_COMMENTS_INITIAL_SUCCESS"

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/i2;

    const-string p2, "LOAD_COMMENTS_UPDATE_SUCCESS"

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public loadRequest()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_REQUEST"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadRequestAsync()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadRequest;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v0, p0, v1}, Lzendesk/support/request/ActionLoadRequest;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object v0

    return-object v0
.end method

.method public loadRequestError(Lcom/shabakaty/downloader/z41;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_REQUEST_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V

    return-object v0
.end method

.method public loadRequestSuccess(Lzendesk/support/Request;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public loadSettings()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_SETTINGS"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadSettingsAsync()Lcom/shabakaty/downloader/i2;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadSettings;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    invoke-direct {v0, p0, v1, v2}, Lzendesk/support/request/ActionLoadSettings;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object v0

    return-object v0
.end method

.method public loadSettingsError(Lcom/shabakaty/downloader/z41;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_SETTINGS_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V

    return-object v0
.end method

.method public loadSettingsSuccess(Lzendesk/support/request/StateSettings;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "LOAD_SETTINGS_SUCCESS"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onDialogDismissed()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "DIALOG_DISMISSED"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public requestClosed()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "REQUEST_CLOSED"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public resendCommentAsync(Lzendesk/support/request/StateMessage;)Lcom/shabakaty/downloader/i2;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lcom/shabakaty/downloader/ul;Ljava/util/List;)V

    .line 3
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v1, p0, v2, v0, p1}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 4
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    return-object p1
.end method

.method public selectAttachment(Ljava/util/List;)Lcom/shabakaty/downloader/i2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tp2;",
            ">;)",
            "Lcom/shabakaty/downloader/i2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "ATTACHMENTS_SELECTED"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public showRetryDialog(Ljava/util/List;)Lcom/shabakaty/downloader/i2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lcom/shabakaty/downloader/i2;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "SHOW_RETRY_DIALOG"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public skipAction()Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "SKIP_ACTION"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public startConfig(Lzendesk/support/request/RequestConfiguration;)Lcom/shabakaty/downloader/i2;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i2;

    const-string v1, "START_CONFIG"

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/i2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateCommentsAsync()Lcom/shabakaty/downloader/i2;
    .locals 4

    .line 1
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lcom/shabakaty/downloader/ul;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lcom/shabakaty/downloader/ul;Z)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object v0

    return-object v0
.end method

.method public updateNameEmailAsync(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/i2;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/ActionUpdateNameEmail;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    invoke-direct {v0, p1, p2, v1, v2}, Lzendesk/support/request/ActionUpdateNameEmail;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;)V

    .line 2
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    return-object p1
.end method
