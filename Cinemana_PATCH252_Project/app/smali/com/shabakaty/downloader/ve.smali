.class public final synthetic Lcom/shabakaty/downloader/ve;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:I

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/qi$a$a$a;IJJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ve;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ve;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/ve;->t:I

    iput-wide p3, p0, Lcom/shabakaty/downloader/ve;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/ve;->v:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ye$a;IJJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ve;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ve;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/ve;->t:I

    iput-wide p3, p0, Lcom/shabakaty/downloader/ve;->u:J

    iput-wide p5, p0, Lcom/shabakaty/downloader/ve;->v:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/shabakaty/downloader/ve;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ve;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye$a;

    iget v2, p0, Lcom/shabakaty/downloader/ve;->t:I

    iget-wide v3, p0, Lcom/shabakaty/downloader/ve;->u:J

    iget-wide v5, p0, Lcom/shabakaty/downloader/ve;->v:J

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/ye;->i0(IJJ)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ve;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qi$a$a$a;

    iget v3, p0, Lcom/shabakaty/downloader/ve;->t:I

    iget-wide v4, p0, Lcom/shabakaty/downloader/ve;->u:J

    iget-wide v6, p0, Lcom/shabakaty/downloader/ve;->v:J

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/qi$a$a$a;->b:Lcom/shabakaty/downloader/qi$a;

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/k6;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->u:Lcom/shabakaty/downloader/k6$a;

    .line 7
    iget-object v2, v1, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/k6$a;->b:Lcom/google/common/collect/p;

    invoke-static {v1}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uq2$a;

    .line 8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k6;->o0(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/t6$a;

    move-result-object v9

    const/16 v10, 0x3ee

    .line 9
    new-instance v11, Lcom/shabakaty/downloader/d6;

    const/4 v8, 0x0

    move-object v1, v11

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/d6;-><init>(Lcom/shabakaty/downloader/t6$a;IJJI)V

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/k6;->v:Landroid/util/SparseArray;

    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/k6;->w:Lcom/shabakaty/downloader/si2;

    .line 12
    invoke-virtual {v0, v10, v11}, Lcom/shabakaty/downloader/si2;->b(ILcom/shabakaty/downloader/si2$a;)V

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/si2;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
