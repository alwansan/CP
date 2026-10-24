.class Lzendesk/support/request/ComponentRequestRouter;
.super Ljava/lang/Object;
.source "ComponentRequestRouter.java"

# interfaces
.implements Lcom/shabakaty/downloader/qi2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentRequestRouter$RequestScreen;,
        Lzendesk/support/request/ComponentRequestRouter$RequestRouterSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/qi2<",
        "Lzendesk/support/request/ComponentRequestRouter$RequestScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/shabakaty/downloader/r9;

.field private final component:Lzendesk/support/request/RequestComponent;

.field private currentScreen:Lzendesk/support/request/RequestView;

.field private final disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

.field private final enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

.field private final isCleanStart:Z

.field private final loadingView:Lzendesk/support/request/RequestViewLoading;

.field private final root:Landroid/view/ViewGroup;

.field private final screen:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lzendesk/support/request/ComponentRequestRouter$RequestScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r9;Landroid/view/ViewGroup;Lzendesk/support/request/RequestViewConversationsDisabled;Lzendesk/support/request/RequestViewConversationsEnabled;Lzendesk/support/request/RequestViewLoading;Lzendesk/support/request/RequestComponent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->activity:Lcom/shabakaty/downloader/r9;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ComponentRequestRouter;->root:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ComponentRequestRouter;->disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ComponentRequestRouter;->enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/ComponentRequestRouter;->loadingView:Lzendesk/support/request/RequestViewLoading;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ComponentRequestRouter;->component:Lzendesk/support/request/RequestComponent;

    .line 8
    iput-boolean p7, p0, Lzendesk/support/request/ComponentRequestRouter;->isCleanStart:Z

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->screen:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/r9;ZLzendesk/support/request/RequestComponent;)Lzendesk/support/request/ComponentRequestRouter;
    .locals 9

    .line 1
    new-instance v8, Lzendesk/support/request/ComponentRequestRouter;

    const v0, 0x7f0a0055

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const v0, 0x7f0a0050

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lzendesk/support/request/RequestViewConversationsDisabled;

    const v0, 0x7f0a004f

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lzendesk/support/request/RequestViewConversationsEnabled;

    const v0, 0x7f0a0051

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lzendesk/support/request/RequestViewLoading;

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/ComponentRequestRouter;-><init>(Lcom/shabakaty/downloader/r9;Landroid/view/ViewGroup;Lzendesk/support/request/RequestViewConversationsDisabled;Lzendesk/support/request/RequestViewConversationsEnabled;Lzendesk/support/request/RequestViewLoading;Lzendesk/support/request/RequestComponent;Z)V

    return-object v8
.end method

.method private varargs displayView(Landroid/view/View;[Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestRouter;->root:Landroid/view/ViewGroup;

    new-instance v1, Lcom/shabakaty/downloader/t91;

    invoke-direct {v1}, Lcom/shabakaty/downloader/t91;-><init>()V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/hq4;->a(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/dq4;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->activity:Lcom/shabakaty/downloader/r9;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r9;->invalidateOptionsMenu()V

    .line 6
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->root:Landroid/view/ViewGroup;

    .line 7
    sget-object p2, Lcom/shabakaty/downloader/hq4;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lcom/shabakaty/downloader/hq4;->b()Lcom/shabakaty/downloader/ad;

    move-result-object p2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 14
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 15
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/dq4;->o(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentScreen()Lzendesk/support/request/RequestView;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestRouter;->currentScreen:Lzendesk/support/request/RequestView;

    return-object v0
.end method

.method public getSelector()Lcom/shabakaty/downloader/oc4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/oc4<",
            "Lzendesk/support/request/ComponentRequestRouter$RequestScreen;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/request/ComponentRequestRouter$RequestRouterSelector;

    invoke-direct {v0}, Lzendesk/support/request/ComponentRequestRouter$RequestRouterSelector;-><init>()V

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentRequestRouter$RequestScreen;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentRequestRouter;->update(Lzendesk/support/request/ComponentRequestRouter$RequestScreen;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentRequestRouter$RequestScreen;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentRequestRouter;->screen:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lzendesk/support/request/ComponentRequestRouter$1;->$SwitchMap$zendesk$support$request$ComponentRequestRouter$RequestScreen:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "RequestActivity"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "Installing screen: \'Finish\'"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->activity:Lcom/shabakaty/downloader/r9;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "Installing screen: \'Conversations Enabled Screen\'"

    .line 6
    invoke-static {v0, v4, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->currentScreen:Lzendesk/support/request/RequestView;

    new-array v0, v1, [Landroid/view/View;

    .line 8
    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

    aput-object v1, v0, v3

    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->loadingView:Lzendesk/support/request/RequestViewLoading;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/ComponentRequestRouter;->displayView(Landroid/view/View;[Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

    iget-object v0, p0, Lzendesk/support/request/ComponentRequestRouter;->component:Lzendesk/support/request/RequestComponent;

    iget-boolean v1, p0, Lzendesk/support/request/ComponentRequestRouter;->isCleanStart:Z

    invoke-virtual {p1, v0, v1}, Lzendesk/support/request/RequestViewConversationsEnabled;->init(Lzendesk/support/request/RequestComponent;Z)V

    goto :goto_0

    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "Installing screen: \'Conversations Disabled Screen\'"

    .line 10
    invoke-static {v0, v4, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->currentScreen:Lzendesk/support/request/RequestView;

    new-array v0, v1, [Landroid/view/View;

    .line 12
    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

    aput-object v1, v0, v3

    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->loadingView:Lzendesk/support/request/RequestViewLoading;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/ComponentRequestRouter;->displayView(Landroid/view/View;[Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

    iget-object v0, p0, Lzendesk/support/request/ComponentRequestRouter;->component:Lzendesk/support/request/RequestComponent;

    invoke-virtual {p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled;->init(Lzendesk/support/request/RequestComponent;)V

    goto :goto_0

    :cond_4
    new-array p1, v3, [Ljava/lang/Object;

    const-string v4, "Installing screen: \'Loading Screen\'"

    .line 14
    invoke-static {v0, v4, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->loadingView:Lzendesk/support/request/RequestViewLoading;

    iput-object p1, p0, Lzendesk/support/request/ComponentRequestRouter;->currentScreen:Lzendesk/support/request/RequestView;

    new-array v0, v1, [Landroid/view/View;

    .line 16
    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->disabledView:Lzendesk/support/request/RequestViewConversationsDisabled;

    aput-object v1, v0, v3

    iget-object v1, p0, Lzendesk/support/request/ComponentRequestRouter;->enabledView:Lzendesk/support/request/RequestViewConversationsEnabled;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/ComponentRequestRouter;->displayView(Landroid/view/View;[Landroid/view/View;)V

    :goto_0
    return-void
.end method
