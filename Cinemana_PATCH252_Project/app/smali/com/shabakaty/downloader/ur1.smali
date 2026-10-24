.class public final Lcom/shabakaty/downloader/ur1;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ur1$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/e04;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/fw2;

.field public final e:Lcom/shabakaty/downloader/fw2;

.field public final f:Lcom/shabakaty/downloader/fw2;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lcom/shabakaty/downloader/fp4;

.field public k:Lcom/shabakaty/downloader/ur1$b;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lcom/shabakaty/downloader/ka3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e04;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->a:Lcom/shabakaty/downloader/e04;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ur1;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ur1;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->h:[Z

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/fw2;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/fw2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/fw2;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/fw2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/fw2;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/fw2;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/shabakaty/downloader/ur1;->m:J

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1;->o:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->j:Lcom/shabakaty/downloader/fp4;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    iget v2, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 4
    iget v3, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 5
    iget-object v4, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 6
    iget-wide v5, v0, Lcom/shabakaty/downloader/ur1;->g:J

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/shabakaty/downloader/ur1;->g:J

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/ur1;->j:Lcom/shabakaty/downloader/fp4;

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 8
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ur1;->h:[Z

    invoke-static {v4, v2, v3, v1}, Lcom/shabakaty/downloader/gw2;->b([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 9
    invoke-virtual {v0, v4, v2, v3}, Lcom/shabakaty/downloader/ur1;->f([BII)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 10
    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    .line 11
    invoke-virtual {v0, v4, v2, v1}, Lcom/shabakaty/downloader/ur1;->f([BII)V

    :cond_1
    sub-int v1, v3, v1

    .line 12
    iget-wide v8, v0, Lcom/shabakaty/downloader/ur1;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 13
    :goto_1
    iget-wide v10, v0, Lcom/shabakaty/downloader/ur1;->m:J

    .line 14
    iget-boolean v12, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 15
    iget-boolean v12, v12, Lcom/shabakaty/downloader/ur1$b;->c:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_3

    .line 16
    :cond_4
    :goto_2
    iget-object v12, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v12, v7}, Lcom/shabakaty/downloader/fw2;->b(I)Z

    .line 17
    iget-object v12, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v12, v7}, Lcom/shabakaty/downloader/fw2;->b(I)Z

    .line 18
    iget-boolean v12, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    const/4 v14, 0x3

    if-nez v12, :cond_5

    .line 19
    iget-object v12, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    .line 20
    iget-boolean v12, v12, Lcom/shabakaty/downloader/fw2;->c:Z

    if-eqz v12, :cond_3

    .line 21
    iget-object v12, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    .line 22
    iget-boolean v12, v12, Lcom/shabakaty/downloader/fw2;->c:Z

    if-eqz v12, :cond_3

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v15, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    iget-object v2, v15, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v15, v15, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    iget-object v15, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    iget-object v15, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v15, v14, v2}, Lcom/shabakaty/downloader/gw2;->d([BII)Lcom/shabakaty/downloader/gw2$b;

    move-result-object v2

    .line 27
    iget-object v15, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    iget-object v13, v15, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v15, v15, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v13, v14, v15}, Lcom/shabakaty/downloader/gw2;->c([BII)Lcom/shabakaty/downloader/gw2$a;

    move-result-object v13

    .line 28
    iget v14, v2, Lcom/shabakaty/downloader/gw2$b;->a:I

    iget v15, v2, Lcom/shabakaty/downloader/gw2$b;->b:I

    move/from16 v16, v3

    iget v3, v2, Lcom/shabakaty/downloader/gw2$b;->c:I

    .line 29
    invoke-static {v14, v15, v3}, Lcom/shabakaty/downloader/s40;->a(III)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v14, v0, Lcom/shabakaty/downloader/ur1;->j:Lcom/shabakaty/downloader/fp4;

    new-instance v15, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v15}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->i:Ljava/lang/String;

    .line 31
    iput-object v4, v15, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v4, "video/avc"

    .line 32
    iput-object v4, v15, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 33
    iput-object v3, v15, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 34
    iget v3, v2, Lcom/shabakaty/downloader/gw2$b;->e:I

    .line 35
    iput v3, v15, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 36
    iget v3, v2, Lcom/shabakaty/downloader/gw2$b;->f:I

    .line 37
    iput v3, v15, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 38
    iget v3, v2, Lcom/shabakaty/downloader/gw2$b;->g:F

    .line 39
    iput v3, v15, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 40
    iput-object v12, v15, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 41
    invoke-virtual {v15}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    .line 42
    invoke-interface {v14, v3}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    .line 44
    iget-object v3, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 45
    iget-object v3, v3, Lcom/shabakaty/downloader/ur1$b;->d:Landroid/util/SparseArray;

    iget v4, v2, Lcom/shabakaty/downloader/gw2$b;->d:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 47
    iget-object v2, v2, Lcom/shabakaty/downloader/ur1$b;->e:Landroid/util/SparseArray;

    iget v3, v13, Lcom/shabakaty/downloader/gw2$a;->a:I

    invoke-virtual {v2, v3, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fw2;->c()V

    .line 49
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fw2;->c()V

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 50
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    .line 51
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fw2;->c:Z

    if-eqz v3, :cond_6

    .line 52
    iget-object v3, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v3, v14, v2}, Lcom/shabakaty/downloader/gw2;->d([BII)Lcom/shabakaty/downloader/gw2$b;

    move-result-object v2

    .line 53
    iget-object v3, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 54
    iget-object v3, v3, Lcom/shabakaty/downloader/ur1$b;->d:Landroid/util/SparseArray;

    iget v4, v2, Lcom/shabakaty/downloader/gw2$b;->d:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fw2;->c()V

    goto :goto_3

    .line 56
    :cond_6
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    .line 57
    iget-boolean v3, v2, Lcom/shabakaty/downloader/fw2;->c:Z

    if-eqz v3, :cond_7

    .line 58
    iget-object v3, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v3, v14, v2}, Lcom/shabakaty/downloader/gw2;->c([BII)Lcom/shabakaty/downloader/gw2$a;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 60
    iget-object v3, v3, Lcom/shabakaty/downloader/ur1$b;->e:Landroid/util/SparseArray;

    iget v4, v2, Lcom/shabakaty/downloader/gw2$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fw2;->c()V

    .line 62
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/fw2;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    iget-object v3, v2, Lcom/shabakaty/downloader/fw2;->d:[B

    iget v2, v2, Lcom/shabakaty/downloader/fw2;->e:I

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/gw2;->e([BI)I

    move-result v2

    .line 64
    iget-object v3, v0, Lcom/shabakaty/downloader/ur1;->o:Lcom/shabakaty/downloader/ka3;

    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    iget-object v4, v4, Lcom/shabakaty/downloader/fw2;->d:[B

    invoke-virtual {v3, v4, v2}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 65
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->o:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 66
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->a:Lcom/shabakaty/downloader/e04;

    iget-object v3, v0, Lcom/shabakaty/downloader/ur1;->o:Lcom/shabakaty/downloader/ka3;

    .line 67
    iget-object v2, v2, Lcom/shabakaty/downloader/e04;->b:[Lcom/shabakaty/downloader/fp4;

    invoke-static {v10, v11, v3, v2}, Lcom/shabakaty/downloader/cy;->a(JLcom/shabakaty/downloader/ka3;[Lcom/shabakaty/downloader/fp4;)V

    .line 68
    :cond_8
    iget-object v2, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    iget-boolean v3, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    iget-boolean v4, v0, Lcom/shabakaty/downloader/ur1;->n:Z

    .line 69
    iget v7, v2, Lcom/shabakaty/downloader/ur1$b;->i:I

    const/16 v10, 0x9

    if-eq v7, v10, :cond_11

    iget-boolean v7, v2, Lcom/shabakaty/downloader/ur1$b;->c:Z

    if-eqz v7, :cond_14

    iget-object v7, v2, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    iget-object v10, v2, Lcom/shabakaty/downloader/ur1$b;->m:Lcom/shabakaty/downloader/ur1$b$a;

    .line 70
    iget-boolean v11, v7, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    if-nez v11, :cond_9

    goto/16 :goto_4

    .line 71
    :cond_9
    iget-boolean v11, v10, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 72
    :cond_a
    iget-object v11, v7, Lcom/shabakaty/downloader/ur1$b$a;->c:Lcom/shabakaty/downloader/gw2$b;

    invoke-static {v11}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v12, v10, Lcom/shabakaty/downloader/ur1$b$a;->c:Lcom/shabakaty/downloader/gw2$b;

    invoke-static {v12}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->f:I

    iget v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->f:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->g:I

    iget v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->g:I

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->h:Z

    iget-boolean v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->h:Z

    if-ne v13, v14, :cond_10

    iget-boolean v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v10, Lcom/shabakaty/downloader/ur1$b$a;->i:Z

    if-eqz v13, :cond_b

    iget-boolean v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->j:Z

    iget-boolean v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->j:Z

    if-ne v13, v14, :cond_10

    :cond_b
    iget v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->d:I

    iget v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->d:I

    if-eq v13, v14, :cond_c

    if-eqz v13, :cond_10

    if-eqz v14, :cond_10

    :cond_c
    iget v11, v11, Lcom/shabakaty/downloader/gw2$b;->k:I

    if-nez v11, :cond_d

    iget v13, v12, Lcom/shabakaty/downloader/gw2$b;->k:I

    if-nez v13, :cond_d

    iget v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->m:I

    iget v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->m:I

    if-ne v13, v14, :cond_10

    iget v13, v7, Lcom/shabakaty/downloader/ur1$b$a;->n:I

    iget v14, v10, Lcom/shabakaty/downloader/ur1$b$a;->n:I

    if-ne v13, v14, :cond_10

    :cond_d
    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    iget v11, v12, Lcom/shabakaty/downloader/gw2$b;->k:I

    if-ne v11, v13, :cond_e

    iget v11, v7, Lcom/shabakaty/downloader/ur1$b$a;->o:I

    iget v12, v10, Lcom/shabakaty/downloader/ur1$b$a;->o:I

    if-ne v11, v12, :cond_10

    iget v11, v7, Lcom/shabakaty/downloader/ur1$b$a;->p:I

    iget v12, v10, Lcom/shabakaty/downloader/ur1$b$a;->p:I

    if-ne v11, v12, :cond_10

    :cond_e
    iget-boolean v11, v7, Lcom/shabakaty/downloader/ur1$b$a;->k:Z

    iget-boolean v12, v10, Lcom/shabakaty/downloader/ur1$b$a;->k:Z

    if-ne v11, v12, :cond_10

    if-eqz v11, :cond_f

    iget v7, v7, Lcom/shabakaty/downloader/ur1$b$a;->l:I

    iget v10, v10, Lcom/shabakaty/downloader/ur1$b$a;->l:I

    if-eq v7, v10, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v7, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v7, :cond_14

    :cond_11
    if-eqz v3, :cond_13

    .line 75
    iget-boolean v3, v2, Lcom/shabakaty/downloader/ur1$b;->o:Z

    if-eqz v3, :cond_13

    .line 76
    iget-wide v10, v2, Lcom/shabakaty/downloader/ur1$b;->j:J

    sub-long v12, v8, v10

    long-to-int v3, v12

    add-int v23, v1, v3

    .line 77
    iget-wide v12, v2, Lcom/shabakaty/downloader/ur1$b;->q:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v14

    if-nez v1, :cond_12

    goto :goto_7

    .line 78
    :cond_12
    iget-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->r:Z

    .line 79
    iget-wide v14, v2, Lcom/shabakaty/downloader/ur1$b;->p:J

    sub-long/2addr v10, v14

    long-to-int v3, v10

    .line 80
    iget-object v7, v2, Lcom/shabakaty/downloader/ur1$b;->a:Lcom/shabakaty/downloader/fp4;

    const/16 v24, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v12

    move/from16 v21, v1

    move/from16 v22, v3

    invoke-interface/range {v18 .. v24}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 81
    :cond_13
    :goto_7
    iget-wide v10, v2, Lcom/shabakaty/downloader/ur1$b;->j:J

    iput-wide v10, v2, Lcom/shabakaty/downloader/ur1$b;->p:J

    .line 82
    iget-wide v10, v2, Lcom/shabakaty/downloader/ur1$b;->l:J

    iput-wide v10, v2, Lcom/shabakaty/downloader/ur1$b;->q:J

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->r:Z

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->o:Z

    .line 85
    :cond_14
    iget-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->b:Z

    const/4 v3, 0x2

    if-eqz v1, :cond_17

    iget-object v1, v2, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    .line 86
    iget-boolean v4, v1, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    if-eqz v4, :cond_16

    iget v1, v1, Lcom/shabakaty/downloader/ur1$b$a;->e:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_15

    if-ne v1, v3, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    const/4 v4, 0x0

    .line 87
    :cond_17
    :goto_8
    iget-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->r:Z

    iget v7, v2, Lcom/shabakaty/downloader/ur1$b;->i:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_19

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    if-ne v7, v4, :cond_18

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x1

    :goto_a
    or-int/2addr v1, v4

    iput-boolean v1, v2, Lcom/shabakaty/downloader/ur1$b;->r:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ur1;->n:Z

    .line 89
    :cond_1a
    iget-wide v1, v0, Lcom/shabakaty/downloader/ur1;->m:J

    .line 90
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 91
    iget-boolean v4, v4, Lcom/shabakaty/downloader/ur1$b;->c:Z

    if-eqz v4, :cond_1c

    .line 92
    :cond_1b
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/fw2;->d(I)V

    .line 93
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/fw2;->d(I)V

    .line 94
    :cond_1c
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/fw2;->d(I)V

    .line 95
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 96
    iput v6, v4, Lcom/shabakaty/downloader/ur1$b;->i:I

    .line 97
    iput-wide v1, v4, Lcom/shabakaty/downloader/ur1$b;->l:J

    .line 98
    iput-wide v8, v4, Lcom/shabakaty/downloader/ur1$b;->j:J

    .line 99
    iget-boolean v1, v4, Lcom/shabakaty/downloader/ur1$b;->b:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    if-eq v6, v1, :cond_1e

    goto :goto_b

    :cond_1d
    const/4 v1, 0x1

    :goto_b
    iget-boolean v2, v4, Lcom/shabakaty/downloader/ur1$b;->c:Z

    if-eqz v2, :cond_1f

    if-eq v6, v10, :cond_1e

    if-eq v6, v1, :cond_1e

    if-ne v6, v3, :cond_1f

    .line 100
    :cond_1e
    iget-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->m:Lcom/shabakaty/downloader/ur1$b$a;

    .line 101
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    iput-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->m:Lcom/shabakaty/downloader/ur1$b$a;

    .line 102
    iput-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    const/4 v2, 0x0

    .line 103
    iput-boolean v2, v1, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    .line 104
    iput-boolean v2, v1, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    .line 105
    iput v2, v4, Lcom/shabakaty/downloader/ur1$b;->h:I

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, v4, Lcom/shabakaty/downloader/ur1$b;->k:Z

    :cond_1f
    move v2, v5

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/ur1;->g:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ur1;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v1, p0, Lcom/shabakaty/downloader/ur1;->m:J

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ur1;->h:[Z

    invoke-static {v1}, Lcom/shabakaty/downloader/gw2;->a([Z)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fw2;->c()V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fw2;->c()V

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fw2;->c()V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    if-eqz v1, :cond_0

    .line 9
    iput-boolean v0, v1, Lcom/shabakaty/downloader/ur1$b;->k:Z

    .line 10
    iput-boolean v0, v1, Lcom/shabakaty/downloader/ur1$b;->o:Z

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    .line 12
    iput-boolean v0, v1, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    .line 13
    iput-boolean v0, v1, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    :cond_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ur1;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ur1;->j:Lcom/shabakaty/downloader/fp4;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ur1$b;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ur1;->b:Z

    iget-boolean v3, p0, Lcom/shabakaty/downloader/ur1;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/shabakaty/downloader/ur1$b;-><init>(Lcom/shabakaty/downloader/fp4;ZZ)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ur1;->a:Lcom/shabakaty/downloader/e04;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/e04;->a(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/ur1;->m:J

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ur1;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/shabakaty/downloader/ur1;->n:Z

    return-void
.end method

.method public final f([BII)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ur1;->l:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 2
    iget-boolean v4, v4, Lcom/shabakaty/downloader/ur1$b;->c:Z

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->d:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v1, v2, v3}, Lcom/shabakaty/downloader/fw2;->a([BII)V

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->e:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v1, v2, v3}, Lcom/shabakaty/downloader/fw2;->a([BII)V

    .line 5
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->f:Lcom/shabakaty/downloader/fw2;

    invoke-virtual {v4, v1, v2, v3}, Lcom/shabakaty/downloader/fw2;->a([BII)V

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/ur1;->k:Lcom/shabakaty/downloader/ur1$b;

    .line 7
    iget-boolean v5, v4, Lcom/shabakaty/downloader/ur1$b;->k:Z

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    sub-int/2addr v3, v2

    .line 8
    iget-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->g:[B

    array-length v6, v5

    iget v7, v4, Lcom/shabakaty/downloader/ur1$b;->h:I

    add-int/2addr v7, v3

    const/4 v8, 0x2

    if-ge v6, v7, :cond_3

    mul-int/lit8 v7, v7, 0x2

    .line 9
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->g:[B

    .line 10
    :cond_3
    iget-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->g:[B

    iget v6, v4, Lcom/shabakaty/downloader/ur1$b;->h:I

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v1, v4, Lcom/shabakaty/downloader/ur1$b;->h:I

    add-int/2addr v1, v3

    iput v1, v4, Lcom/shabakaty/downloader/ur1$b;->h:I

    .line 12
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    iget-object v3, v4, Lcom/shabakaty/downloader/ur1$b;->g:[B

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v1}, Lcom/shabakaty/downloader/a55;->r([BII)V

    .line 13
    iget-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    .line 14
    :cond_4
    iget-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/a55;->u()V

    .line 15
    iget-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v1, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v1

    .line 16
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 17
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_5

    .line 18
    :cond_5
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/a55;->n()I

    .line 20
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 21
    :cond_6
    iget-object v2, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/a55;->n()I

    move-result v2

    .line 23
    iget-boolean v6, v4, Lcom/shabakaty/downloader/ur1$b;->c:Z

    const/4 v7, 0x1

    if-nez v6, :cond_7

    .line 24
    iput-boolean v5, v4, Lcom/shabakaty/downloader/ur1$b;->k:Z

    .line 25
    iget-object v1, v4, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    .line 26
    iput v2, v1, Lcom/shabakaty/downloader/ur1$b$a;->e:I

    .line 27
    iput-boolean v7, v1, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    goto/16 :goto_5

    .line 28
    :cond_7
    iget-object v6, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_5

    .line 29
    :cond_8
    iget-object v6, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    .line 30
    invoke-virtual {v6}, Lcom/shabakaty/downloader/a55;->n()I

    move-result v6

    .line 31
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_9

    .line 32
    iput-boolean v5, v4, Lcom/shabakaty/downloader/ur1$b;->k:Z

    goto/16 :goto_5

    .line 33
    :cond_9
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/gw2$a;

    .line 34
    iget-object v10, v4, Lcom/shabakaty/downloader/ur1$b;->d:Landroid/util/SparseArray;

    iget v11, v9, Lcom/shabakaty/downloader/gw2$a;->b:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/gw2$b;

    .line 35
    iget-boolean v11, v10, Lcom/shabakaty/downloader/gw2$b;->h:Z

    if-eqz v11, :cond_b

    .line 36
    iget-object v11, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_5

    .line 37
    :cond_a
    iget-object v11, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 38
    :cond_b
    iget-object v8, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    iget v11, v10, Lcom/shabakaty/downloader/gw2$b;->j:I

    invoke-virtual {v8, v11}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_5

    .line 39
    :cond_c
    iget-object v8, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    iget v11, v10, Lcom/shabakaty/downloader/gw2$b;->j:I

    invoke-virtual {v8, v11}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    .line 40
    iget-boolean v11, v10, Lcom/shabakaty/downloader/gw2$b;->i:Z

    if-nez v11, :cond_f

    .line 41
    iget-object v11, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11, v7}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_5

    .line 42
    :cond_d
    iget-object v11, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 43
    iget-object v12, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v12, v7}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v12

    if-nez v12, :cond_e

    goto/16 :goto_5

    .line 44
    :cond_e
    iget-object v12, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v12

    const/4 v13, 0x1

    goto :goto_0

    :cond_f
    const/4 v11, 0x0

    :cond_10
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 45
    :goto_0
    iget v14, v4, Lcom/shabakaty/downloader/ur1$b;->i:I

    if-ne v14, v3, :cond_11

    const/4 v3, 0x1

    goto :goto_1

    :cond_11
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_13

    .line 46
    iget-object v14, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_5

    .line 47
    :cond_12
    iget-object v14, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    .line 48
    invoke-virtual {v14}, Lcom/shabakaty/downloader/a55;->n()I

    move-result v14

    goto :goto_2

    :cond_13
    const/4 v14, 0x0

    .line 49
    :goto_2
    iget v15, v10, Lcom/shabakaty/downloader/gw2$b;->k:I

    if-nez v15, :cond_17

    .line 50
    iget-object v15, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    iget v5, v10, Lcom/shabakaty/downloader/gw2$b;->l:I

    invoke-virtual {v15, v5}, Lcom/shabakaty/downloader/a55;->d(I)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_5

    .line 51
    :cond_14
    iget-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    iget v15, v10, Lcom/shabakaty/downloader/gw2$b;->l:I

    invoke-virtual {v5, v15}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v5

    .line 52
    iget-boolean v9, v9, Lcom/shabakaty/downloader/gw2$a;->c:Z

    if-eqz v9, :cond_16

    if-nez v11, :cond_16

    .line 53
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_5

    .line 54
    :cond_15
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/a55;->o()I

    move-result v9

    goto :goto_3

    :cond_16
    const/4 v9, 0x0

    :goto_3
    move v15, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_17
    if-ne v15, v7, :cond_1a

    .line 55
    iget-boolean v5, v10, Lcom/shabakaty/downloader/gw2$b;->m:Z

    if-nez v5, :cond_1a

    .line 56
    iget-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_5

    .line 57
    :cond_18
    iget-object v5, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/a55;->o()I

    move-result v5

    .line 58
    iget-boolean v9, v9, Lcom/shabakaty/downloader/gw2$a;->c:Z

    if-eqz v9, :cond_1b

    if-nez v11, :cond_1b

    .line 59
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/a55;->e()Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_5

    .line 60
    :cond_19
    iget-object v9, v4, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/a55;->o()I

    move-result v9

    move v7, v9

    const/4 v15, 0x0

    move v9, v5

    const/4 v5, 0x0

    goto :goto_4

    :cond_1a
    const/4 v5, 0x0

    :cond_1b
    move v9, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 61
    :goto_4
    iget-object v0, v4, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    .line 62
    iput-object v10, v0, Lcom/shabakaty/downloader/ur1$b$a;->c:Lcom/shabakaty/downloader/gw2$b;

    .line 63
    iput v1, v0, Lcom/shabakaty/downloader/ur1$b$a;->d:I

    .line 64
    iput v2, v0, Lcom/shabakaty/downloader/ur1$b$a;->e:I

    .line 65
    iput v8, v0, Lcom/shabakaty/downloader/ur1$b$a;->f:I

    .line 66
    iput v6, v0, Lcom/shabakaty/downloader/ur1$b$a;->g:I

    .line 67
    iput-boolean v11, v0, Lcom/shabakaty/downloader/ur1$b$a;->h:Z

    .line 68
    iput-boolean v13, v0, Lcom/shabakaty/downloader/ur1$b$a;->i:Z

    .line 69
    iput-boolean v12, v0, Lcom/shabakaty/downloader/ur1$b$a;->j:Z

    .line 70
    iput-boolean v3, v0, Lcom/shabakaty/downloader/ur1$b$a;->k:Z

    .line 71
    iput v14, v0, Lcom/shabakaty/downloader/ur1$b$a;->l:I

    .line 72
    iput v5, v0, Lcom/shabakaty/downloader/ur1$b$a;->m:I

    .line 73
    iput v15, v0, Lcom/shabakaty/downloader/ur1$b$a;->n:I

    .line 74
    iput v9, v0, Lcom/shabakaty/downloader/ur1$b$a;->o:I

    .line 75
    iput v7, v0, Lcom/shabakaty/downloader/ur1$b$a;->p:I

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    .line 77
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, v4, Lcom/shabakaty/downloader/ur1$b;->k:Z

    :goto_5
    return-void
.end method
