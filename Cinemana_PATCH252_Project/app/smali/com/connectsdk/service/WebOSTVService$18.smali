.class Lcom/connectsdk/service/WebOSTVService$18;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->playMediaByWebApp(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

.field public final synthetic val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

.field public final synthetic val$shouldLoop:Z


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;Lcom/connectsdk/core/MediaInfo;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$18;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    iput-object p3, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    iput-boolean p4, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$shouldLoop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-interface {v0, p1}, Lcom/connectsdk/service/capability/listeners/ErrorListener;->onError(Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    iget-boolean v1, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$shouldLoop:Z

    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$18;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/connectsdk/service/sessions/WebAppSession;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/sessions/WebAppSession;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/WebOSTVService$18;->onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V

    return-void
.end method
