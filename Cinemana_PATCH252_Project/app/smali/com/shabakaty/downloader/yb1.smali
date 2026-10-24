.class public final synthetic Lcom/shabakaty/downloader/yb1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/wb1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/yb1;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yb1;->b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yb1;->b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/yb1;->a:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yb1;->b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->y:Lcom/shabakaty/downloader/rm1;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb1;->b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    .line 5
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;->x:Lcom/shabakaty/downloader/rm1;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :goto_1
    return-void

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/yb1;->b:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
