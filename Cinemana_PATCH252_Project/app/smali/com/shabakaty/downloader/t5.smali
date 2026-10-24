.class public final synthetic Lcom/shabakaty/downloader/t5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;JJI)V
    .locals 0

    iput p7, p0, Lcom/shabakaty/downloader/t5;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t5;->s:Lcom/shabakaty/downloader/t6$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/t5;->t:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/downloader/t5;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/t5;->v:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/shabakaty/downloader/t5;->r:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/shabakaty/downloader/t5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v9, v0, Lcom/shabakaty/downloader/t5;->t:Ljava/lang/String;

    iget-wide v10, v0, Lcom/shabakaty/downloader/t5;->u:J

    iget-wide v5, v0, Lcom/shabakaty/downloader/t5;->v:J

    move-object/from16 v12, p1

    check-cast v12, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {v12, v1, v9, v10, v11}, Lcom/shabakaty/downloader/t6;->f(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;J)V

    move-object v2, v12

    move-object v3, v1

    move-object v4, v9

    move-wide v7, v10

    .line 2
    invoke-interface/range {v2 .. v8}, Lcom/shabakaty/downloader/t6;->k(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;JJ)V

    const/4 v4, 0x1

    move-object v5, v9

    move-wide v6, v10

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/shabakaty/downloader/t6;->h0(Lcom/shabakaty/downloader/t6$a;ILjava/lang/String;J)V

    return-void

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/t5;->s:Lcom/shabakaty/downloader/t6$a;

    iget-object v2, v0, Lcom/shabakaty/downloader/t5;->t:Ljava/lang/String;

    iget-wide v3, v0, Lcom/shabakaty/downloader/t5;->u:J

    iget-wide v5, v0, Lcom/shabakaty/downloader/t5;->v:J

    move-object/from16 v7, p1

    check-cast v7, Lcom/shabakaty/downloader/t6;

    .line 5
    invoke-interface {v7, v1, v2, v3, v4}, Lcom/shabakaty/downloader/t6;->r(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;J)V

    move-object v13, v7

    move-object v14, v1

    move-object v15, v2

    move-wide/from16 v16, v5

    move-wide/from16 v18, v3

    .line 6
    invoke-interface/range {v13 .. v19}, Lcom/shabakaty/downloader/t6;->j0(Lcom/shabakaty/downloader/t6$a;Ljava/lang/String;JJ)V

    const/4 v15, 0x2

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    .line 7
    invoke-interface/range {v13 .. v18}, Lcom/shabakaty/downloader/t6;->h0(Lcom/shabakaty/downloader/t6$a;ILjava/lang/String;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
