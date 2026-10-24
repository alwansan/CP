.class public abstract Lzendesk/messaging/MessagingActivityModule;
.super Ljava/lang/Object;
.source "MessagingActivityModule.java"


# direct methods
.method public static belvedereUi(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lzendesk/belvedere/a;->a(Lcom/shabakaty/downloader/r9;)Lzendesk/belvedere/c;

    move-result-object p0

    return-object p0
.end method

.method public static dateProvider()Lzendesk/messaging/components/DateProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/messaging/components/DateProvider;

    invoke-direct {v0}, Lzendesk/messaging/components/DateProvider;-><init>()V

    return-object v0
.end method

.method public static handler()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static multilineResponseOptionsEnabled(Lzendesk/messaging/MessagingComponent;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lzendesk/messaging/MessagingComponent;->messagingConfiguration()Lzendesk/messaging/MessagingConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lzendesk/messaging/MessagingConfiguration;->isMultilineResponseOptionsEnabled()Z

    move-result p0

    return p0
.end method
