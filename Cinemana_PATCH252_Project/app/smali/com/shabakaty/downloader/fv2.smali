.class public final Lcom/shabakaty/downloader/fv2;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/l21;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public final b:Lcom/shabakaty/downloader/hv2$a;

.field public final c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/fp4;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/fv2;->f:I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v2, -0x1

    .line 5
    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/hv2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hv2$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/fv2;->b:Lcom/shabakaty/downloader/hv2$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/shabakaty/downloader/fv2;->l:J

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/fv2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-lez v0, :cond_c

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/fv2;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v1, p0, Lcom/shabakaty/downloader/fv2;->k:I

    iget v3, p0, Lcom/shabakaty/downloader/fv2;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v1, p1, v0}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/fv2;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/shabakaty/downloader/fv2;->g:I

    .line 7
    iget v7, p0, Lcom/shabakaty/downloader/fv2;->k:I

    if-ge v1, v7, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v4, p0, Lcom/shabakaty/downloader/fv2;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 10
    iget-wide v0, p0, Lcom/shabakaty/downloader/fv2;->l:J

    iget-wide v3, p0, Lcom/shabakaty/downloader/fv2;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/shabakaty/downloader/fv2;->l:J

    .line 11
    :cond_1
    iput v2, p0, Lcom/shabakaty/downloader/fv2;->g:I

    .line 12
    iput v2, p0, Lcom/shabakaty/downloader/fv2;->f:I

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    iget v4, p0, Lcom/shabakaty/downloader/fv2;->g:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    .line 16
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    iget v6, p0, Lcom/shabakaty/downloader/fv2;->g:I

    invoke-virtual {p1, v4, v6, v0}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 18
    iget v4, p0, Lcom/shabakaty/downloader/fv2;->g:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/shabakaty/downloader/fv2;->g:I

    if-ge v4, v5, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->b:Lcom/shabakaty/downloader/hv2$a;

    iget-object v4, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/hv2$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iput v2, p0, Lcom/shabakaty/downloader/fv2;->g:I

    .line 22
    iput v3, p0, Lcom/shabakaty/downloader/fv2;->f:I

    goto/16 :goto_0

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->b:Lcom/shabakaty/downloader/hv2$a;

    iget v4, v0, Lcom/shabakaty/downloader/hv2$a;->c:I

    iput v4, p0, Lcom/shabakaty/downloader/fv2;->k:I

    .line 24
    iget-boolean v4, p0, Lcom/shabakaty/downloader/fv2;->h:Z

    if-nez v4, :cond_6

    const-wide/32 v6, 0xf4240

    .line 25
    iget v4, v0, Lcom/shabakaty/downloader/hv2$a;->g:I

    int-to-long v8, v4

    mul-long v8, v8, v6

    iget v4, v0, Lcom/shabakaty/downloader/hv2$a;->d:I

    int-to-long v6, v4

    div-long/2addr v8, v6

    iput-wide v8, p0, Lcom/shabakaty/downloader/fv2;->j:J

    .line 26
    new-instance v6, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v6}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    iget-object v7, p0, Lcom/shabakaty/downloader/fv2;->e:Ljava/lang/String;

    .line 27
    iput-object v7, v6, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 28
    iget-object v7, v0, Lcom/shabakaty/downloader/hv2$a;->b:Ljava/lang/String;

    .line 29
    iput-object v7, v6, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    const/16 v7, 0x1000

    .line 30
    iput v7, v6, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 31
    iget v0, v0, Lcom/shabakaty/downloader/hv2$a;->e:I

    .line 32
    iput v0, v6, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 33
    iput v4, v6, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->c:Ljava/lang/String;

    .line 35
    iput-object v0, v6, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v6}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    .line 37
    iget-object v4, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v4, v0}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 38
    iput-boolean v3, p0, Lcom/shabakaty/downloader/fv2;->h:Z

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

    iget-object v2, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v2, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 41
    iput v1, p0, Lcom/shabakaty/downloader/fv2;->f:I

    goto/16 :goto_0

    .line 42
    :cond_7
    iget-object v0, p1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 43
    iget v4, p1, Lcom/shabakaty/downloader/ka3;->b:I

    .line 44
    iget v5, p1, Lcom/shabakaty/downloader/ka3;->c:I

    :goto_1
    if-ge v4, v5, :cond_b

    .line 45
    aget-byte v6, v0, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 46
    :goto_2
    iget-boolean v7, p0, Lcom/shabakaty/downloader/fv2;->i:Z

    if-eqz v7, :cond_9

    aget-byte v7, v0, v4

    const/16 v8, 0xe0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    const/4 v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    .line 47
    :goto_3
    iput-boolean v6, p0, Lcom/shabakaty/downloader/fv2;->i:Z

    if-eqz v7, :cond_a

    add-int/lit8 v5, v4, 0x1

    .line 48
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 49
    iput-boolean v2, p0, Lcom/shabakaty/downloader/fv2;->i:Z

    .line 50
    iget-object v2, p0, Lcom/shabakaty/downloader/fv2;->a:Lcom/shabakaty/downloader/ka3;

    .line 51
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 52
    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    .line 53
    iput v1, p0, Lcom/shabakaty/downloader/fv2;->g:I

    .line 54
    iput v3, p0, Lcom/shabakaty/downloader/fv2;->f:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_b
    invoke-virtual {p1, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/fv2;->f:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/fv2;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/fv2;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/fv2;->l:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/fv2;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/fv2;->d:Lcom/shabakaty/downloader/fp4;

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
    iput-wide p1, p0, Lcom/shabakaty/downloader/fv2;->l:J

    :cond_0
    return-void
.end method
