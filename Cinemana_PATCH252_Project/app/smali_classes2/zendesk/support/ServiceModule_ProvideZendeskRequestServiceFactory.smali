.class public final Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;
.super Ljava/lang/Object;
.source "ServiceModule_ProvideZendeskRequestServiceFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final requestServiceProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestService;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->requestServiceProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;)Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/RequestService;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;-><init>(Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideZendeskRequestService(Ljava/lang/Object;)Lzendesk/support/ZendeskRequestService;
    .locals 1

    .line 1
    check-cast p0, Lzendesk/support/RequestService;

    invoke-static {p0}, Lzendesk/support/ServiceModule;->provideZendeskRequestService(Lzendesk/support/RequestService;)Lzendesk/support/ZendeskRequestService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->get()Lzendesk/support/ZendeskRequestService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskRequestService;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->requestServiceProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->provideZendeskRequestService(Ljava/lang/Object;)Lzendesk/support/ZendeskRequestService;

    move-result-object v0

    return-object v0
.end method
