.class public final synthetic Lcom/shabakaty/downloader/p71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;
.implements Lcom/shabakaty/downloader/s71$e;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/q71;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/q71;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/p71;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/p71;->s:Lcom/shabakaty/downloader/q71;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/p71;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p71;->s:Lcom/shabakaty/downloader/q71;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->B:Lcom/shabakaty/downloader/hp2;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->R(Lcom/shabakaty/downloader/hp2;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p71;->s:Lcom/shabakaty/downloader/q71;

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->A:Lcom/shabakaty/downloader/bd3$b;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->q(Lcom/shabakaty/downloader/bd3$b;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
