.class public final Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
.super Ljava/lang/Object;
.source "ProviderModule_ProvideSupportBlipsProviderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final blipsProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final module:Lzendesk/support/ProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/BlipsProvider;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;-><init>(Lzendesk/support/ProviderModule;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/ProviderModule;->provideSupportBlipsProvider(Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->get()Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportBlipsProvider;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/BlipsProvider;

    invoke-static {v0, v1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method
