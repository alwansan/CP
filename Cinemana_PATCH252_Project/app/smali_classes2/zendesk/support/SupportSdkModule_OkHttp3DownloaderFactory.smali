.class public final Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;
.super Ljava/lang/Object;
.source "SupportSdkModule_OkHttp3DownloaderFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final module:Lzendesk/support/SupportSdkModule;

.field public final okHttpClientProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/a63;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/a63;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->okHttpClientProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Lcom/shabakaty/downloader/oj3;)Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/a63;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;-><init>(Lzendesk/support/SupportSdkModule;Lcom/shabakaty/downloader/oj3;)V

    return-object v0
.end method

.method public static okHttp3Downloader(Lzendesk/support/SupportSdkModule;Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/y53;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/SupportSdkModule;->okHttp3Downloader(Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/y53;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/shabakaty/downloader/y53;
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->okHttpClientProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/a63;

    invoke-static {v0, v1}, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->okHttp3Downloader(Lzendesk/support/SupportSdkModule;Lcom/shabakaty/downloader/a63;)Lcom/shabakaty/downloader/y53;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->get()Lcom/shabakaty/downloader/y53;

    move-result-object v0

    return-object v0
.end method
