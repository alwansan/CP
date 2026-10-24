.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;
.super Ljava/lang/Object;
.source "WebOSWebAppSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;->handleMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$message:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    invoke-virtual {v0}, Lcom/connectsdk/service/sessions/WebAppSession;->getWebAppSessionListener()Lcom/connectsdk/service/sessions/WebAppSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$2;->val$message:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/connectsdk/service/sessions/WebAppSessionListener;->onReceiveMessage(Lcom/connectsdk/service/sessions/WebAppSession;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
