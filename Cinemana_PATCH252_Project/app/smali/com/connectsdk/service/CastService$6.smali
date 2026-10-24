.class Lcom/connectsdk/service/CastService$6;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Lcom/shabakaty/downloader/cr3$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/CastService;->attachMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$6;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdated()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService$6;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService$6;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, v0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/connectsdk/service/command/URLServiceSubscription;

    .line 3
    invoke-virtual {v1}, Lcom/connectsdk/service/command/ServiceCommand;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/connectsdk/service/command/URLServiceSubscription;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 6
    iget-object v4, p0, Lcom/connectsdk/service/CastService$6;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v4, v4, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/connectsdk/service/CastService$6;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v4, v4, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v4

    .line 8
    iget v4, v4, Lcom/shabakaty/downloader/dr2;->v:I

    .line 9
    invoke-static {v4}, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->convertPlayerStateToPlayStateStatus(I)Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
