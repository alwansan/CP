.class Lcom/connectsdk/service/CastService$CastListener;
.super Lcom/shabakaty/downloader/nw$d;
.source "CastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/CastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CastListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/CastService;


# direct methods
.method private constructor <init>(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    invoke-direct {p0}, Lcom/shabakaty/downloader/nw$d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService$CastListener;-><init>(Lcom/connectsdk/service/CastService;)V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cast.Listener.onApplicationDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    iget-object v0, p1, Lcom/connectsdk/service/CastService;->currentAppId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/connectsdk/service/CastService;->sessions:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/service/sessions/CastWebAppSession;

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/CastWebAppSession;->handleAppClose()V

    .line 5
    iget-object p1, p0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/connectsdk/service/CastService;->currentAppId:Ljava/lang/String;

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$CastListener$1;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$CastListener$1;-><init>(Lcom/connectsdk/service/CastService$CastListener;)V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    invoke-static {v1, v0}, Lcom/connectsdk/service/CastService;->access$400(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public onVolumeChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$CastListener$2;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/CastService$CastListener$2;-><init>(Lcom/connectsdk/service/CastService$CastListener;)V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/service/CastService$CastListener;->this$0:Lcom/connectsdk/service/CastService;

    invoke-static {v1, v0}, Lcom/connectsdk/service/CastService;->access$400(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method
