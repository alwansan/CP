.class public final synthetic Lcom/shabakaty/downloader/ue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ye$a;

.field public final synthetic t:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/Exception;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/ue;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ue;->s:Lcom/shabakaty/downloader/ye$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/ue;->t:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/ue;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ue;->s:Lcom/shabakaty/downloader/ye$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ue;->t:Ljava/lang/Exception;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ye;->Z(Ljava/lang/Exception;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ue;->s:Lcom/shabakaty/downloader/ye$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ue;->t:Ljava/lang/Exception;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ye;->V(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
