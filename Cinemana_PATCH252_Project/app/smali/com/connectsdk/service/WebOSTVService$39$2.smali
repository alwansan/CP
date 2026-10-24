.class Lcom/connectsdk/service/WebOSTVService$39$2;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService$39;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/WebOSTVService$39;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService$39;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$39$2;->this$1:Lcom/connectsdk/service/WebOSTVService$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$39$2;->this$1:Lcom/connectsdk/service/WebOSTVService$39;

    iget-object v0, v0, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$39$2;->this$1:Lcom/connectsdk/service/WebOSTVService$39;

    iget-object v1, v1, Lcom/connectsdk/service/WebOSTVService$39;->val$webAppSession:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-interface {v0, v1}, Lcom/connectsdk/service/sessions/WebAppSessionListener;->onWebAppSessionDisconnect(Lcom/connectsdk/service/sessions/WebAppSession;)V

    return-void
.end method
