.class Lcom/connectsdk/service/WebOSTVService$17;
.super Ljava/lang/Object;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;

.field public final synthetic val$description:Ljava/lang/String;

.field public final synthetic val$iconSrc:Ljava/lang/String;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

.field public final synthetic val$mimeType:Ljava/lang/String;

.field public final synthetic val$title:Ljava/lang/String;

.field public final synthetic val$url:Ljava/lang/String;

.field public final synthetic val$webAppLaunchListener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$17;->this$0:Lcom/connectsdk/service/WebOSTVService;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$webAppLaunchListener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    iput-object p3, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$description:Ljava/lang/String;

    iput-object p7, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$iconSrc:Ljava/lang/String;

    iput-object p8, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/connectsdk/service/WebOSTVService$17;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-virtual {p1}, Lcom/connectsdk/service/WebOSTVService;->getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$webAppLaunchListener:Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;

    const-string v1, "MediaPlayer"

    invoke-interface {p1, v1, v0}, Lcom/connectsdk/service/capability/WebAppLauncher;->launchWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 7

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$description:Ljava/lang/String;

    iget-object v5, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$iconSrc:Ljava/lang/String;

    iget-object v6, p0, Lcom/connectsdk/service/WebOSTVService$17;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/connectsdk/service/sessions/WebAppSession;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/connectsdk/service/sessions/WebAppSession;

    invoke-virtual {p0, p1}, Lcom/connectsdk/service/WebOSTVService$17;->onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V

    return-void
.end method
