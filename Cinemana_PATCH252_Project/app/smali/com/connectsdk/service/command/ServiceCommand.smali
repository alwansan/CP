.class public Lcom/connectsdk/service/command/ServiceCommand;
.super Ljava/lang/Object;
.source "ServiceCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "+",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_DEL:Ljava/lang/String; = "DELETE"

.field public static final TYPE_GET:Ljava/lang/String; = "GET"

.field public static final TYPE_POST:Ljava/lang/String; = "POST"

.field public static final TYPE_PUT:Ljava/lang/String; = "PUT"

.field public static final TYPE_REQ:Ljava/lang/String; = "request"

.field public static final TYPE_SUB:Ljava/lang/String; = "subscribe"


# instance fields
.field public httpMethod:Ljava/lang/String;

.field public payload:Ljava/lang/Object;

.field public processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

.field public requestId:I

.field public responseListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/connectsdk/service/command/ServiceCommand;->payload:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/connectsdk/service/command/ServiceCommand;->responseListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    const-string p1, "POST"

    .line 6
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    .line 9
    iput-object p2, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/connectsdk/service/command/ServiceCommand;->payload:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->requestId:I

    const-string p1, "request"

    .line 12
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/connectsdk/service/command/ServiceCommand;->responseListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-void
.end method


# virtual methods
.method public getCommandProcessor()Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    iget-object v1, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ServiceCommand has no target url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->requestId:I

    return v0
.end method

.method public getResponseListener()Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->responseListener:Lcom/connectsdk/service/capability/listeners/ResponseListener;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    invoke-interface {v0, p0}, Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V

    return-void
.end method

.method public setCommandProcessor(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->payload:Ljava/lang/Object;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->requestId:I

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->target:Ljava/lang/String;

    return-void
.end method
