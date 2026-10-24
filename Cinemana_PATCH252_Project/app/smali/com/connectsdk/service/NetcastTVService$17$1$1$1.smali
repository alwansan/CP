.class Lcom/connectsdk/service/NetcastTVService$17$1$1$1;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/Launcher$AppListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService$17$1$1;->onSuccess(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$3:Lcom/connectsdk/service/NetcastTVService$17$1$1;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService$17$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$17$1$1$1;->this$3:Lcom/connectsdk/service/NetcastTVService$17$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$17$1$1$1;->this$3:Lcom/connectsdk/service/NetcastTVService$17$1$1;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17$1$1;->this$2:Lcom/connectsdk/service/NetcastTVService$17$1;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17$1;->this$1:Lcom/connectsdk/service/NetcastTVService$17;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppListListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService$17$1$1$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/core/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$17$1$1$1;->this$3:Lcom/connectsdk/service/NetcastTVService$17$1$1;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17$1$1;->this$2:Lcom/connectsdk/service/NetcastTVService$17$1;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17$1;->this$1:Lcom/connectsdk/service/NetcastTVService$17;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService$17;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v0, v0, Lcom/connectsdk/service/NetcastTVService;->applications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService$17$1$1$1;->this$3:Lcom/connectsdk/service/NetcastTVService$17$1$1;

    iget-object p1, p1, Lcom/connectsdk/service/NetcastTVService$17$1$1;->this$2:Lcom/connectsdk/service/NetcastTVService$17$1;

    iget-object p1, p1, Lcom/connectsdk/service/NetcastTVService$17$1;->this$1:Lcom/connectsdk/service/NetcastTVService$17;

    iget-object v0, p1, Lcom/connectsdk/service/NetcastTVService$17;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppListListener;

    iget-object p1, p1, Lcom/connectsdk/service/NetcastTVService$17;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object p1, p1, Lcom/connectsdk/service/NetcastTVService;->applications:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
