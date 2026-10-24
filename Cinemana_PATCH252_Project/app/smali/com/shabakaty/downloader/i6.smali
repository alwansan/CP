.class public final synthetic Lcom/shabakaty/downloader/i6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/i6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/i6;->s:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/i6;->t:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/i6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i6;->t:Ljava/lang/Exception;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->g0(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/i6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i6;->t:Ljava/lang/Exception;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->o(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/i6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i6;->t:Ljava/lang/Exception;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->i(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/i6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i6;->t:Ljava/lang/Exception;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->v(Lcom/shabakaty/downloader/t6$a;Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
