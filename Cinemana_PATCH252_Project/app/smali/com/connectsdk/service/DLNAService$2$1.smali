.class Lcom/connectsdk/service/DLNAService$2$1;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService$2;->onSuccess(Ljava/lang/Object;)V
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
.field public final synthetic this$1:Lcom/connectsdk/service/DLNAService$2;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$2$1;->this$1:Lcom/connectsdk/service/DLNAService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$2$1;->this$1:Lcom/connectsdk/service/DLNAService$2;

    iget-object v0, v0, Lcom/connectsdk/service/DLNAService$2;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance p1, Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-direct {p1}, Lcom/connectsdk/service/sessions/LaunchSession;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$2$1;->this$1:Lcom/connectsdk/service/DLNAService$2;

    iget-object v0, v0, Lcom/connectsdk/service/DLNAService$2;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 3
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->Media:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$2$1;->this$1:Lcom/connectsdk/service/DLNAService$2;

    iget-object v1, v0, Lcom/connectsdk/service/DLNAService$2;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    new-instance v2, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    iget-object v0, v0, Lcom/connectsdk/service/DLNAService$2;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-direct {v2, p1, v0, v0}, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/MediaControl;Lcom/connectsdk/service/capability/PlaylistControl;)V

    invoke-static {v1, v2}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
