.class public interface abstract Lzendesk/support/SupportSdkComponent;
.super Ljava/lang/Object;
.source "SupportSdkComponent.java"


# virtual methods
.method public abstract inject(Lzendesk/support/DeepLinkingBroadcastReceiver;)V
.end method

.method public abstract inject(Lzendesk/support/SdkDependencyProvider;)V
.end method

.method public abstract plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;
.end method

.method public abstract plus(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestListViewModule;)Lzendesk/support/requestlist/RequestListComponent;
.end method
