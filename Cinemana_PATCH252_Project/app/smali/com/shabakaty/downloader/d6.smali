.class public final synthetic Lcom/shabakaty/downloader/d6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:I

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;IJJI)V
    .locals 0

    iput p7, p0, Lcom/shabakaty/downloader/d6;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/d6;->s:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/d6;->t:I

    iput-wide p3, p0, Lcom/shabakaty/downloader/d6;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/d6;->v:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/shabakaty/downloader/d6;->r:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, v0, Lcom/shabakaty/downloader/d6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v4, v0, Lcom/shabakaty/downloader/d6;->t:I

    iget-wide v5, v0, Lcom/shabakaty/downloader/d6;->u:J

    iget-wide v7, v0, Lcom/shabakaty/downloader/d6;->v:J

    move-object/from16 v2, p1

    check-cast v2, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface/range {v2 .. v8}, Lcom/shabakaty/downloader/t6;->O(Lcom/shabakaty/downloader/t6$a;IJJ)V

    return-void

    .line 2
    :goto_0
    iget-object v10, v0, Lcom/shabakaty/downloader/d6;->s:Lcom/shabakaty/downloader/t6$a;

    iget v11, v0, Lcom/shabakaty/downloader/d6;->t:I

    iget-wide v12, v0, Lcom/shabakaty/downloader/d6;->u:J

    iget-wide v14, v0, Lcom/shabakaty/downloader/d6;->v:J

    move-object/from16 v9, p1

    check-cast v9, Lcom/shabakaty/downloader/t6;

    .line 3
    invoke-interface/range {v9 .. v15}, Lcom/shabakaty/downloader/t6;->Y(Lcom/shabakaty/downloader/t6$a;IJJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
