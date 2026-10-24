.class Lcom/connectsdk/service/DIALService$4;
.super Ljava/lang/Object;
.source "DIALService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DIALService;->getAppState(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/DIALService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/Launcher$AppStateListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DIALService;Lcom/connectsdk/service/capability/Launcher$AppStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DIALService$4;->this$0:Lcom/connectsdk/service/DIALService;

    iput-object p2, p0, Lcom/connectsdk/service/DIALService$4;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DIALService$4;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppStateListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "<state>"

    const-string v1, "</state>"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 5
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 6
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/connectsdk/service/capability/Launcher$AppState;

    const-string v1, "running"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v0, v2, p1}, Lcom/connectsdk/service/capability/Launcher$AppState;-><init>(ZZ)V

    .line 8
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$4;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppStateListener;

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/connectsdk/service/DIALService$4;->val$listener:Lcom/connectsdk/service/capability/Launcher$AppStateListener;

    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v2, 0x0

    const-string v3, "Malformed response for app state"

    invoke-direct {v0, v1, v3, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method
