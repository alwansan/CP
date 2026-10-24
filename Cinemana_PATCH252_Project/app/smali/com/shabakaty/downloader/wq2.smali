.class public final synthetic Lcom/shabakaty/downloader/wq2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yq2$a;

.field public final synthetic t:Lcom/shabakaty/downloader/yq2;

.field public final synthetic u:Lcom/shabakaty/downloader/hj2;

.field public final synthetic v:Lcom/shabakaty/downloader/fp2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yq2$a;Lcom/shabakaty/downloader/yq2;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;I)V
    .locals 1

    iput p5, p0, Lcom/shabakaty/downloader/wq2;->r:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wq2;->s:Lcom/shabakaty/downloader/yq2$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/wq2;->t:Lcom/shabakaty/downloader/yq2;

    iput-object p3, p0, Lcom/shabakaty/downloader/wq2;->u:Lcom/shabakaty/downloader/hj2;

    iput-object p4, p0, Lcom/shabakaty/downloader/wq2;->v:Lcom/shabakaty/downloader/fp2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/wq2;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wq2;->s:Lcom/shabakaty/downloader/yq2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/wq2;->t:Lcom/shabakaty/downloader/yq2;

    iget-object v2, p0, Lcom/shabakaty/downloader/wq2;->u:Lcom/shabakaty/downloader/hj2;

    iget-object v3, p0, Lcom/shabakaty/downloader/wq2;->v:Lcom/shabakaty/downloader/fp2;

    .line 1
    iget v4, v0, Lcom/shabakaty/downloader/yq2$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/yq2;->k(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wq2;->s:Lcom/shabakaty/downloader/yq2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/wq2;->t:Lcom/shabakaty/downloader/yq2;

    iget-object v2, p0, Lcom/shabakaty/downloader/wq2;->u:Lcom/shabakaty/downloader/hj2;

    iget-object v3, p0, Lcom/shabakaty/downloader/wq2;->v:Lcom/shabakaty/downloader/fp2;

    .line 3
    iget v4, v0, Lcom/shabakaty/downloader/yq2$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/yq2;->s(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wq2;->s:Lcom/shabakaty/downloader/yq2$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/wq2;->t:Lcom/shabakaty/downloader/yq2;

    iget-object v2, p0, Lcom/shabakaty/downloader/wq2;->u:Lcom/shabakaty/downloader/hj2;

    iget-object v3, p0, Lcom/shabakaty/downloader/wq2;->v:Lcom/shabakaty/downloader/fp2;

    .line 5
    iget v4, v0, Lcom/shabakaty/downloader/yq2$a;->a:I

    iget-object v0, v0, Lcom/shabakaty/downloader/yq2$a;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/shabakaty/downloader/yq2;->c0(ILcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
