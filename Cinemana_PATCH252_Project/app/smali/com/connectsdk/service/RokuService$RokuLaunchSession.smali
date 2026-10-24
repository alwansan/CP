.class Lcom/connectsdk/service/RokuService$RokuLaunchSession;
.super Lcom/connectsdk/service/sessions/LaunchSession;
.source "RokuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/RokuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RokuLaunchSession"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/RokuService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/RokuService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/RokuService$RokuLaunchSession;->this$0:Lcom/connectsdk/service/RokuService;

    invoke-direct {p0}, Lcom/connectsdk/service/sessions/LaunchSession;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/RokuService$RokuLaunchSession;->this$0:Lcom/connectsdk/service/RokuService;

    invoke-virtual {v0, p1}, Lcom/connectsdk/service/RokuService;->home(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method
