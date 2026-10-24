.class public final Lcom/shabakaty/downloader/t4;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lcom/shabakaty/downloader/a55;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/shabakaty/downloader/fp4;

.field public g:Lcom/shabakaty/downloader/fp4;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lcom/shabakaty/downloader/fp4;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/t4;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a55;

    const/4 v1, 0x7

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/t4;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object v0, p0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t4;->h()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/t4;->m:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/t4;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/t4;->q:J

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/t4;->s:J

    .line 9
    iput-boolean p1, p0, Lcom/shabakaty/downloader/t4;->a:Z

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/t4;->d:Ljava/lang/String;

    return-void
.end method

.method public static g(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->f:Lcom/shabakaty/downloader/fp4;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 4
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-lez v2, :cond_27

    .line 5
    iget v2, v0, Lcom/shabakaty/downloader/t4;->h:I

    const/4 v3, 0x7

    const/16 v4, 0xd

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_d

    if-eq v2, v10, :cond_9

    const/16 v5, 0xa

    if-eq v2, v9, :cond_8

    if-eq v2, v6, :cond_3

    if-ne v2, v8, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    iget v3, v0, Lcom/shabakaty/downloader/t4;->r:I

    iget v4, v0, Lcom/shabakaty/downloader/t4;->i:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->t:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v3, v1, v2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 8
    iget v3, v0, Lcom/shabakaty/downloader/t4;->i:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/shabakaty/downloader/t4;->i:I

    .line 9
    iget v8, v0, Lcom/shabakaty/downloader/t4;->r:I

    if-ne v3, v8, :cond_0

    .line 10
    iget-wide v5, v0, Lcom/shabakaty/downloader/t4;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v5, v2

    if-eqz v4, :cond_1

    .line 11
    iget-object v4, v0, Lcom/shabakaty/downloader/t4;->t:Lcom/shabakaty/downloader/fp4;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 12
    iget-wide v2, v0, Lcom/shabakaty/downloader/t4;->s:J

    iget-wide v4, v0, Lcom/shabakaty/downloader/t4;->u:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/shabakaty/downloader/t4;->s:J

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/t4;->h()V

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 15
    :cond_3
    iget-boolean v2, v0, Lcom/shabakaty/downloader/t4;->k:Z

    const/4 v11, 0x5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    .line 16
    :goto_1
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    iget-object v2, v2, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/t4;->f(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 18
    iget-boolean v2, v0, Lcom/shabakaty/downloader/t4;->p:Z

    if-nez v2, :cond_6

    .line 19
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    add-int/2addr v2, v10

    if-eq v2, v9, :cond_5

    const/16 v3, 0x3d

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Detected audio object type: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdtsReader"

    .line 21
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 22
    :cond_5
    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3, v11}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 23
    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v3

    .line 24
    iget v5, v0, Lcom/shabakaty/downloader/t4;->n:I

    .line 25
    invoke-static {v2, v5, v3}, Lcom/shabakaty/downloader/c;->b(III)[B

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/c;->f([B)Lcom/shabakaty/downloader/c$b;

    move-result-object v3

    .line 27
    new-instance v5, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v5}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v6, v0, Lcom/shabakaty/downloader/t4;->e:Ljava/lang/String;

    .line 28
    iput-object v6, v5, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    .line 29
    iput-object v6, v5, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 30
    iget-object v6, v3, Lcom/shabakaty/downloader/c$b;->c:Ljava/lang/String;

    .line 31
    iput-object v6, v5, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 32
    iget v6, v3, Lcom/shabakaty/downloader/c$b;->b:I

    .line 33
    iput v6, v5, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 34
    iget v3, v3, Lcom/shabakaty/downloader/c$b;->a:I

    .line 35
    iput v3, v5, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 36
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 37
    iput-object v2, v5, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 38
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->d:Ljava/lang/String;

    .line 39
    iput-object v2, v5, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v5}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v2

    const-wide/32 v5, 0x3d090000

    .line 41
    iget v3, v2, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v12, v3

    div-long/2addr v5, v12

    iput-wide v5, v0, Lcom/shabakaty/downloader/t4;->q:J

    .line 42
    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->f:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 43
    iput-boolean v10, v0, Lcom/shabakaty/downloader/t4;->p:Z

    goto :goto_2

    .line 44
    :cond_6
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 45
    :goto_2
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 46
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    sub-int/2addr v2, v9

    sub-int/2addr v2, v11

    .line 47
    iget-boolean v3, v0, Lcom/shabakaty/downloader/t4;->k:Z

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, -0x2

    .line 48
    :cond_7
    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->f:Lcom/shabakaty/downloader/fp4;

    iget-wide v4, v0, Lcom/shabakaty/downloader/t4;->q:J

    .line 49
    iput v8, v0, Lcom/shabakaty/downloader/t4;->h:I

    .line 50
    iput v7, v0, Lcom/shabakaty/downloader/t4;->i:I

    .line 51
    iput-object v3, v0, Lcom/shabakaty/downloader/t4;->t:Lcom/shabakaty/downloader/fp4;

    .line 52
    iput-wide v4, v0, Lcom/shabakaty/downloader/t4;->u:J

    .line 53
    iput v2, v0, Lcom/shabakaty/downloader/t4;->r:I

    goto/16 :goto_0

    .line 54
    :cond_8
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    .line 55
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 56
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/t4;->f(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->g:Lcom/shabakaty/downloader/fp4;

    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v2, v3, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 58
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 59
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->g:Lcom/shabakaty/downloader/fp4;

    iget-object v3, v0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    .line 60
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->s()I

    move-result v3

    add-int/2addr v3, v5

    .line 61
    iput v8, v0, Lcom/shabakaty/downloader/t4;->h:I

    .line 62
    iput v5, v0, Lcom/shabakaty/downloader/t4;->i:I

    .line 63
    iput-object v2, v0, Lcom/shabakaty/downloader/t4;->t:Lcom/shabakaty/downloader/fp4;

    const-wide/16 v4, 0x0

    .line 64
    iput-wide v4, v0, Lcom/shabakaty/downloader/t4;->u:J

    .line 65
    iput v3, v0, Lcom/shabakaty/downloader/t4;->r:I

    goto/16 :goto_0

    .line 66
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 67
    :cond_a
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    iget-object v3, v2, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v3, [B

    .line 68
    iget-object v4, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 69
    iget v11, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 70
    aget-byte v4, v4, v11

    aput-byte v4, v3, v7

    .line 71
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 72
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    .line 73
    iget v3, v0, Lcom/shabakaty/downloader/t4;->n:I

    if-eq v3, v5, :cond_b

    if-eq v2, v3, :cond_b

    .line 74
    iput-boolean v7, v0, Lcom/shabakaty/downloader/t4;->l:Z

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/t4;->h()V

    goto/16 :goto_0

    .line 76
    :cond_b
    iget-boolean v3, v0, Lcom/shabakaty/downloader/t4;->l:Z

    if-nez v3, :cond_c

    .line 77
    iput-boolean v10, v0, Lcom/shabakaty/downloader/t4;->l:Z

    .line 78
    iget v3, v0, Lcom/shabakaty/downloader/t4;->o:I

    iput v3, v0, Lcom/shabakaty/downloader/t4;->m:I

    .line 79
    iput v2, v0, Lcom/shabakaty/downloader/t4;->n:I

    .line 80
    :cond_c
    iput v6, v0, Lcom/shabakaty/downloader/t4;->h:I

    .line 81
    iput v7, v0, Lcom/shabakaty/downloader/t4;->i:I

    goto/16 :goto_0

    .line 82
    :cond_d
    iget-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 83
    iget v11, v1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 84
    iget v12, v1, Lcom/shabakaty/downloader/ka3;->c:I

    :goto_3
    if-ge v11, v12, :cond_26

    add-int/lit8 v13, v11, 0x1

    .line 85
    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    .line 86
    iget v14, v0, Lcom/shabakaty/downloader/t4;->j:I

    const/16 v15, 0x200

    if-ne v14, v15, :cond_20

    int-to-byte v14, v11

    and-int/lit16 v14, v14, 0xff

    const v16, 0xff00

    or-int v14, v14, v16

    .line 87
    invoke-static {v14}, Lcom/shabakaty/downloader/t4;->g(I)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 88
    iget-boolean v14, v0, Lcom/shabakaty/downloader/t4;->l:Z

    if-nez v14, :cond_1d

    add-int/lit8 v14, v13, -0x2

    add-int/lit8 v15, v14, 0x1

    .line 89
    invoke-virtual {v1, v15}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 90
    iget-object v15, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    iget-object v15, v15, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v15, [B

    invoke-virtual {v0, v1, v15, v10}, Lcom/shabakaty/downloader/t4;->i(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_5

    .line 91
    :cond_e
    iget-object v15, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v15, v8}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 92
    iget-object v15, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v15, v10}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v15

    .line 93
    iget v7, v0, Lcom/shabakaty/downloader/t4;->m:I

    if-eq v7, v5, :cond_f

    if-eq v15, v7, :cond_f

    goto/16 :goto_5

    .line 94
    :cond_f
    iget v7, v0, Lcom/shabakaty/downloader/t4;->n:I

    if-eq v7, v5, :cond_12

    .line 95
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    iget-object v7, v7, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v0, v1, v7, v10}, Lcom/shabakaty/downloader/t4;->i(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_4

    .line 96
    :cond_10
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 97
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v7, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    .line 98
    iget v9, v0, Lcom/shabakaty/downloader/t4;->n:I

    if-eq v7, v9, :cond_11

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v7, v14, 0x2

    .line 99
    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 100
    :cond_12
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    iget-object v7, v7, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v0, v1, v7, v8}, Lcom/shabakaty/downloader/t4;->i(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_4

    .line 101
    :cond_13
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    const/16 v9, 0xe

    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 102
    iget-object v7, v0, Lcom/shabakaty/downloader/t4;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v7, v4}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v7

    if-ge v7, v3, :cond_14

    goto :goto_5

    .line 103
    :cond_14
    iget-object v9, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 104
    iget v3, v1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/2addr v14, v7

    if-lt v14, v3, :cond_15

    goto :goto_4

    .line 105
    :cond_15
    aget-byte v7, v9, v14

    if-ne v7, v5, :cond_17

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_16

    goto :goto_4

    .line 106
    :cond_16
    aget-byte v3, v9, v14

    and-int/lit16 v3, v3, 0xff

    or-int v3, v3, v16

    .line 107
    invoke-static {v3}, Lcom/shabakaty/downloader/t4;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 108
    aget-byte v3, v9, v14

    and-int/lit8 v3, v3, 0x8

    shr-int/2addr v3, v6

    if-ne v3, v15, :cond_1c

    goto :goto_4

    .line 109
    :cond_17
    aget-byte v7, v9, v14

    const/16 v15, 0x49

    if-eq v7, v15, :cond_18

    goto :goto_5

    :cond_18
    add-int/lit8 v7, v14, 0x1

    if-ne v7, v3, :cond_19

    goto :goto_4

    .line 110
    :cond_19
    aget-byte v7, v9, v7

    const/16 v15, 0x44

    if-eq v7, v15, :cond_1a

    goto :goto_5

    :cond_1a
    add-int/lit8 v14, v14, 0x2

    if-ne v14, v3, :cond_1b

    goto :goto_4

    .line 111
    :cond_1b
    aget-byte v3, v9, v14

    const/16 v7, 0x33

    if-ne v3, v7, :cond_1c

    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_1c
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_20

    :cond_1d
    and-int/lit8 v2, v11, 0x8

    shr-int/2addr v2, v6

    .line 112
    iput v2, v0, Lcom/shabakaty/downloader/t4;->o:I

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_7

    :cond_1e
    const/4 v2, 0x0

    .line 113
    :goto_7
    iput-boolean v2, v0, Lcom/shabakaty/downloader/t4;->k:Z

    .line 114
    iget-boolean v2, v0, Lcom/shabakaty/downloader/t4;->l:Z

    if-nez v2, :cond_1f

    .line 115
    iput v10, v0, Lcom/shabakaty/downloader/t4;->h:I

    const/4 v2, 0x0

    .line 116
    iput v2, v0, Lcom/shabakaty/downloader/t4;->i:I

    goto :goto_8

    :cond_1f
    const/4 v2, 0x0

    .line 117
    iput v6, v0, Lcom/shabakaty/downloader/t4;->h:I

    .line 118
    iput v2, v0, Lcom/shabakaty/downloader/t4;->i:I

    .line 119
    :goto_8
    invoke-virtual {v1, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto/16 :goto_0

    .line 120
    :cond_20
    iget v3, v0, Lcom/shabakaty/downloader/t4;->j:I

    or-int v7, v11, v3

    const/16 v9, 0x149

    if-eq v7, v9, :cond_25

    const/16 v9, 0x1ff

    if-eq v7, v9, :cond_24

    const/16 v9, 0x344

    if-eq v7, v9, :cond_23

    const/16 v9, 0x433

    if-eq v7, v9, :cond_22

    const/16 v7, 0x100

    if-eq v3, v7, :cond_21

    .line 121
    iput v7, v0, Lcom/shabakaty/downloader/t4;->j:I

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    const/4 v3, 0x2

    const/4 v7, 0x0

    goto :goto_a

    :cond_21
    const/4 v3, 0x2

    const/4 v7, 0x0

    goto :goto_9

    :cond_22
    const/4 v3, 0x2

    .line 122
    iput v3, v0, Lcom/shabakaty/downloader/t4;->h:I

    .line 123
    sget-object v2, Lcom/shabakaty/downloader/t4;->v:[B

    array-length v2, v2

    iput v2, v0, Lcom/shabakaty/downloader/t4;->i:I

    const/4 v7, 0x0

    .line 124
    iput v7, v0, Lcom/shabakaty/downloader/t4;->r:I

    .line 125
    iget-object v2, v0, Lcom/shabakaty/downloader/t4;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 126
    invoke-virtual {v1, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto/16 :goto_0

    :cond_23
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 127
    iput v9, v0, Lcom/shabakaty/downloader/t4;->j:I

    goto :goto_9

    :cond_24
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x200

    .line 128
    iput v9, v0, Lcom/shabakaty/downloader/t4;->j:I

    goto :goto_9

    :cond_25
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x300

    .line 129
    iput v9, v0, Lcom/shabakaty/downloader/t4;->j:I

    :goto_9
    move v11, v13

    :goto_a
    const/4 v3, 0x7

    const/4 v9, 0x2

    goto/16 :goto_3

    .line 130
    :cond_26
    invoke-virtual {v1, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public b()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/t4;->s:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/t4;->l:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t4;->h()V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t4;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/t4;->f:Lcom/shabakaty/downloader/fp4;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/t4;->t:Lcom/shabakaty/downloader/fp4;

    .line 5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/t4;->a:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/t4;->g:Lcom/shabakaty/downloader/fp4;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-object p2, v0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    const-string p2, "application/id3"

    .line 11
    iput-object p2, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p2

    .line 13
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/o11;

    invoke-direct {p1}, Lcom/shabakaty/downloader/o11;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t4;->g:Lcom/shabakaty/downloader/fp4;

    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/t4;->s:J

    :cond_0
    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/ka3;[BI)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/t4;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/t4;->i:I

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v2, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 5
    iget p1, p0, Lcom/shabakaty/downloader/t4;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/t4;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/t4;->h:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/t4;->i:I

    const/16 v0, 0x100

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/t4;->j:I

    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/ka3;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v0, v2, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 p1, 0x1

    return p1
.end method
