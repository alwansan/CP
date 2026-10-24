.class public final synthetic Lcom/shabakaty/downloader/b6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;II)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/b6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/b6;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/b6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/b6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->A(Lcom/shabakaty/downloader/t6$a;I)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/b6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->f0(Lcom/shabakaty/downloader/t6$a;I)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/b6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/t6;->c0(Lcom/shabakaty/downloader/t6$a;)V

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->n0(Lcom/shabakaty/downloader/t6$a;I)V

    return-void

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/b6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->E(Lcom/shabakaty/downloader/t6$a;I)V

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/b6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->m(Lcom/shabakaty/downloader/t6$a;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
