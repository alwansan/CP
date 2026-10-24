.class public final synthetic Lcom/shabakaty/downloader/c6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:I

.field public final synthetic u:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;IJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/c6;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c6;->s:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/c6;->t:I

    iput-wide p3, p0, Lcom/shabakaty/downloader/c6;->u:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;JI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/c6;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c6;->s:Lcom/shabakaty/downloader/t6$a;

    iput-wide p2, p0, Lcom/shabakaty/downloader/c6;->u:J

    iput p4, p0, Lcom/shabakaty/downloader/c6;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/c6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/c6;->t:I

    iget-wide v2, p0, Lcom/shabakaty/downloader/c6;->u:J

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/t6;->T(Lcom/shabakaty/downloader/t6$a;IJ)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c6;->s:Lcom/shabakaty/downloader/t6$a;

    iget-wide v1, p0, Lcom/shabakaty/downloader/c6;->u:J

    iget v3, p0, Lcom/shabakaty/downloader/c6;->t:I

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/t6;->I(Lcom/shabakaty/downloader/t6$a;JI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
