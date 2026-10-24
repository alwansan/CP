.class Lcom/connectsdk/service/CastService$8$1;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/CastService$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService$8;->onSuccess(Lcom/connectsdk/service/sessions/WebAppSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/CastService$8;

.field public final synthetic val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService$8;Lcom/connectsdk/service/sessions/WebAppSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$8$1;->this$1:Lcom/connectsdk/service/CastService$8;

    iput-object p2, p0, Lcom/connectsdk/service/CastService$8$1;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$8$1;->this$1:Lcom/connectsdk/service/CastService$8;

    iget-object v1, v0, Lcom/connectsdk/service/CastService$8;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v2, v0, Lcom/connectsdk/service/CastService$8;->val$mediaInformation:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p0, Lcom/connectsdk/service/CastService$8$1;->val$webAppSession:Lcom/connectsdk/service/sessions/WebAppSession;

    iget-object v0, v0, Lcom/connectsdk/service/CastService$8;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-static {v1, v2, v3, v0}, Lcom/connectsdk/service/CastService;->access$300(Lcom/connectsdk/service/CastService;Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method
