.class Lcom/connectsdk/service/AirPlayService$4;
.super Ljava/lang/Object;
.source "AirPlayService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/listeners/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/AirPlayService;->getPlaybackPosition(Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;)V
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
.field public final synthetic this$0:Lcom/connectsdk/service/AirPlayService;

.field public final synthetic val$listener:Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/AirPlayService;Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/AirPlayService$4;->this$0:Lcom/connectsdk/service/AirPlayService;

    iput-object p2, p0, Lcom/connectsdk/service/AirPlayService$4;->val$listener:Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/connectsdk/service/command/ServiceCommandError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/AirPlayService$4;->val$listener:Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;->onGetPlaybackPositionFailed(Lcom/connectsdk/service/command/ServiceCommandError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v5, "duration"

    .line 5
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$4;->this$0:Lcom/connectsdk/service/AirPlayService;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/connectsdk/service/AirPlayService;->access$000(Lcom/connectsdk/service/AirPlayService;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-string v5, "position"

    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$4;->this$0:Lcom/connectsdk/service/AirPlayService;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/connectsdk/service/AirPlayService;->access$000(Lcom/connectsdk/service/AirPlayService;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/connectsdk/service/AirPlayService$4;->val$listener:Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/connectsdk/service/AirPlayService$PlaybackPositionListener;->onGetPlaybackPositionSuccess(JJ)V

    :cond_3
    return-void
.end method
