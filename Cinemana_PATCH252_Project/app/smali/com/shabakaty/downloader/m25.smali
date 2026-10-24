.class public final synthetic Lcom/shabakaty/downloader/m25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/o25$a;

.field public final synthetic t:J

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o25$a;IJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/m25;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m25;->s:Lcom/shabakaty/downloader/o25$a;

    iput p2, p0, Lcom/shabakaty/downloader/m25;->u:I

    iput-wide p3, p0, Lcom/shabakaty/downloader/m25;->t:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o25$a;JI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/m25;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m25;->s:Lcom/shabakaty/downloader/o25$a;

    iput-wide p2, p0, Lcom/shabakaty/downloader/m25;->t:J

    iput p4, p0, Lcom/shabakaty/downloader/m25;->u:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/m25;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m25;->s:Lcom/shabakaty/downloader/o25$a;

    iget-wide v1, p0, Lcom/shabakaty/downloader/m25;->t:J

    iget v3, p0, Lcom/shabakaty/downloader/m25;->u:I

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/o25;->l0(JI)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m25;->s:Lcom/shabakaty/downloader/o25$a;

    iget v1, p0, Lcom/shabakaty/downloader/m25;->u:I

    iget-wide v2, p0, Lcom/shabakaty/downloader/m25;->t:J

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/o25;->F(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
