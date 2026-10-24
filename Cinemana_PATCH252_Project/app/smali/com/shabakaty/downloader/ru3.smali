.class public final Lcom/shabakaty/downloader/ru3;
.super Ljava/lang/Object;
.source "RtpAacReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/av3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/zu3;

.field public final b:Lcom/shabakaty/downloader/a55;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:J

.field public h:Lcom/shabakaty/downloader/fp4;

.field public i:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ru3;->a:Lcom/shabakaty/downloader/zu3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/a55;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a55;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    .line 4
    iget v0, p1, Lcom/shabakaty/downloader/zu3;->b:I

    iput v0, p0, Lcom/shabakaty/downloader/ru3;->c:I

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/zu3;->d:Lcom/google/common/collect/r;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AAC-hbr"

    .line 7
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    .line 8
    iput p1, p0, Lcom/shabakaty/downloader/ru3;->d:I

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/shabakaty/downloader/ru3;->e:I

    goto :goto_0

    :cond_0
    const-string v0, "AAC-lbr"

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 11
    iput p1, p0, Lcom/shabakaty/downloader/ru3;->d:I

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/ru3;->e:I

    .line 13
    :goto_0
    iget p1, p0, Lcom/shabakaty/downloader/ru3;->e:I

    iget v0, p0, Lcom/shabakaty/downloader/ru3;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/ru3;->f:I

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AAC mode not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/p91;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/ru3;->a:Lcom/shabakaty/downloader/zu3;

    iget-object p2, p2, Lcom/shabakaty/downloader/zu3;->c:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/ru3;->g:J

    .line 2
    iput-wide p3, p0, Lcom/shabakaty/downloader/ru3;->i:J

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/ru3;->g:J

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ka3;JIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->p()S

    move-result v2

    .line 4
    iget v3, v0, Lcom/shabakaty/downloader/ru3;->f:I

    div-int v3, v2, v3

    .line 5
    iget-wide v4, v0, Lcom/shabakaty/downloader/ru3;->i:J

    iget-wide v6, v0, Lcom/shabakaty/downloader/ru3;->g:J

    iget v8, v0, Lcom/shabakaty/downloader/ru3;->c:I

    sub-long v9, p2, v6

    int-to-long v13, v8

    const-wide/32 v11, 0xf4240

    .line 6
    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v6

    add-long v9, v4, v6

    .line 7
    iget-object v4, v0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v5, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 9
    iget v6, v1, Lcom/shabakaty/downloader/ka3;->c:I

    .line 10
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/a55;->q([BI)V

    .line 11
    iget v5, v1, Lcom/shabakaty/downloader/ka3;->b:I

    mul-int/lit8 v5, v5, 0x8

    .line 12
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->s(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 13
    iget-object v2, v0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    iget v3, v0, Lcom/shabakaty/downloader/ru3;->d:I

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v12

    .line 14
    iget-object v2, v0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    iget v3, v0, Lcom/shabakaty/downloader/ru3;->e:I

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    if-eqz p5, :cond_1

    .line 16
    iget-object v8, v0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 17
    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 18
    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    const/4 v2, 0x0

    move-wide v11, v9

    :goto_0
    if-ge v2, v3, :cond_1

    .line 19
    iget-object v4, v0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    iget v5, v0, Lcom/shabakaty/downloader/ru3;->d:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->k(I)I

    move-result v8

    .line 20
    iget-object v4, v0, Lcom/shabakaty/downloader/ru3;->b:Lcom/shabakaty/downloader/a55;

    iget v5, v0, Lcom/shabakaty/downloader/ru3;->e:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/a55;->v(I)V

    .line 21
    iget-object v4, v0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v4, v1, v8}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 22
    iget-object v4, v0, Lcom/shabakaty/downloader/ru3;->h:Lcom/shabakaty/downloader/fp4;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v11

    .line 23
    invoke-interface/range {v4 .. v10}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    int-to-long v13, v3

    const-wide/32 v15, 0xf4240

    .line 24
    iget v4, v0, Lcom/shabakaty/downloader/ru3;->c:I

    int-to-long v4, v4

    move-wide/from16 v17, v4

    .line 25
    invoke-static/range {v13 .. v18}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v4

    add-long/2addr v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
