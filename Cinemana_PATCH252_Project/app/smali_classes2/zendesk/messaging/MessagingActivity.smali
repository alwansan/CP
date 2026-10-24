.class public Lzendesk/messaging/MessagingActivity;
.super Lcom/shabakaty/downloader/r9;
.source "MessagingActivity.java"


# instance fields
.field public eventFactory:Lzendesk/messaging/EventFactory;

.field public messagingCellFactory:Lzendesk/messaging/ui/MessagingCellFactory;

.field public messagingComposer:Lzendesk/messaging/ui/MessagingComposer;

.field public messagingDialog:Lzendesk/messaging/MessagingDialog;

.field public messagingView:Lzendesk/messaging/ui/MessagingView;

.field public picasso:Lcom/squareup/picasso/k;

.field public viewModel:Lzendesk/messaging/MessagingViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r9;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lzendesk/messaging/MessagingActivity;)Lzendesk/messaging/ui/MessagingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/messaging/MessagingActivity;->messagingView:Lzendesk/messaging/ui/MessagingView;

    return-object p0
.end method

.method public static builder()Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/messaging/MessagingConfiguration$Builder;

    invoke-direct {v0}, Lzendesk/messaging/MessagingConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ji1;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-virtual {v1, p1, p2, p3}, Lzendesk/messaging/EventFactory;->onActivityResult(IILandroid/content/Intent;)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/MessagingViewModel;->onEvent(Lzendesk/messaging/Event;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "messaging_component"

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ji1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lzendesk/messaging/R$style;->ZendeskActivityDefaultTheme:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-class v1, Lzendesk/messaging/MessagingConfiguration;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string v4, "ZENDESK_CONFIGURATION"

    .line 4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/z90;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 8
    :goto_0
    check-cast p1, Lzendesk/messaging/MessagingConfiguration;

    const-string v1, "MessagingActivity"

    const/4 v4, 0x0

    if-nez p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use MessagingActivity.builder()"

    .line 9
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_1
    sget v5, Lcom/shabakaty/downloader/xp;->s:I

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v5

    const-string v6, "CacheFragment"

    .line 13
    invoke-virtual {v5, v6}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    .line 14
    instance-of v8, v7, Lcom/shabakaty/downloader/xp;

    if-eqz v8, :cond_2

    .line 15
    check-cast v7, Lcom/shabakaty/downloader/xp;

    goto :goto_1

    .line 16
    :cond_2
    new-instance v7, Lcom/shabakaty/downloader/xp;

    invoke-direct {v7}, Lcom/shabakaty/downloader/xp;-><init>()V

    .line 17
    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 18
    new-instance v8, Landroidx/fragment/app/a;

    invoke-direct {v8, v5}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 19
    invoke-virtual {v8, v4, v7, v6, v2}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v8}, Landroidx/fragment/app/a;->d()I

    .line 21
    :goto_1
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :try_start_0
    iget-object v2, v7, Lcom/shabakaty/downloader/xp;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    check-cast v3, Lzendesk/messaging/MessagingComponent;

    if-nez v3, :cond_4

    .line 24
    invoke-virtual {p1}, Lzendesk/messaging/MessagingConfiguration;->getEngines()Ljava/util/List;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/shabakaty/downloader/h50;->f(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "No Engines found in MessagingConfiguration. Please use MessagingActivity.builder()"

    .line 26
    invoke-static {v1, v0, p1}, Lcom/shabakaty/downloader/tk2;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 28
    :cond_3
    invoke-static {}, Lzendesk/messaging/DaggerMessagingComponent;->builder()Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lzendesk/messaging/MessagingComponent$Builder;->appContext(Landroid/content/Context;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v1

    .line 30
    invoke-interface {v1, v2}, Lzendesk/messaging/MessagingComponent$Builder;->engines(Ljava/util/List;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v1

    .line 31
    invoke-interface {v1, p1}, Lzendesk/messaging/MessagingComponent$Builder;->messagingConfiguration(Lzendesk/messaging/MessagingConfiguration;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Lzendesk/messaging/MessagingComponent$Builder;->build()Lzendesk/messaging/MessagingComponent;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Lzendesk/messaging/MessagingComponent;->messagingViewModel()Lzendesk/messaging/MessagingViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/messaging/MessagingViewModel;->start()V

    .line 34
    iget-object v1, v7, Lcom/shabakaty/downloader/xp;->r:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_4
    invoke-static {}, Lzendesk/messaging/DaggerMessagingActivityComponent;->builder()Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 36
    invoke-interface {v0, v3}, Lzendesk/messaging/MessagingActivityComponent$Builder;->messagingComponent(Lzendesk/messaging/MessagingComponent;)Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Lzendesk/messaging/MessagingActivityComponent$Builder;->activity(Lcom/shabakaty/downloader/r9;)Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lzendesk/messaging/MessagingActivityComponent$Builder;->build()Lzendesk/messaging/MessagingActivityComponent;

    move-result-object v0

    .line 39
    invoke-interface {v0, p0}, Lzendesk/messaging/MessagingActivityComponent;->inject(Lzendesk/messaging/MessagingActivity;)V

    .line 40
    sget v0, Lzendesk/messaging/R$layout;->zui_activity_messaging:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->setContentView(I)V

    .line 41
    sget v0, Lzendesk/messaging/R$id;->zui_view_messaging:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessagingView;

    iput-object v0, p0, Lzendesk/messaging/MessagingActivity;->messagingView:Lzendesk/messaging/ui/MessagingView;

    .line 42
    sget v0, Lzendesk/messaging/R$id;->zui_toolbar:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 43
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/r9;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 44
    new-instance v1, Lzendesk/messaging/MessagingActivity$1;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$1;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r9;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lzendesk/messaging/MessagingConfiguration;->getToolbarTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    sget p1, Lzendesk/messaging/R$id;->zui_input_box:I

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/r9;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/messaging/ui/InputBox;

    .line 47
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->messagingComposer:Lzendesk/messaging/ui/MessagingComposer;

    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/MessagingComposer;->bind(Lzendesk/messaging/ui/InputBox;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 4
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMenuItems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/h50;->f(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "MessagingActivity"

    if-eqz v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Menu: no items, hiding..."

    .line 6
    invoke-static {v3, v0, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/MenuItem;

    .line 8
    invoke-virtual {v2}, Lzendesk/messaging/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v2}, Lzendesk/messaging/MenuItem;->getLabelId()I

    move-result v2

    invoke-interface {p1, v1, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Menu: items updated."

    .line 9
    invoke-static {v3, v0, p1}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MessagingActivity"

    const-string v2, "onDestroy() called, clearing..."

    .line 4
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/tk2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->onCleared()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v1, p1}, Lzendesk/messaging/EventFactory;->menuItemClicked(I)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/MessagingViewModel;->onEvent(Lzendesk/messaging/Event;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/r9;->onStart()V

    .line 2
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMessagingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$2;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$2;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 4
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveNavigationStream()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$3;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$3;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 5
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveInterfaceUpdateItems()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$4;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$4;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Lzendesk/messaging/SingleLiveEvent;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 6
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMenuItems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$5;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$5;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    .line 7
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getDialogUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->messagingDialog:Lzendesk/messaging/MessagingDialog;

    invoke-virtual {v0, p0, v1}, Lzendesk/messaging/SingleLiveEvent;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    :cond_0
    return-void
.end method
