.class public final Lcom/shabakaty/downloader/uu3;
.super Ljava/lang/Object;
.source "RtpExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/av3;

.field public final b:Lcom/shabakaty/downloader/ka3;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:Lcom/shabakaty/downloader/yu3;

.field public g:Lcom/shabakaty/downloader/p91;

.field public h:Z

.field public volatile i:J

.field public volatile j:I

.field public k:Z

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zu3;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/uu3;->d:I

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/zu3;->c:Lcom/shabakaty/downloader/wh1;

    iget-object p2, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "video/avc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/ac3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_3

    .line 6
    :pswitch_0
    new-instance p2, Lcom/shabakaty/downloader/vu3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vu3;-><init>(Lcom/shabakaty/downloader/zu3;)V

    goto :goto_2

    .line 7
    :pswitch_1
    new-instance p2, Lcom/shabakaty/downloader/su3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/su3;-><init>(Lcom/shabakaty/downloader/zu3;)V

    goto :goto_2

    .line 8
    :pswitch_2
    new-instance p2, Lcom/shabakaty/downloader/ru3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ru3;-><init>(Lcom/shabakaty/downloader/zu3;)V

    :goto_2
    move-object p1, p2

    .line 9
    :goto_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->a:Lcom/shabakaty/downloader/av3;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const p2, 0xffe3

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->b:Lcom/shabakaty/downloader/ka3;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->c:Lcom/shabakaty/downloader/ka3;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->e:Ljava/lang/Object;

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/yu3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/yu3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->f:Lcom/shabakaty/downloader/yu3;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide p1, p0, Lcom/shabakaty/downloader/uu3;->i:J

    .line 16
    iput v1, p0, Lcom/shabakaty/downloader/uu3;->j:I

    .line 17
    iput-wide p1, p0, Lcom/shabakaty/downloader/uu3;->l:J

    .line 18
    iput-wide p1, p0, Lcom/shabakaty/downloader/uu3;->m:J

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3313c2e -> :sswitch_2
        0xb269698 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uu3;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lcom/shabakaty/downloader/uu3;->l:J

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/uu3;->m:J

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->g:Lcom/shabakaty/downloader/p91;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->b:Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const v2, 0xffe3

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 5
    invoke-interface {v4, v0, v3, v2}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    return v3

    .line 6
    :cond_1
    iget-object v4, v1, Lcom/shabakaty/downloader/uu3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 7
    iget-object v4, v1, Lcom/shabakaty/downloader/uu3;->b:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 8
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->b:Lcom/shabakaty/downloader/ka3;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v4

    const/16 v5, 0xc

    const/4 v8, 0x1

    if-ge v4, v5, :cond_2

    :goto_0
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    shr-int/lit8 v5, v4, 0x6

    int-to-byte v5, v5

    shr-int/lit8 v9, v4, 0x5

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    const/4 v10, 0x2

    if-eq v5, v10, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v5

    shr-int/lit8 v10, v5, 0x7

    and-int/2addr v10, v8

    if-ne v10, v8, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    :goto_2
    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v11

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v12

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    if-lez v4, :cond_6

    mul-int/lit8 v15, v4, 0x4

    .line 15
    new-array v15, v15, [B

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_7

    mul-int/lit8 v2, v8, 0x4

    .line 16
    iget-object v7, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v6, v0, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v3, 0x4

    invoke-static {v7, v6, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v2, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/lit8 v8, v8, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    goto :goto_3

    .line 18
    :cond_6
    sget-object v15, Lcom/shabakaty/downloader/wu3;->g:[B

    .line 19
    :cond_7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v3

    .line 21
    iget-object v4, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v6, v0, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v7, 0x0

    invoke-static {v4, v6, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget v4, v0, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/shabakaty/downloader/ka3;->b:I

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/wu3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wu3$b;-><init>()V

    .line 24
    iput-boolean v9, v0, Lcom/shabakaty/downloader/wu3$b;->a:Z

    .line 25
    iput-boolean v10, v0, Lcom/shabakaty/downloader/wu3$b;->b:Z

    .line 26
    iput-byte v5, v0, Lcom/shabakaty/downloader/wu3$b;->c:B

    const v3, 0xffff

    if-ltz v11, :cond_8

    if-gt v11, v3, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 27
    :goto_4
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->b(Z)V

    and-int v4, v3, v11

    .line 28
    iput v4, v0, Lcom/shabakaty/downloader/wu3$b;->d:I

    .line 29
    iput-wide v12, v0, Lcom/shabakaty/downloader/wu3$b;->e:J

    .line 30
    iput v14, v0, Lcom/shabakaty/downloader/wu3$b;->f:I

    .line 31
    iput-object v15, v0, Lcom/shabakaty/downloader/wu3$b;->g:[B

    .line 32
    iput-object v2, v0, Lcom/shabakaty/downloader/wu3$b;->h:[B

    .line 33
    new-instance v2, Lcom/shabakaty/downloader/wu3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/wu3;-><init>(Lcom/shabakaty/downloader/wu3$b;Lcom/shabakaty/downloader/wu3$a;)V

    move-object v7, v2

    :goto_5
    if-nez v7, :cond_9

    const/4 v0, 0x0

    return v0

    .line 34
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    sub-long v4, v2, v4

    .line 35
    iget-object v6, v1, Lcom/shabakaty/downloader/uu3;->f:Lcom/shabakaty/downloader/yu3;

    .line 36
    monitor-enter v6

    .line 37
    :try_start_0
    iget-object v0, v6, Lcom/shabakaty/downloader/yu3;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/16 v8, 0x1388

    if-ge v0, v8, :cond_15

    .line 38
    iget v0, v7, Lcom/shabakaty/downloader/wu3;->c:I

    .line 39
    iget-boolean v8, v6, Lcom/shabakaty/downloader/yu3;->d:Z

    const v9, 0xfffe

    if-nez v8, :cond_b

    .line 40
    invoke-virtual {v6}, Lcom/shabakaty/downloader/yu3;->d()V

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, -0x1

    add-int/2addr v0, v8

    const v8, 0xffff

    .line 41
    rem-int v9, v0, v8

    .line 42
    :goto_6
    iput v9, v6, Lcom/shabakaty/downloader/yu3;->c:I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, v6, Lcom/shabakaty/downloader/yu3;->d:Z

    .line 44
    new-instance v0, Lcom/shabakaty/downloader/yu3$a;

    invoke-direct {v0, v7, v2, v3}, Lcom/shabakaty/downloader/yu3$a;-><init>(Lcom/shabakaty/downloader/wu3;J)V

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/yu3;->a(Lcom/shabakaty/downloader/yu3$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    monitor-exit v6

    goto :goto_8

    .line 46
    :cond_b
    :try_start_1
    iget v8, v6, Lcom/shabakaty/downloader/yu3;->b:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    const v10, 0xffff

    .line 47
    rem-int/2addr v8, v10

    .line 48
    invoke-static {v0, v8}, Lcom/shabakaty/downloader/yu3;->b(II)I

    move-result v8

    .line 49
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v10, 0x3e8

    if-ge v8, v10, :cond_d

    .line 50
    iget v8, v6, Lcom/shabakaty/downloader/yu3;->c:I

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/yu3;->b(II)I

    move-result v0

    if-lez v0, :cond_c

    .line 51
    new-instance v0, Lcom/shabakaty/downloader/yu3$a;

    invoke-direct {v0, v7, v2, v3}, Lcom/shabakaty/downloader/yu3$a;-><init>(Lcom/shabakaty/downloader/wu3;J)V

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/yu3;->a(Lcom/shabakaty/downloader/yu3$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    monitor-exit v6

    goto :goto_8

    .line 53
    :cond_c
    monitor-exit v6

    goto :goto_8

    :cond_d
    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    const/4 v8, -0x1

    add-int/2addr v0, v8

    const v8, 0xffff

    .line 54
    :try_start_2
    rem-int v9, v0, v8

    .line 55
    :goto_7
    iput v9, v6, Lcom/shabakaty/downloader/yu3;->c:I

    .line 56
    iget-object v0, v6, Lcom/shabakaty/downloader/yu3;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 57
    new-instance v0, Lcom/shabakaty/downloader/yu3$a;

    invoke-direct {v0, v7, v2, v3}, Lcom/shabakaty/downloader/yu3$a;-><init>(Lcom/shabakaty/downloader/wu3;J)V

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/yu3;->a(Lcom/shabakaty/downloader/yu3$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    monitor-exit v6

    .line 59
    :goto_8
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->f:Lcom/shabakaty/downloader/yu3;

    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/yu3;->c(J)Lcom/shabakaty/downloader/wu3;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v2, 0x0

    return v2

    .line 60
    :cond_f
    iget-boolean v2, v1, Lcom/shabakaty/downloader/uu3;->h:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_12

    .line 61
    iget-wide v2, v1, Lcom/shabakaty/downloader/uu3;->i:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_10

    .line 62
    iget-wide v2, v0, Lcom/shabakaty/downloader/wu3;->d:J

    iput-wide v2, v1, Lcom/shabakaty/downloader/uu3;->i:J

    .line 63
    :cond_10
    iget v2, v1, Lcom/shabakaty/downloader/uu3;->j:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    .line 64
    iget v2, v0, Lcom/shabakaty/downloader/wu3;->c:I

    iput v2, v1, Lcom/shabakaty/downloader/uu3;->j:I

    .line 65
    :cond_11
    iget-object v2, v1, Lcom/shabakaty/downloader/uu3;->a:Lcom/shabakaty/downloader/av3;

    iget-wide v8, v1, Lcom/shabakaty/downloader/uu3;->i:J

    iget v3, v1, Lcom/shabakaty/downloader/uu3;->j:I

    invoke-interface {v2, v8, v9, v3}, Lcom/shabakaty/downloader/av3;->c(JI)V

    const/4 v2, 0x1

    .line 66
    iput-boolean v2, v1, Lcom/shabakaty/downloader/uu3;->h:Z

    .line 67
    :cond_12
    iget-object v2, v1, Lcom/shabakaty/downloader/uu3;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_3
    iget-boolean v3, v1, Lcom/shabakaty/downloader/uu3;->k:Z

    if-eqz v3, :cond_13

    .line 69
    iget-wide v3, v1, Lcom/shabakaty/downloader/uu3;->l:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_14

    iget-wide v3, v1, Lcom/shabakaty/downloader/uu3;->m:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_14

    .line 70
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->f:Lcom/shabakaty/downloader/yu3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yu3;->d()V

    .line 71
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->a:Lcom/shabakaty/downloader/av3;

    iget-wide v3, v1, Lcom/shabakaty/downloader/uu3;->l:J

    iget-wide v8, v1, Lcom/shabakaty/downloader/uu3;->m:J

    invoke-interface {v0, v3, v4, v8, v9}, Lcom/shabakaty/downloader/av3;->b(JJ)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, v1, Lcom/shabakaty/downloader/uu3;->k:Z

    .line 73
    iput-wide v6, v1, Lcom/shabakaty/downloader/uu3;->l:J

    .line 74
    iput-wide v6, v1, Lcom/shabakaty/downloader/uu3;->m:J

    goto :goto_9

    .line 75
    :cond_13
    iget-object v3, v1, Lcom/shabakaty/downloader/uu3;->c:Lcom/shabakaty/downloader/ka3;

    iget-object v6, v0, Lcom/shabakaty/downloader/wu3;->f:[B

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ka3;->B([B)V

    .line 76
    iget-object v7, v1, Lcom/shabakaty/downloader/uu3;->a:Lcom/shabakaty/downloader/av3;

    iget-object v8, v1, Lcom/shabakaty/downloader/uu3;->c:Lcom/shabakaty/downloader/ka3;

    iget-wide v9, v0, Lcom/shabakaty/downloader/wu3;->d:J

    iget v11, v0, Lcom/shabakaty/downloader/wu3;->c:I

    iget-boolean v12, v0, Lcom/shabakaty/downloader/wu3;->a:Z

    invoke-interface/range {v7 .. v12}, Lcom/shabakaty/downloader/av3;->d(Lcom/shabakaty/downloader/ka3;JIZ)V

    .line 77
    iget-object v0, v1, Lcom/shabakaty/downloader/uu3;->f:Lcom/shabakaty/downloader/yu3;

    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/yu3;->c(J)Lcom/shabakaty/downloader/wu3;

    move-result-object v0

    if-nez v0, :cond_13

    .line 78
    :cond_14
    :goto_9
    monitor-exit v2

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 79
    :cond_15
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Queue size limit of 5000 reached."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uu3;->a:Lcom/shabakaty/downloader/av3;

    iget v1, p0, Lcom/shabakaty/downloader/uu3;->d:I

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/av3;->a(Lcom/shabakaty/downloader/p91;I)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/uu3;->g:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
