.class Lcom/connectsdk/service/NetcastTVService$29;
.super Ljava/lang/Object;
.source "NetcastTVService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/NetcastTVService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$29;->this$0:Lcom/connectsdk/service/NetcastTVService;

    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService$29;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$29;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    const-string v1, "SmartShare\u2122"

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppId(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/sessions/LaunchSession;->setAppName(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$29;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-virtual {v0}, Lcom/connectsdk/service/NetcastTVService;->getMediaControl()Lcom/connectsdk/service/capability/MediaControl;

    move-result-object v0

    iput-object v0, p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/NetcastTVService$29;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/NetcastTVService$29;->onSuccess(Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;)V

    return-void
.end method
