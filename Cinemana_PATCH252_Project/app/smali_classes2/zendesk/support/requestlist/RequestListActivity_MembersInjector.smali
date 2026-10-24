.class public final Lzendesk/support/requestlist/RequestListActivity_MembersInjector;
.super Ljava/lang/Object;
.source "RequestListActivity_MembersInjector.java"

# interfaces
.implements Lcom/shabakaty/downloader/pr2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/pr2<",
        "Lzendesk/support/requestlist/RequestListActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionHandlerRegistryProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final modelProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;"
        }
    .end annotation
.end field

.field private final presenterProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final syncHandlerProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->presenterProvider:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->viewProvider:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->modelProvider:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->actionHandlerRegistryProvider:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->syncHandlerProvider:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public static create(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)Lcom/shabakaty/downloader/pr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;)",
            "Lcom/shabakaty/downloader/pr2<",
            "Lzendesk/support/requestlist/RequestListActivity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    return-object v6
.end method

.method public static injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method public static injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListModel;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->model:Lzendesk/support/requestlist/RequestListModel;

    return-void
.end method

.method public static injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListPresenter;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    return-void
.end method

.method public static injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListSyncHandler;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    return-void
.end method

.method public static injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListView;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListActivity;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectMembers(Lzendesk/support/requestlist/RequestListActivity;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/requestlist/RequestListActivity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->presenterProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->viewProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->modelProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->actionHandlerRegistryProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ActionHandlerRegistry;

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->syncHandlerProvider:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    return-void
.end method
