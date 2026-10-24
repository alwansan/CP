.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;
.super Ljava/lang/Object;
.source "WebOSWebAppSession.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    new-instance v0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    iget-object v1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iget-object v2, v1, Lcom/connectsdk/service/sessions/WebAppSession;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    invoke-virtual {v1}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getMediaControl()Lcom/connectsdk/service/capability/MediaControl;

    move-result-object v1

    iget-object v3, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$19;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    .line 2
    invoke-virtual {v3}, Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getPlaylistControl()Lcom/connectsdk/service/capability/PlaylistControl;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;-><init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/MediaControl;Lcom/connectsdk/service/capability/PlaylistControl;)V

    .line 3
    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
