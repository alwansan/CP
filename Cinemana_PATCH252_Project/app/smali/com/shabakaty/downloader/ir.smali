.class public final synthetic Lcom/shabakaty/downloader/ir;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/ar$c;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/mr;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mr;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/ir;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ir;->s:Lcom/shabakaty/downloader/mr;

    return-void
.end method


# virtual methods
.method public final f(Lcom/shabakaty/downloader/ar$a;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/ir;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ir;->s:Lcom/shabakaty/downloader/mr;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/kr;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/shabakaty/downloader/kr;-><init>(Lcom/shabakaty/downloader/mr;Lcom/shabakaty/downloader/ar$a;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "addCaptureRequestOptions"

    return-object p1

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ir;->s:Lcom/shabakaty/downloader/mr;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/shabakaty/downloader/kr;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/shabakaty/downloader/kr;-><init>(Lcom/shabakaty/downloader/mr;Lcom/shabakaty/downloader/ar$a;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "clearCaptureRequestOptions"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
