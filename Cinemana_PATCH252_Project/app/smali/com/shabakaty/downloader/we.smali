.class public final synthetic Lcom/shabakaty/downloader/we;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o25$a;Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/we;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/we;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/we;->t:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/downloader/we;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/we;->v:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/we;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/we;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/we;->t:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/downloader/we;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/we;->v:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/we;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/we;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/we;->t:Ljava/lang/String;

    iget-wide v3, p0, Lcom/shabakaty/downloader/we;->u:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/we;->v:J

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/ye;->z(Ljava/lang/String;JJ)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/we;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/o25$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/we;->t:Ljava/lang/String;

    iget-wide v3, p0, Lcom/shabakaty/downloader/we;->u:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/we;->v:J

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/o25;->n(Ljava/lang/String;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
