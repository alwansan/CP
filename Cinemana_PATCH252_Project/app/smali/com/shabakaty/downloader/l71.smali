.class public final synthetic Lcom/shabakaty/downloader/l71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yc3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yc3;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/l71;->r:I

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/l71;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 1
    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/bd3$c;->f(Z)V

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->g:Z

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->o(Z)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->l(Ljava/util/List;)V

    return-void

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->a(Lcom/shabakaty/downloader/xc3;)V

    return-void

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->f:Lcom/shabakaty/downloader/i71;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->w(Lcom/shabakaty/downloader/xc3;)V

    return-void

    .line 9
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->n:Lcom/shabakaty/downloader/ad3;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->i(Lcom/shabakaty/downloader/ad3;)V

    return-void

    .line 11
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/q71;->o0(Lcom/shabakaty/downloader/yc3;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->m0(Z)V

    return-void

    .line 13
    :pswitch_6
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 14
    iget v0, v0, Lcom/shabakaty/downloader/yc3;->m:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->d(I)V

    return-void

    .line 15
    :pswitch_7
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 16
    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->u(I)V

    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l71;->s:Lcom/shabakaty/downloader/yc3;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 18
    iget-boolean v1, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    iget v0, v0, Lcom/shabakaty/downloader/yc3;->e:I

    invoke-interface {p1, v1, v0}, Lcom/shabakaty/downloader/bd3$c;->H(ZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
