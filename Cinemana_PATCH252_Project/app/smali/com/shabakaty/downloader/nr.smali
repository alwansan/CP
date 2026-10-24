.class public final synthetic Lcom/shabakaty/downloader/nr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/sr;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/sr;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/nr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/nr;->s:Lcom/shabakaty/downloader/sr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/nr;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nr;->s:Lcom/shabakaty/downloader/sr;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/sr;->k:Lcom/shabakaty/downloader/mr;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/mr;->h:Lcom/shabakaty/downloader/sr$c;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sr;->a(Lcom/shabakaty/downloader/sr$c;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nr;->s:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sr;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
