.class public final Lcom/shabakaty/downloader/su3;
.super Ljava/lang/Object;
.source "RtpAc3Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/av3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zu3;

.field public final b:Lcom/shabakaty/downloader/a55;

.field public c:Lcom/shabakaty/downloader/fp4;

.field public d:I

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/su3;->a:Lcom/shabakaty/downloader/zu3;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/a55;

    invoke-direct {p1}, Lcom/shabakaty/downloader/a55;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/su3;->b:Lcom/shabakaty/downloader/a55;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/su3;->e:J

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/p91;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/su3;->a:Lcom/shabakaty/downloader/zu3;

    iget-object p2, p2, Lcom/shabakaty/downloader/zu3;->c:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/su3;->e:J

    .line 2
    iput-wide p3, p0, Lcom/shabakaty/downloader/su3;->g:J

    return-void
.end method

.method public c(JI)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/su3;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/su3;->e:J

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ka3;JIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v2

    const/4 v3, 0x3

    and-int/2addr v2, v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 3
    iget-wide v5, v0, Lcom/shabakaty/downloader/su3;->g:J

    iget-wide v7, v0, Lcom/shabakaty/downloader/su3;->e:J

    iget-object v9, v0, Lcom/shabakaty/downloader/su3;->a:Lcom/shabakaty/downloader/zu3;

    iget v9, v9, Lcom/shabakaty/downloader/zu3;->b:I

    sub-long v10, p2, v7

    int-to-long v14, v9

    const-wide/32 v12, 0xf4240

    .line 4
    invoke-static/range {v10 .. v15}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v7

    add-long v10, v5, v7

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_1

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    iget v4, v0, Lcom/shabakaty/downloader/su3;->d:I

    if-lez v4, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/su3;->e()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v4

    .line 9
    iget-object v5, v0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v5, v1, v4}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 12
    iget v1, v0, Lcom/shabakaty/downloader/su3;->d:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/shabakaty/downloader/su3;->d:I

    .line 13
    iput-wide v10, v0, Lcom/shabakaty/downloader/su3;->f:J

    if-eqz p5, :cond_6

    if-ne v2, v3, :cond_6

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/su3;->e()V

    goto :goto_2

    .line 15
    :cond_3
    iget v2, v0, Lcom/shabakaty/downloader/su3;->d:I

    if-lez v2, :cond_4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/su3;->e()V

    :cond_4
    if-ne v4, v5, :cond_5

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v13

    .line 18
    iget-object v2, v0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v2, v1, v13}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 21
    iget-object v9, v0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 22
    invoke-interface/range {v9 .. v15}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    goto :goto_2

    .line 23
    :cond_5
    iget-object v2, v0, Lcom/shabakaty/downloader/su3;->b:Lcom/shabakaty/downloader/a55;

    .line 24
    iget-object v3, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 25
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->p([B)V

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/su3;->b:Lcom/shabakaty/downloader/a55;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/a55;->w(I)V

    const/4 v2, 0x0

    move-wide v12, v10

    :goto_1
    if-ge v2, v4, :cond_6

    .line 27
    iget-object v3, v0, Lcom/shabakaty/downloader/su3;->b:Lcom/shabakaty/downloader/a55;

    invoke-static {v3}, Lcom/shabakaty/downloader/y1;->b(Lcom/shabakaty/downloader/a55;)Lcom/shabakaty/downloader/y1$b;

    move-result-object v3

    .line 28
    iget-object v5, v0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    .line 29
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v6, v3, Lcom/shabakaty/downloader/y1$b;->d:I

    invoke-interface {v5, v1, v6}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 31
    iget-object v5, v0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    sget v6, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v8, 0x1

    iget v9, v3, Lcom/shabakaty/downloader/y1$b;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v12

    .line 32
    invoke-interface/range {v5 .. v11}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 33
    iget v5, v3, Lcom/shabakaty/downloader/y1$b;->e:I

    iget v6, v3, Lcom/shabakaty/downloader/y1$b;->b:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    mul-long v5, v5, v7

    add-long/2addr v12, v5

    .line 34
    iget-object v5, v0, Lcom/shabakaty/downloader/su3;->b:Lcom/shabakaty/downloader/a55;

    iget v3, v3, Lcom/shabakaty/downloader/y1$b;->d:I

    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/a55;->w(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/su3;->c:Lcom/shabakaty/downloader/fp4;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    iget-wide v1, p0, Lcom/shabakaty/downloader/su3;->f:J

    const/4 v3, 0x1

    iget v4, p0, Lcom/shabakaty/downloader/su3;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    invoke-interface/range {v0 .. v6}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/su3;->d:I

    return-void
.end method
