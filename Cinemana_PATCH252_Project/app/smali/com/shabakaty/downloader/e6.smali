.class public final synthetic Lcom/shabakaty/downloader/e6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Lcom/shabakaty/downloader/zm0;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/e6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/e6;->s:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/e6;->t:Lcom/shabakaty/downloader/zm0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/e6;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/e6;->t:Lcom/shabakaty/downloader/zm0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v2}, Lcom/shabakaty/downloader/t6;->B(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;)V

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->q0(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/zm0;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/e6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/e6;->t:Lcom/shabakaty/downloader/zm0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 4
    invoke-interface {p1, v0, v2}, Lcom/shabakaty/downloader/t6;->S(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;)V

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/t6;->D(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/zm0;)V

    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/e6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/e6;->t:Lcom/shabakaty/downloader/zm0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->b(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;)V

    .line 8
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/t6;->D(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/zm0;)V

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/e6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/e6;->t:Lcom/shabakaty/downloader/zm0;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->F(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/zm0;)V

    .line 11
    invoke-interface {p1, v0, v2, v1}, Lcom/shabakaty/downloader/t6;->q0(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/zm0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
