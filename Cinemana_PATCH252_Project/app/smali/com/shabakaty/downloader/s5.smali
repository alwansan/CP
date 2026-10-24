.class public final synthetic Lcom/shabakaty/downloader/s5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/s5;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/s5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->o0(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->s(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->K(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 7
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->b0(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 9
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->l(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/s5;->s:Lcom/shabakaty/downloader/t6$a;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 11
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->p(Lcom/shabakaty/downloader/t6$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
