.class Lcom/connectsdk/service/DLNAService$1$1;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService$1;->onGetPositionInfoSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/DLNAService$1;

.field public final synthetic val$positionInfoXml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$1$1;->this$1:Lcom/connectsdk/service/DLNAService$1;

    iput-object p2, p0, Lcom/connectsdk/service/DLNAService$1$1;->val$positionInfoXml:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "http://"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/connectsdk/service/DLNAService$1$1;->this$1:Lcom/connectsdk/service/DLNAService$1;

    iget-object v1, v1, Lcom/connectsdk/service/DLNAService$1;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-virtual {v1}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/connectsdk/service/DLNAService$1$1;->this$1:Lcom/connectsdk/service/DLNAService$1;

    iget-object v1, v1, Lcom/connectsdk/service/DLNAService$1;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-virtual {v1}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/service/config/ServiceDescription;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/DLNAService$1$1;->this$1:Lcom/connectsdk/service/DLNAService$1;

    iget-object v1, v1, Lcom/connectsdk/service/DLNAService$1;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v2, p0, Lcom/connectsdk/service/DLNAService$1$1;->val$positionInfoXml:Ljava/lang/String;

    const-string v3, "TrackMetaData"

    invoke-virtual {v1, v2, v3}, Lcom/connectsdk/service/DLNAService;->parseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1, v0}, Lcom/connectsdk/service/upnp/DLNAMediaInfoParser;->getMediaInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/connectsdk/service/DLNAService$1$1;->this$1:Lcom/connectsdk/service/DLNAService$1;

    iget-object v1, v1, Lcom/connectsdk/service/DLNAService$1;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;

    invoke-static {v1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method
