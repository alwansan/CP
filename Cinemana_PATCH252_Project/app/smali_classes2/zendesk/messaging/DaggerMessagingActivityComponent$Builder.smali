.class public final Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerMessagingActivityComponent.java"

# interfaces
.implements Lzendesk/messaging/MessagingActivityComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/DaggerMessagingActivityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public activity:Lcom/shabakaty/downloader/r9;

.field public messagingComponent:Lzendesk/messaging/MessagingComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/messaging/DaggerMessagingActivityComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public activity(Lcom/shabakaty/downloader/r9;)Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->activity:Lcom/shabakaty/downloader/r9;

    return-object p0
.end method

.method public bridge synthetic activity(Lcom/shabakaty/downloader/r9;)Lzendesk/messaging/MessagingActivityComponent$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->activity(Lcom/shabakaty/downloader/r9;)Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lzendesk/messaging/MessagingActivityComponent;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->activity:Lcom/shabakaty/downloader/r9;

    const-class v1, Lcom/shabakaty/downloader/r9;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    const-class v1, Lzendesk/messaging/MessagingComponent;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/iq6;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lzendesk/messaging/DaggerMessagingActivityComponent;

    iget-object v1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    iget-object v2, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->activity:Lcom/shabakaty/downloader/r9;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lzendesk/messaging/DaggerMessagingActivityComponent;-><init>(Lzendesk/messaging/MessagingComponent;Lcom/shabakaty/downloader/r9;Lzendesk/messaging/DaggerMessagingActivityComponent$1;)V

    return-object v0
.end method

.method public messagingComponent(Lzendesk/messaging/MessagingComponent;)Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->messagingComponent:Lzendesk/messaging/MessagingComponent;

    return-object p0
.end method

.method public bridge synthetic messagingComponent(Lzendesk/messaging/MessagingComponent;)Lzendesk/messaging/MessagingActivityComponent$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;->messagingComponent(Lzendesk/messaging/MessagingComponent;)Lzendesk/messaging/DaggerMessagingActivityComponent$Builder;

    move-result-object p1

    return-object p1
.end method
