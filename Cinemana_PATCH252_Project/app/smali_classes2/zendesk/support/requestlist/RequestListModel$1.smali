.class Lzendesk/support/requestlist/RequestListModel$1;
.super Lcom/shabakaty/downloader/n95;
.source "RequestListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListModel;->loadItems(ZLzendesk/support/SupportSdkSettings;Lcom/shabakaty/downloader/n95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/n95<",
        "Ljava/util/List<",
        "Lzendesk/support/requestlist/RequestInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/requestlist/RequestListModel;

.field public final synthetic val$callback:Lcom/shabakaty/downloader/n95;

.field public final synthetic val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListModel;Lzendesk/support/SupportSdkSettings;Lcom/shabakaty/downloader/n95;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onError(Lcom/shabakaty/downloader/z41;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListModel$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/SupportSdkSettings;->isShowClosedRequests()Z

    move-result v1

    .line 4
    invoke-static {v0, p1, v1}, Lzendesk/support/requestlist/RequestListModel;->access$000(Lzendesk/support/requestlist/RequestListModel;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListModel;->access$100(Lzendesk/support/requestlist/RequestListModel;)Lcom/shabakaty/downloader/l95;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/h50;->h(Ljava/util/Collection;Lcom/shabakaty/downloader/l95;)Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListModel;->access$200(Lzendesk/support/requestlist/RequestListModel;)Lzendesk/core/MemoryCache;

    move-result-object v0

    const-string v1, "request_list_items"

    invoke-interface {v0, v1, p1}, Lzendesk/core/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/shabakaty/downloader/n95;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n95;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
