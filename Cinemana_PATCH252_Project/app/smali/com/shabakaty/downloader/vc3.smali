.class public final synthetic Lcom/shabakaty/downloader/vc3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/wc3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/wc3;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/vc3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vc3;->s:Lcom/shabakaty/downloader/wc3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/vc3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vc3;->s:Lcom/shabakaty/downloader/wc3;

    check-cast p1, Ljava/lang/Long;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "progressMilliseconds"

    .line 2
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/wc3;->j(J)V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wc3;->b()V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/vc3;->s:Lcom/shabakaty/downloader/wc3;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wc3;->h(Lcom/shabakaty/downloader/wc3;Ljava/lang/Long;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
