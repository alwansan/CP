.class public final Lcom/shabakaty/downloader/vu3;
.super Ljava/lang/Object;
.source "RtpH264Reader.java"

# interfaces
.implements Lcom/shabakaty/downloader/av3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ka3;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/zu3;

.field public d:Lcom/shabakaty/downloader/fp4;

.field public e:I

.field public f:J

.field public g:I

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    sget-object v1, Lcom/shabakaty/downloader/gw2;->a:[B

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vu3;->b:Lcom/shabakaty/downloader/ka3;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/vu3;->c:Lcom/shabakaty/downloader/zu3;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/vu3;->f:J

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/shabakaty/downloader/vu3;->g:I

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/p91;I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    .line 2
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    iget-object p2, p0, Lcom/shabakaty/downloader/vu3;->c:Lcom/shabakaty/downloader/zu3;

    iget-object p2, p2, Lcom/shabakaty/downloader/zu3;->c:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method

.method public b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/vu3;->f:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/vu3;->h:I

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/vu3;->i:J

    return-void
.end method

.method public c(JI)V
    .locals 0

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/ka3;JIZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 1
    :try_start_0
    iget-object v6, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v7, 0x0

    .line 2
    aget-byte v6, v6, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1f

    .line 3
    iget-object v8, v1, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    invoke-static {v8}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x5

    const/16 v9, 0x18

    const/4 v10, 0x1

    if-lez v6, :cond_1

    if-ge v6, v9, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v5

    .line 5
    iget v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu3;->e()I

    move-result v9

    add-int/2addr v9, v6

    iput v9, v1, Lcom/shabakaty/downloader/vu3;->h:I

    .line 6
    iget-object v6, v1, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v6, v0, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 7
    iget v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 9
    aget-byte v0, v0, v7

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 10
    :goto_0
    iput v10, v1, Lcom/shabakaty/downloader/vu3;->e:I

    goto/16 :goto_6

    :cond_1
    if-ne v6, v9, :cond_3

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->t()I

    .line 12
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_2

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v5

    .line 14
    iget v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu3;->e()I

    move-result v8

    add-int/2addr v8, v6

    iput v8, v1, Lcom/shabakaty/downloader/vu3;->h:I

    .line 15
    iget-object v6, v1, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v6, v0, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 16
    iget v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/shabakaty/downloader/vu3;->h:I

    goto :goto_1

    .line 17
    :cond_2
    iput v7, v1, Lcom/shabakaty/downloader/vu3;->e:I

    goto/16 :goto_6

    :cond_3
    const/16 v9, 0x1c

    if-ne v6, v9, :cond_c

    .line 18
    iget-object v5, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 19
    aget-byte v6, v5, v7

    .line 20
    aget-byte v9, v5, v10

    and-int/lit16 v6, v6, 0xe0

    and-int/lit8 v11, v9, 0x1f

    or-int/2addr v6, v11

    and-int/lit16 v11, v9, 0x80

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v9, v9, 0x40

    if-lez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-eqz v11, :cond_6

    .line 21
    iget v5, v1, Lcom/shabakaty/downloader/vu3;->h:I

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/vu3;->e()I

    move-result v11

    add-int/2addr v11, v5

    iput v11, v1, Lcom/shabakaty/downloader/vu3;->h:I

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    int-to-byte v5, v6

    .line 23
    aput-byte v5, v0, v10

    .line 24
    iget-object v5, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/ka3;->B([B)V

    .line 25
    iget-object v0, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/ka3;->E(I)V

    goto :goto_4

    .line 26
    :cond_6
    iget v0, v1, Lcom/shabakaty/downloader/vu3;->g:I

    add-int/2addr v0, v10

    const v11, 0xffff

    rem-int/2addr v0, v11

    const/4 v11, 0x2

    if-eq v4, v0, :cond_7

    new-array v5, v11, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    const-string v0, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 28
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "RtpH264Reader"

    .line 29
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 30
    :cond_7
    iget-object v0, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/ka3;->B([B)V

    .line 31
    iget-object v0, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 32
    :goto_4
    iget-object v0, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    .line 33
    iget-object v5, v1, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    iget-object v11, v1, Lcom/shabakaty/downloader/vu3;->a:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v5, v11, v0}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 34
    iget v5, v1, Lcom/shabakaty/downloader/vu3;->h:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/shabakaty/downloader/vu3;->h:I

    if-eqz v9, :cond_9

    and-int/lit8 v0, v6, 0x1f

    if-ne v0, v8, :cond_8

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    .line 35
    :goto_5
    iput v10, v1, Lcom/shabakaty/downloader/vu3;->e:I

    :cond_9
    :goto_6
    if-eqz p5, :cond_b

    .line 36
    iget-wide v5, v1, Lcom/shabakaty/downloader/vu3;->f:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v8

    if-nez v0, :cond_a

    .line 37
    iput-wide v2, v1, Lcom/shabakaty/downloader/vu3;->f:J

    .line 38
    :cond_a
    iget-wide v5, v1, Lcom/shabakaty/downloader/vu3;->i:J

    iget-wide v8, v1, Lcom/shabakaty/downloader/vu3;->f:J

    sub-long v10, v2, v8

    const-wide/32 v12, 0xf4240

    const-wide/32 v14, 0x15f90

    .line 39
    invoke-static/range {v10 .. v15}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v2

    add-long v9, v2, v5

    .line 40
    iget-object v8, v1, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    iget v11, v1, Lcom/shabakaty/downloader/vu3;->e:I

    iget v12, v1, Lcom/shabakaty/downloader/vu3;->h:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 41
    iput v7, v1, Lcom/shabakaty/downloader/vu3;->h:I

    .line 42
    :cond_b
    iput v4, v1, Lcom/shabakaty/downloader/vu3;->g:I

    return-void

    :cond_c
    new-array v0, v10, [Ljava/lang/Object;

    .line 43
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 45
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/pa3;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0
.end method

.method public final e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu3;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/vu3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/vu3;->d:Lcom/shabakaty/downloader/fp4;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/vu3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v1, v2, v0}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    return v0
.end method
