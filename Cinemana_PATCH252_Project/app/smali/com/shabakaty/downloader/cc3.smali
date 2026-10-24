.class public final Lcom/shabakaty/downloader/cc3;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/kr4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/l21;

.field public final b:Lcom/shabakaty/downloader/a55;

.field public c:I

.field public d:I

.field public e:Lcom/shabakaty/downloader/qn4;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l21;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/a55;

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/cc3;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ka3;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->e:Lcom/shabakaty/downloader/qn4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const-string v1, "PesReader"

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/cc3;->c:I

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/cc3;->j:I

    if-eq v0, v2, :cond_0

    const/16 v6, 0x3b

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unexpected start indicator: expected "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " more bytes"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l21;->d()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/cc3;->e(I)V

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-lez v0, :cond_13

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/cc3;->c:I

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    if-eq v0, v5, :cond_c

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    .line 13
    iget v3, p0, Lcom/shabakaty/downloader/cc3;->j:I

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    sub-int v6, v0, v3

    :goto_2
    if-lez v6, :cond_6

    sub-int/2addr v0, v6

    .line 14
    iget v3, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v3, v0

    .line 15
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 16
    :cond_6
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/l21;->a(Lcom/shabakaty/downloader/ka3;)V

    .line 17
    iget v3, p0, Lcom/shabakaty/downloader/cc3;->j:I

    if-eq v3, v2, :cond_12

    sub-int/2addr v3, v0

    .line 18
    iput v3, p0, Lcom/shabakaty/downloader/cc3;->j:I

    if-nez v3, :cond_12

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l21;->d()V

    .line 20
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/cc3;->e(I)V

    goto/16 :goto_7

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    const/16 v0, 0xa

    .line 22
    iget v2, p0, Lcom/shabakaty/downloader/cc3;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    iget-object v2, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    iget-object v2, v2, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {p0, p1, v2, v0}, Lcom/shabakaty/downloader/cc3;->d(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iget v2, p0, Lcom/shabakaty/downloader/cc3;->i:I

    .line 24
    invoke-virtual {p0, p1, v0, v2}, Lcom/shabakaty/downloader/cc3;->d(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/a55;->s(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide v6, p0, Lcom/shabakaty/downloader/cc3;->l:J

    .line 27
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cc3;->f:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_a

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    .line 30
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v9, v0

    or-long/2addr v6, v9

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    int-to-long v9, v0

    or-long/2addr v6, v9

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 35
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cc3;->h:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/shabakaty/downloader/cc3;->g:Z

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 37
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x1e

    shl-long/2addr v2, v0

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 39
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v9, v0

    or-long/2addr v2, v9

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    int-to-long v8, v0

    or-long/2addr v2, v8

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 43
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->e:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/qn4;->b(J)J

    .line 44
    iput-boolean v5, p0, Lcom/shabakaty/downloader/cc3;->h:Z

    .line 45
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->e:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {v0, v6, v7}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/cc3;->l:J

    .line 46
    :cond_a
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cc3;->k:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    or-int/2addr p2, v0

    .line 47
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    iget-wide v2, p0, Lcom/shabakaty/downloader/cc3;->l:J

    invoke-interface {v0, v2, v3, p2}, Lcom/shabakaty/downloader/l21;->e(JI)V

    const/4 v0, 0x3

    .line 48
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cc3;->e(I)V

    goto/16 :goto_7

    .line 49
    :cond_c
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    iget-object v0, v0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v2, 0x9

    invoke-virtual {p0, p1, v0, v2}, Lcom/shabakaty/downloader/cc3;->d(Lcom/shabakaty/downloader/ka3;[BI)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 51
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    if-eq v0, v5, :cond_d

    const/16 v2, 0x29

    const-string v3, "Unexpected start code prefix: "

    .line 52
    invoke-static {v2, v3, v0, v1}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->j:I

    const/4 v0, 0x0

    goto :goto_5

    .line 54
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 55
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v0

    .line 56
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 57
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v3

    iput-boolean v3, p0, Lcom/shabakaty/downloader/cc3;->k:Z

    .line 58
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 59
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v3

    iput-boolean v3, p0, Lcom/shabakaty/downloader/cc3;->f:Z

    .line 60
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/a55;->j()Z

    move-result v3

    iput-boolean v3, p0, Lcom/shabakaty/downloader/cc3;->g:Z

    .line 61
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 62
    iget-object v3, p0, Lcom/shabakaty/downloader/cc3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/cc3;->i:I

    if-nez v0, :cond_e

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->j:I

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v2

    .line 64
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->j:I

    if-gez v0, :cond_f

    const/16 v2, 0x2f

    const-string v3, "Found negative packet payload size: "

    .line 65
    invoke-static {v2, v3, v0, v1}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->j:I

    :cond_f
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    .line 67
    :goto_6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/cc3;->e(I)V

    goto :goto_7

    .line 68
    :cond_11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    :cond_12
    :goto_7
    const/4 v2, -0x1

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_13
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->c:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/cc3;->d:I

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/cc3;->h:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {v0}, Lcom/shabakaty/downloader/l21;->b()V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/cc3;->e:Lcom/shabakaty/downloader/qn4;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cc3;->a:Lcom/shabakaty/downloader/l21;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/l21;->c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/ka3;[BI)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/cc3;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget v2, p0, Lcom/shabakaty/downloader/cc3;->d:I

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v4, p1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v3, v4, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 6
    :goto_0
    iget p1, p0, Lcom/shabakaty/downloader/cc3;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/cc3;->d:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/cc3;->c:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/cc3;->d:I

    return-void
.end method
