.class public final Lzendesk/support/guide/HelpCenterFragment_MembersInjector;
.super Ljava/lang/Object;
.source "HelpCenterFragment_MembersInjector.java"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pr2<",
        "Lzendesk/support/guide/HelpCenterFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectHelpCenterProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/support/HelpCenterProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-void
.end method

.method public static injectNetworkInfoProvider(Lzendesk/support/guide/HelpCenterFragment;Lzendesk/core/NetworkInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    return-void
.end method
