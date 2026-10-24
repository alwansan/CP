.class Lzendesk/support/requestlist/RequestListPresenter$4;
.super Lcom/shabakaty/downloader/n95;
.source "RequestListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->fetchSettingsFromNetwork(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/n95<",
        "Lzendesk/support/SupportSdkSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/support/requestlist/RequestListPresenter;

.field public final synthetic val$callback:Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->val$callback:Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->val$callback:Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;->onSettings(Lzendesk/support/SupportSdkSettings;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object p1

    const-string v0, "Conversations are disabled in sdk settings, closing the request list screen!"

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->finish(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$4;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListPresenter;->access$200(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/RequestListModel;->cacheSupportSdkSettings(Lzendesk/support/SupportSdkSettings;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter$4;->val$callback:Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;

    invoke-interface {v0, p1}, Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;->onSettings(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method
