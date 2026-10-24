.class public final synthetic Lcom/shabakaty/downloader/eb3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/wb1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/eb3;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/eb3;->b:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/eb3;->a:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eb3;->b:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->g()Lcom/shabakaty/downloader/se0;

    move-result-object v2

    new-instance v5, Lcom/shabakaty/downloader/hb3;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/shabakaty/downloader/hb3;-><init>(Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;Lcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eb3;->b:Lcom/shabakaty/cinemana/utils/download/PausedDownloadHandler;

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
