.class public final synthetic Lcom/shabakaty/downloader/f6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Lcom/shabakaty/downloader/wh1;

.field public final synthetic u:Lcom/shabakaty/downloader/cn0;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;I)V
    .locals 0

    iput p4, p0, Lcom/shabakaty/downloader/f6;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f6;->s:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/f6;->t:Lcom/shabakaty/downloader/wh1;

    iput-object p3, p0, Lcom/shabakaty/downloader/f6;->u:Lcom/shabakaty/downloader/cn0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/f6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/f6;->t:Lcom/shabakaty/downloader/wh1;

    iget-object v2, p0, Lcom/shabakaty/downloader/f6;->u:Lcom/shabakaty/downloader/cn0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->V(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;)V

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->a0(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;)V

    const/4 v2, 0x2

    .line 3
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/t6;->y(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/wh1;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/f6;->t:Lcom/shabakaty/downloader/wh1;

    iget-object v2, p0, Lcom/shabakaty/downloader/f6;->u:Lcom/shabakaty/downloader/cn0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->Q(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;)V

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->m0(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/cn0;)V

    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/t6;->y(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/wh1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
