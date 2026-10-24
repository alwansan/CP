.class public final Lzendesk/messaging/DaggerMessagingComponent;
.super Ljava/lang/Object;
.source "DaggerMessagingComponent.java"

# interfaces
.implements Lzendesk/messaging/MessagingComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/DaggerMessagingComponent$Builder;
    }
.end annotation


# instance fields
.field public appContextProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field public belvedereProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ul;",
            ">;"
        }
    .end annotation
.end field

.field public enginesProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;>;"
        }
    .end annotation
.end field

.field public final messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

.field public messagingConfigurationProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public messagingConversationLogProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingConversationLog;",
            ">;"
        }
    .end annotation
.end field

.field public messagingEventSerializerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingEventSerializer;",
            ">;"
        }
    .end annotation
.end field

.field public messagingModelProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingModel;",
            ">;"
        }
    .end annotation
.end field

.field public messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public picassoProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/squareup/picasso/k;",
            ">;"
        }
    .end annotation
.end field

.field public resourcesProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public timestampFactoryProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/messaging/TimestampFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;",
            "Lzendesk/messaging/MessagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lzendesk/messaging/DaggerMessagingComponent;->initialize(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;Lzendesk/messaging/DaggerMessagingComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/DaggerMessagingComponent;-><init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V

    return-void
.end method

.method public static builder()Lzendesk/messaging/MessagingComponent$Builder;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/messaging/DaggerMessagingComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/messaging/DaggerMessagingComponent$Builder;-><init>(Lzendesk/messaging/DaggerMessagingComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public belvedere()Lcom/shabakaty/downloader/ul;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->belvedereProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ul;

    return-object v0
.end method

.method public belvedereMediaHolder()Lzendesk/messaging/BelvedereMediaHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/BelvedereMediaHolder;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;",
            "Lzendesk/messaging/MessagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/x12;

    const-string v1, "instance cannot be null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/x12;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->appContextProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    invoke-static {v0}, Lzendesk/messaging/MessagingModule_PicassoFactory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingModule_PicassoFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->picassoProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->appContextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p1}, Lzendesk/messaging/MessagingModule_ResourcesFactory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingModule_ResourcesFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->resourcesProvider:Lcom/shabakaty/downloader/oj3;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/x12;

    .line 8
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/x12;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->enginesProvider:Lcom/shabakaty/downloader/oj3;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/x12;

    .line 12
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/x12;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingConfigurationProvider:Lcom/shabakaty/downloader/oj3;

    .line 15
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->appContextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p1}, Lzendesk/messaging/TimestampFactory_Factory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/TimestampFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->timestampFactoryProvider:Lcom/shabakaty/downloader/oj3;

    .line 16
    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingComponent;->appContextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p2, p1}, Lzendesk/messaging/MessagingEventSerializer_Factory;->create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingEventSerializer_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingEventSerializerProvider:Lcom/shabakaty/downloader/oj3;

    .line 17
    invoke-static {p1}, Lzendesk/messaging/MessagingConversationLog_Factory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingConversationLog_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingConversationLogProvider:Lcom/shabakaty/downloader/oj3;

    .line 18
    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingComponent;->resourcesProvider:Lcom/shabakaty/downloader/oj3;

    iget-object p3, p0, Lzendesk/messaging/DaggerMessagingComponent;->enginesProvider:Lcom/shabakaty/downloader/oj3;

    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingConfigurationProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p2, p3, v0, p1}, Lzendesk/messaging/MessagingModel_Factory;->create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingModel_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingModelProvider:Lcom/shabakaty/downloader/oj3;

    .line 19
    invoke-static {p1}, Lzendesk/messaging/MessagingViewModel_Factory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingViewModel_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;

    .line 20
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->appContextProvider:Lcom/shabakaty/downloader/oj3;

    invoke-static {p1}, Lzendesk/messaging/MessagingModule_BelvedereFactory;->create(Lcom/shabakaty/downloader/oj3;)Lzendesk/messaging/MessagingModule_BelvedereFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->belvedereProvider:Lcom/shabakaty/downloader/oj3;

    .line 21
    invoke-static {}, Lzendesk/messaging/BelvedereMediaHolder_Factory;->create()Lzendesk/messaging/BelvedereMediaHolder_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/zu0;->a(Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/oj3;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent;->belvedereMediaHolderProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public messagingConfiguration()Lzendesk/messaging/MessagingConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

    return-object v0
.end method

.method public messagingViewModel()Lzendesk/messaging/MessagingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->messagingViewModelProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/MessagingViewModel;

    return-object v0
.end method

.method public picasso()Lcom/squareup/picasso/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->picassoProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/k;

    return-object v0
.end method

.method public resources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent;->resourcesProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method
