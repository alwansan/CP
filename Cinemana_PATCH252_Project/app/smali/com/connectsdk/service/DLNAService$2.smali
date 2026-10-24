.class Lcom/connectsdk/service/DLNAService$2;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService;->displayMedia(Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/DLNAService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$2;->this$0:Lcom/connectsdk/service/DLNAService;

    iput-object p2, p0, Lcom/connectsdk/service/DLNAService$2;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$2;->val$listener:Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    const-string p1, "Speed"

    const-string v0, "1"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z4;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$2;->this$0:Lcom/connectsdk/service/DLNAService;

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    const-string v2, "Play"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/connectsdk/service/DLNAService;->getMessageXml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/connectsdk/service/DLNAService$2$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/DLNAService$2$1;-><init>(Lcom/connectsdk/service/DLNAService$2;)V

    .line 4
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommand;

    iget-object v3, p0, Lcom/connectsdk/service/DLNAService$2;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/connectsdk/service/command/ServiceCommand;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 5
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->send()V

    return-void
.end method
