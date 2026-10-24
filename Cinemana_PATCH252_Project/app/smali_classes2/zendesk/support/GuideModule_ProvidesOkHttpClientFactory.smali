.class public final Lzendesk/support/GuideModule_ProvidesOkHttpClientFactory;
.super Ljava/lang/Object;
.source "GuideModule_ProvidesOkHttpClientFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# direct methods
.method public static providesOkHttpClient(Lzendesk/support/GuideModule;)Lcom/shabakaty/downloader/a63;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/GuideModule;->providesOkHttpClient()Lcom/shabakaty/downloader/a63;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
