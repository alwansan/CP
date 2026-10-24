.class Lcom/connectsdk/service/DLNAService$4$1;
.super Ljava/util/TimerTask;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/DLNAService$4;->onGetPositionInfoSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/DLNAService$4;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/DLNAService$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/DLNAService$4$1;->this$1:Lcom/connectsdk/service/DLNAService$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/DLNAService$4$1;->this$1:Lcom/connectsdk/service/DLNAService$4;

    iget-object v1, v0, Lcom/connectsdk/service/DLNAService$4;->this$0:Lcom/connectsdk/service/DLNAService;

    iget-object v0, v0, Lcom/connectsdk/service/DLNAService$4;->val$listener:Lcom/connectsdk/service/capability/MediaControl$DurationListener;

    invoke-virtual {v1, v0}, Lcom/connectsdk/service/DLNAService;->getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V

    return-void
.end method
