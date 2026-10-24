.class public final synthetic Lcom/shabakaty/downloader/m71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/dp2;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/m71;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m71;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/m71;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yc3;II)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/m71;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m71;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/m71;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/m71;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m71;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/yc3;

    iget v1, p0, Lcom/shabakaty/downloader/m71;->t:I

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 1
    iget-boolean v0, v0, Lcom/shabakaty/downloader/yc3;->l:Z

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/bd3$c;->b0(ZI)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/m71;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/yc3;

    iget v1, p0, Lcom/shabakaty/downloader/m71;->t:I

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/yc3;->a:Lcom/shabakaty/downloader/nn4;

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/bd3$c;->x(Lcom/shabakaty/downloader/nn4;I)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m71;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/dp2;

    iget v1, p0, Lcom/shabakaty/downloader/m71;->t:I

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/bd3$c;->D(Lcom/shabakaty/downloader/dp2;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
