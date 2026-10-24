.class Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;
.super Ljava/lang/Object;
.source "WebOSTVKeyboardInput.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->connect(Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;)Lcom/connectsdk/service/command/URLServiceSubscription;
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
.field public final synthetic this$0:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    iput-object p2, p0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;->val$listener:Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;->val$listener:Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;->this$0:Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;

    invoke-static {v0, p1}, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;->access$100(Lcom/connectsdk/service/webos/WebOSTVKeyboardInput;Lorg/json/JSONObject;)Lcom/connectsdk/core/TextInputStatusInfo;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/webos/WebOSTVKeyboardInput$2;->val$listener:Lcom/connectsdk/service/capability/TextInputControl$TextInputStatusListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
