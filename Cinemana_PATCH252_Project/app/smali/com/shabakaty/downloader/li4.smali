.class public final synthetic Lcom/shabakaty/downloader/li4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/mi4$h;

.field public final synthetic t:Lcom/shabakaty/downloader/mi4$g;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mi4$h;Lcom/shabakaty/downloader/mi4$g;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/li4;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/li4;->s:Lcom/shabakaty/downloader/mi4$h;

    iput-object p2, p0, Lcom/shabakaty/downloader/li4;->t:Lcom/shabakaty/downloader/mi4$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/li4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/li4;->s:Lcom/shabakaty/downloader/mi4$h;

    iget-object v1, p0, Lcom/shabakaty/downloader/li4;->t:Lcom/shabakaty/downloader/mi4$g;

    .line 1
    check-cast v0, Lcom/shabakaty/downloader/ij4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij4;->b(Lcom/shabakaty/downloader/mi4$g;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/li4;->s:Lcom/shabakaty/downloader/mi4$h;

    iget-object v1, p0, Lcom/shabakaty/downloader/li4;->t:Lcom/shabakaty/downloader/mi4$g;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/ij4;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij4;->b(Lcom/shabakaty/downloader/mi4$g;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
