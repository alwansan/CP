.class Lcom/connectsdk/service/DLNAService$1;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Lcom/connectsdk/service/DLNAService$PositionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService;->getMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DLNAService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService;Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$1;->this$0:Lcom/connectsdk/service/DLNAService;

    iput-object p2, p0, Lcom/connectsdk/service/DLNAService$1;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPositionInfoFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$1;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onGetPositionInfoSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/DLNAService$1$1;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/DLNAService$1$1;-><init>(Lcom/connectsdk/service/DLNAService$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/connectsdk/core/Util;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method
