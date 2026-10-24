.class public final Lzendesk/support/DeepLinkingBroadcastReceiver_MembersInjector;
.super Ljava/lang/Object;
.source "DeepLinkingBroadcastReceiver_MembersInjector.java"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pr2<",
        "Lzendesk/support/DeepLinkingBroadcastReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectRegistry(Lzendesk/support/DeepLinkingBroadcastReceiver;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/DeepLinkingBroadcastReceiver;->registry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method
