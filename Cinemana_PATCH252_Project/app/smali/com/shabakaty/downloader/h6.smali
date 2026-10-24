.class public final synthetic Lcom/shabakaty/downloader/h6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Lcom/shabakaty/downloader/fp2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/fp2;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/h6;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/h6;->s:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/h6;->t:Lcom/shabakaty/downloader/fp2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/h6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/h6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/h6;->t:Lcom/shabakaty/downloader/fp2;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->k0(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/fp2;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/h6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/h6;->t:Lcom/shabakaty/downloader/fp2;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->G(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/fp2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
