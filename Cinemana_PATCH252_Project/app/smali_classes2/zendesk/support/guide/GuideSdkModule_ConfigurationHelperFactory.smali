.class public final Lzendesk/support/guide/GuideSdkModule_ConfigurationHelperFactory;
.super Ljava/lang/Object;
.source "GuideSdkModule_ConfigurationHelperFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# direct methods
.method public static configurationHelper(Lzendesk/support/guide/GuideSdkModule;)Lcom/shabakaty/downloader/ua0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/guide/GuideSdkModule;->configurationHelper()Lcom/shabakaty/downloader/ua0;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
