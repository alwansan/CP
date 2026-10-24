.class public final Lcom/shabakaty/downloader/x1;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# instance fields
.field public final a:Lcom/shabakaty/downloader/a55;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/shabakaty/downloader/fp4;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lcom/shabakaty/downloader/wh1;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/a55;

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/x1;->a:Lcom/shabakaty/downloader/a55;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    iget-object v0, v0, Lcom/shabakaty/downloader/a55;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object v1, p0, Lcom/shabakaty/downloader/x1;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/x1;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/x1;->l:J

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/x1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-lez v0, :cond_d

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/x1;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/x1;->k:I

    iget v3, p0, Lcom/shabakaty/downloader/x1;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/x1;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shabakaty/downloader/x1;->g:I

    .line 7
    iget v7, p0, Lcom/shabakaty/downloader/x1;->k:I

    if-ne v1, v7, :cond_0

    .line 8
    iget-wide v4, p0, Lcom/shabakaty/downloader/x1;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 10
    iget-wide v0, p0, Lcom/shabakaty/downloader/x1;->l:J

    iget-wide v3, p0, Lcom/shabakaty/downloader/x1;->i:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/shabakaty/downloader/x1;->l:J

    .line 11
    :cond_2
    iput v2, p0, Lcom/shabakaty/downloader/x1;->f:I

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->b:Lcom/shabakaty/downloader/ka3;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v4

    iget v5, p0, Lcom/shabakaty/downloader/x1;->g:I

    const/16 v6, 0x80

    rsub-int v5, v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 15
    iget v5, p0, Lcom/shabakaty/downloader/x1;->g:I

    .line 16
    iget-object v7, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v8, p1, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v7, v8, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v0, p1, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 18
    iget v0, p0, Lcom/shabakaty/downloader/x1;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/shabakaty/downloader/x1;->g:I

    if-ne v0, v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->a:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a55;->s(I)V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->a:Lcom/shabakaty/downloader/a55;

    invoke-static {v0}, Lcom/shabakaty/downloader/y1;->b(Lcom/shabakaty/downloader/a55;)Lcom/shabakaty/downloader/y1$b;

    move-result-object v0

    .line 21
    iget-object v3, p0, Lcom/shabakaty/downloader/x1;->j:Lcom/shabakaty/downloader/wh1;

    if-eqz v3, :cond_5

    iget v4, v0, Lcom/shabakaty/downloader/y1$b;->c:I

    iget v5, v3, Lcom/shabakaty/downloader/wh1;->P:I

    if-ne v4, v5, :cond_5

    iget v4, v0, Lcom/shabakaty/downloader/y1$b;->b:I

    iget v5, v3, Lcom/shabakaty/downloader/wh1;->Q:I

    if-ne v4, v5, :cond_5

    iget-object v4, v0, Lcom/shabakaty/downloader/y1$b;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 22
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 23
    :cond_5
    new-instance v3, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v3}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v4, p0, Lcom/shabakaty/downloader/x1;->d:Ljava/lang/String;

    .line 24
    iput-object v4, v3, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 25
    iget-object v4, v0, Lcom/shabakaty/downloader/y1$b;->a:Ljava/lang/String;

    .line 26
    iput-object v4, v3, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 27
    iget v4, v0, Lcom/shabakaty/downloader/y1$b;->c:I

    .line 28
    iput v4, v3, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 29
    iget v4, v0, Lcom/shabakaty/downloader/y1$b;->b:I

    .line 30
    iput v4, v3, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 31
    iget-object v4, p0, Lcom/shabakaty/downloader/x1;->c:Ljava/lang/String;

    .line 32
    iput-object v4, v3, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/x1;->j:Lcom/shabakaty/downloader/wh1;

    .line 34
    iget-object v4, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 35
    :cond_6
    iget v3, v0, Lcom/shabakaty/downloader/y1$b;->d:I

    iput v3, p0, Lcom/shabakaty/downloader/x1;->k:I

    const-wide/32 v3, 0xf4240

    .line 36
    iget v0, v0, Lcom/shabakaty/downloader/y1$b;->e:I

    int-to-long v7, v0

    mul-long v7, v7, v3

    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->j:Lcom/shabakaty/downloader/wh1;

    iget v0, v0, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v3, v0

    div-long/2addr v7, v3

    iput-wide v7, p0, Lcom/shabakaty/downloader/x1;->i:J

    .line 37
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 38
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

    iget-object v2, p0, Lcom/shabakaty/downloader/x1;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v2, v6}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 39
    iput v1, p0, Lcom/shabakaty/downloader/x1;->f:I

    goto/16 :goto_0

    .line 40
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    const/16 v4, 0x77

    const/16 v5, 0xb

    if-lez v0, :cond_c

    .line 41
    iget-boolean v0, p0, Lcom/shabakaty/downloader/x1;->h:Z

    if-nez v0, :cond_9

    .line 42
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-ne v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x1;->h:Z

    goto :goto_2

    .line 43
    :cond_9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 44
    iput-boolean v2, p0, Lcom/shabakaty/downloader/x1;->h:Z

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    if-ne v0, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 45
    :goto_4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x1;->h:Z

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_0

    .line 46
    iput v3, p0, Lcom/shabakaty/downloader/x1;->f:I

    .line 47
    iget-object v0, p0, Lcom/shabakaty/downloader/x1;->b:Lcom/shabakaty/downloader/ka3;

    .line 48
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 49
    aput-byte v5, v0, v2

    .line 50
    aput-byte v4, v0, v3

    .line 51
    iput v1, p0, Lcom/shabakaty/downloader/x1;->g:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/x1;->f:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/x1;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/x1;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/x1;->l:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x1;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/x1;->e:Lcom/shabakaty/downloader/fp4;

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
    iput-wide p1, p0, Lcom/shabakaty/downloader/x1;->l:J

    :cond_0
    return-void
.end method
