.class public Lcom/connectsdk/service/command/URLServiceSubscription;
.super Lcom/connectsdk/service/command/ServiceCommand;
.source "URLServiceSubscription.java"

# interfaces
.implements Lcom/connectsdk/service/command/ServiceSubscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
        "*>;>",
        "Lcom/connectsdk/service/command/ServiceCommand<",
        "TT;>;",
        "Lcom/connectsdk/service/command/ServiceSubscription<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

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

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

    if-eqz p4, :cond_0

    const-string p1, "subscribe"

    .line 5
    iput-object p1, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    move-result-object p1

    return-object p1
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public removeListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->removeListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/URLServiceSubscription;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public send()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/command/URLServiceSubscription;->subscribe()V

    return-void
.end method

.method public subscribe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    const-string v1, "POST"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subscribe"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->httpMethod:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    invoke-interface {v0, p0}, Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;->sendCommand(Lcom/connectsdk/service/command/ServiceCommand;)V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommand;->processor:Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;

    invoke-interface {v0, p0}, Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;->unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-void
.end method
