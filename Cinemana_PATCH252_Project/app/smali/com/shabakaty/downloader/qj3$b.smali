.class public final Lcom/shabakaty/downloader/qj3$b;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lcom/shabakaty/downloader/dm$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/qn4;

.field public final b:Lcom/shabakaty/downloader/ka3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/qj3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qj3$b;->a:Lcom/shabakaty/downloader/qn4;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qj3$b;->b:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/o91;J)Lcom/shabakaty/downloader/dm$e;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v1

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 3
    iget-object v3, v0, Lcom/shabakaty/downloader/qj3$b;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/qj3$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 6
    invoke-interface {v6, v3, v5, v4}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/qj3$b;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v5

    const/4 v7, -0x1

    .line 8
    :goto_0
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_e

    .line 9
    iget-object v10, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 10
    iget v12, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 11
    invoke-static {v10, v12}, Lcom/shabakaty/downloader/qj3;->g([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 12
    invoke-virtual {v3, v12}, Lcom/shabakaty/downloader/ka3;->F(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 14
    invoke-static {v3}, Lcom/shabakaty/downloader/rj3;->c(Lcom/shabakaty/downloader/ka3;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_4

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/qj3$b;->a:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {v4, v14, v15}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_2

    cmp-long v3, v8, v5

    if-nez v3, :cond_1

    .line 16
    invoke-static {v14, v15, v1, v2}, Lcom/shabakaty/downloader/dm$e;->a(JJ)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto/16 :goto_3

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 17
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dm$e;->b(J)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto/16 :goto_3

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    .line 18
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 19
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dm$e;->b(J)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto/16 :goto_3

    .line 20
    :cond_3
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    move v7, v4

    move-wide v8, v14

    .line 21
    :cond_4
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->c:I

    .line 22
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 23
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 24
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 25
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 26
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 27
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 29
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    if-ge v10, v11, :cond_7

    .line 30
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_2

    .line 31
    :cond_7
    iget-object v10, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 32
    iget v14, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 33
    invoke-static {v10, v14}, Lcom/shabakaty/downloader/qj3;->g([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-ne v10, v14, :cond_9

    .line 34
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 35
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v10

    .line 36
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v14

    if-ge v14, v10, :cond_8

    .line 37
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 39
    :cond_9
    :goto_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    if-lt v10, v11, :cond_d

    .line 40
    iget-object v10, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 41
    iget v14, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 42
    invoke-static {v10, v14}, Lcom/shabakaty/downloader/qj3;->g([BI)I

    move-result v10

    if-eq v10, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v10, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v10, v10, 0x8

    if-eq v10, v12, :cond_b

    goto :goto_2

    .line 43
    :cond_b
    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 44
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_c

    .line 45
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_2

    .line 46
    :cond_c
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v10

    .line 47
    iget v14, v3, Lcom/shabakaty/downloader/ka3;->c:I

    .line 48
    iget v15, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v15, v10

    .line 49
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 50
    invoke-virtual {v3, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_1

    .line 51
    :cond_d
    :goto_2
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    goto/16 :goto_0

    :cond_e
    cmp-long v3, v8, v5

    if-eqz v3, :cond_f

    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 52
    invoke-static {v8, v9, v1, v2}, Lcom/shabakaty/downloader/dm$e;->c(JJ)Lcom/shabakaty/downloader/dm$e;

    move-result-object v1

    goto :goto_3

    .line 53
    :cond_f
    sget-object v1, Lcom/shabakaty/downloader/dm$e;->d:Lcom/shabakaty/downloader/dm$e;

    :goto_3
    return-object v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qj3$b;->b:Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/sy4;->f:[B

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->B([B)V

    return-void
.end method
