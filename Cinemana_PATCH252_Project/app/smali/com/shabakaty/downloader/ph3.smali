.class public final synthetic Lcom/shabakaty/downloader/ph3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/qh3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qh3;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/ph3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph3;->s:Lcom/shabakaty/downloader/qh3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/ph3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ph3;->s:Lcom/shabakaty/downloader/qh3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qh3;->r()V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ph3;->s:Lcom/shabakaty/downloader/qh3;

    .line 1
    iget-boolean v1, v0, Lcom/shabakaty/downloader/qh3;->c0:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
