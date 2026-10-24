.class public Lzendesk/messaging/SingleLiveEvent$1;
.super Ljava/lang/Object;
.source "SingleLiveEvent.java"

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/SingleLiveEvent;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/messaging/SingleLiveEvent;

.field public final synthetic val$observer:Lcom/shabakaty/downloader/r53;


# direct methods
.method public constructor <init>(Lzendesk/messaging/SingleLiveEvent;Lcom/shabakaty/downloader/r53;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/messaging/SingleLiveEvent$1;->this$0:Lzendesk/messaging/SingleLiveEvent;

    iput-object p2, p0, Lzendesk/messaging/SingleLiveEvent$1;->val$observer:Lcom/shabakaty/downloader/r53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/messaging/SingleLiveEvent$1;->this$0:Lzendesk/messaging/SingleLiveEvent;

    invoke-static {v0}, Lzendesk/messaging/SingleLiveEvent;->access$000(Lzendesk/messaging/SingleLiveEvent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/messaging/SingleLiveEvent$1;->val$observer:Lcom/shabakaty/downloader/r53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/r53;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
