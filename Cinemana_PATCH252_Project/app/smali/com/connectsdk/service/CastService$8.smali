.class Lcom/connectsdk/service/CastService$8;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$LaunchWebAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->playMedia(Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

.field public final synthetic val$mediaInformation:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$8;->this$0:Lcom/connectsdk/service/CastService;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$8;->val$mediaInformation:Lcom/google/android/gms/cast/MediaInfo;

    iput-object p3, p0, Lcom/connectsdk/service/CastService$8;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$8;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$8$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$8$1;-><init>(Lcom/connectsdk/service/CastService$8;Lcom/connectsdk/service/sessions/WebAppSession;)V

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/CastService$8;->this$0:Lcom/connectsdk/service/CastService;

    invoke-static {p1, v0}, Lcom/connectsdk/service/CastService;->access$400(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method
