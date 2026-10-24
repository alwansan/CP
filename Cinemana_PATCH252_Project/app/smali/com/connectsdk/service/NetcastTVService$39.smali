.class Lcom/connectsdk/service/NetcastTVService$39;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService;->sendVirtualKeyCode(ILcom/connectsdk/service/capability/listeners/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;

.field public final synthetic val$keycode:I

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;ILcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$39;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iput p2, p0, Lcom/connectsdk/service/NetcastTVService$39;->val$keycode:I

    iput-object p3, p0, Lcom/connectsdk/service/NetcastTVService$39;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$39;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    const-wide/16 v0, 0x96

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/NetcastTVService$39;->this$0:Lcom/connectsdk/service/NetcastTVService;

    const-string v0, "/udap/api/command"

    invoke-static {p1, v0}, Lcom/connectsdk/service/NetcastTVService;->access$300(Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$39;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget v1, p0, Lcom/connectsdk/service/NetcastTVService$39;->val$keycode:I

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/NetcastTVService;->getHttpMessageForHandleKeyInput(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    iget-object v2, p0, Lcom/connectsdk/service/NetcastTVService$39;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iget-object v3, p0, Lcom/connectsdk/service/NetcastTVService$39;->val$listener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 6
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method
