.class Lcom/connectsdk/service/WebOSTVService$23;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->getChannelCurrentProgramInfo(ZLcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceCommand;
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
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$23;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$23;->val$listener:Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$23;->val$listener:Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$23;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-static {v0, p1}, Lcom/connectsdk/service/WebOSTVService;->access$200(Lcom/connectsdk/service/WebOSTVService;Lorg/json/JSONObject;)Lcom/connectsdk/core/ProgramInfo;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$23;->val$listener:Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
