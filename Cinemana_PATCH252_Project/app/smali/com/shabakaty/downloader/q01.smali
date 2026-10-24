.class public final synthetic Lcom/shabakaty/downloader/q01;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/s01$a;

.field public final synthetic t:Lcom/shabakaty/downloader/s01;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/s01;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/q01;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/q01;->s:Lcom/shabakaty/downloader/s01$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/q01;->t:Lcom/shabakaty/downloader/s01;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/q01;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q01;->s:Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/q01;->t:Lcom/shabakaty/downloader/s01;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/s01;->h0(ILcom/shabakaty/downloader/uq2$a;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/q01;->s:Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/q01;->t:Lcom/shabakaty/downloader/s01;

    .line 3
    iget v2, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/s01;->L(ILcom/shabakaty/downloader/uq2$a;)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/q01;->s:Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/q01;->t:Lcom/shabakaty/downloader/s01;

    .line 5
    iget v2, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/s01;->M(ILcom/shabakaty/downloader/uq2$a;)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/q01;->s:Lcom/shabakaty/downloader/s01$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/q01;->t:Lcom/shabakaty/downloader/s01;

    .line 7
    iget v2, v0, Lcom/shabakaty/downloader/s01$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/s01;->Q(ILcom/shabakaty/downloader/uq2$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
