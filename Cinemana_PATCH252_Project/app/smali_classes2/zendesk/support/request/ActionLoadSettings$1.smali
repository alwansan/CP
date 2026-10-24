.class Lzendesk/support/request/ActionLoadSettings$1;
.super Lcom/shabakaty/downloader/n95;
.source "ActionLoadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionLoadSettings;->execute(Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/zp1;Lzendesk/support/request/AsyncMiddleware$Callback;)V
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
.field public final synthetic this$0:Lzendesk/support/request/ActionLoadSettings;

.field public final synthetic val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field public final synthetic val$dispatcher:Lcom/shabakaty/downloader/eu0;


# direct methods
.method public constructor <init>(Lzendesk/support/request/ActionLoadSettings;Lcom/shabakaty/downloader/eu0;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    iput-object p2, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lcom/shabakaty/downloader/eu0;

    iput-object p3, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-direct {p0}, Lcom/shabakaty/downloader/n95;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shabakaty/downloader/z41;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RequestActivity"

    const-string v2, "Error loading settings. Error: \'%s\'"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/tk2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lcom/shabakaty/downloader/eu0;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadSettings;->access$100(Lzendesk/support/request/ActionLoadSettings;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lzendesk/support/request/ActionFactory;->loadSettingsError(Lcom/shabakaty/downloader/z41;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/eu0;->e(Lcom/shabakaty/downloader/i2;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ActionLoadSettings$1;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v0, p1}, Lzendesk/support/request/ActionLoadSettings;->access$000(Lzendesk/support/request/ActionLoadSettings;Lzendesk/support/SupportSdkSettings;)Lzendesk/support/request/StateSettings;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lcom/shabakaty/downloader/eu0;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadSettings;->access$100(Lzendesk/support/request/ActionLoadSettings;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lzendesk/support/request/ActionFactory;->loadSettingsSuccess(Lzendesk/support/request/StateSettings;)Lcom/shabakaty/downloader/i2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/eu0;->e(Lcom/shabakaty/downloader/i2;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
