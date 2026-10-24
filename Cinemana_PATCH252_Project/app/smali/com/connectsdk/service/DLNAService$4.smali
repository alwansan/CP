.class Lcom/connectsdk/service/DLNAService$4;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Lcom/connectsdk/service/DLNAService$PositionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService;->getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/DLNAService;

.field public final synthetic val$listener:Lcom/connectsdk/service/capability/MediaControl$DurationListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService;Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$4;->this$0:Lcom/connectsdk/service/DLNAService;

    iput-object p2, p0, Lcom/connectsdk/service/DLNAService$4;->val$listener:Lcom/connectsdk/service/capability/MediaControl$DurationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPositionInfoFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$4;->val$listener:Lcom/connectsdk/service/capability/MediaControl$DurationListener;

    invoke-static {v0, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public onGetPositionInfoSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$4;->this$0:Lcom/connectsdk/service/DLNAService;

    const-string v1, "TrackDuration"

    invoke-virtual {v0, p1, v1}, Lcom/connectsdk/service/DLNAService;->parseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/DLNAService$4;->this$0:Lcom/connectsdk/service/DLNAService;

    const-string v2, "TrackMetaData"

    invoke-virtual {v1, p1, v2}, Lcom/connectsdk/service/DLNAService;->parseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/connectsdk/service/upnp/DLNAMediaInfoParser;->getMediaInfo(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo;

    move-result-object p1

    const-string v1, "0:00:00"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/connectsdk/service/DLNAService$4$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/DLNAService$4$1;-><init>(Lcom/connectsdk/service/DLNAService$4;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/connectsdk/service/DLNAService$4;->this$0:Lcom/connectsdk/service/DLNAService;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/DLNAService;->convertStrTimeFormatToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcom/connectsdk/service/DLNAService$4;->val$listener:Lcom/connectsdk/service/capability/MediaControl$DurationListener;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
