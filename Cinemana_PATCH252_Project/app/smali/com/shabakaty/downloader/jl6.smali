.class public final Lcom/shabakaty/downloader/jl6;
.super Lcom/shabakaty/downloader/ye6;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ye6<",
        "Lcom/shabakaty/downloader/jl6;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lcom/shabakaty/downloader/gk6;

.field public C:Ljava/lang/String;

.field public D:J

.field public E:Lcom/shabakaty/downloader/nk6;

.field public F:[B

.field public G:Ljava/lang/String;

.field public H:[I

.field public I:Lcom/shabakaty/downloader/bh6;

.field public J:Z

.field public t:J

.field public u:J

.field public v:[Lcom/shabakaty/downloader/kl6;

.field public w:[B

.field public x:Lcom/shabakaty/downloader/ah6;

.field public y:[B

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/shabakaty/downloader/ye6;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/shabakaty/downloader/jl6;->t:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/jl6;->u:J

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/kl6;->t:[Lcom/shabakaty/downloader/kl6;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/shabakaty/downloader/qf6;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/shabakaty/downloader/kl6;->t:[Lcom/shabakaty/downloader/kl6;

    if-nez v2, :cond_0

    new-array v2, v1, [Lcom/shabakaty/downloader/kl6;

    sput-object v2, Lcom/shabakaty/downloader/kl6;->t:[Lcom/shabakaty/downloader/kl6;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/kl6;->t:[Lcom/shabakaty/downloader/kl6;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    sget-object v0, Lcom/shabakaty/downloader/tg6;->e:[B

    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    const-string v3, ""

    iput-object v3, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    iput-object v2, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    const-string v3, ""

    iput-object v3, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    const-wide/32 v3, 0x2bf20

    iput-wide v3, p0, Lcom/shabakaty/downloader/jl6;->D:J

    iput-object v2, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    sget-object v0, Lcom/shabakaty/downloader/tg6;->a:[I

    iput-object v0, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    iput-object v2, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    iput-boolean v1, p0, Lcom/shabakaty/downloader/jl6;->J:Z

    iput-object v2, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/rf6;->r:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/me6;)V
    .locals 11

    iget-wide v0, p0, Lcom/shabakaty/downloader/jl6;->t:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    invoke-virtual {p1, v2, v0, v1}, Lcom/shabakaty/downloader/me6;->o(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    array-length v6, v5

    if-ge v0, v6, :cond_2

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Lcom/shabakaty/downloader/me6;->b(ILcom/shabakaty/downloader/rf6;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    sget-object v5, Lcom/shabakaty/downloader/tg6;->e:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    iget-object v6, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    invoke-virtual {p1, v0, v6}, Lcom/shabakaty/downloader/me6;->d(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v6, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-virtual {p1, v0, v6}, Lcom/shabakaty/downloader/me6;->d(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    if-eqz v0, :cond_5

    const/4 v6, 0x7

    invoke-virtual {p1, v6, v0}, Lcom/shabakaty/downloader/me6;->b(ILcom/shabakaty/downloader/rf6;)V

    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    const-string v6, ""

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v7, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v7}, Lcom/shabakaty/downloader/me6;->c(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    if-eqz v0, :cond_7

    const/16 v7, 0x9

    invoke-virtual {p1, v7, v0}, Lcom/shabakaty/downloader/me6;->n(ILcom/shabakaty/downloader/y26;)V

    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xd

    iget-object v7, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v7}, Lcom/shabakaty/downloader/me6;->c(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xe

    iget-object v7, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v7}, Lcom/shabakaty/downloader/me6;->c(ILjava/lang/String;)V

    :cond_9
    iget-wide v7, p0, Lcom/shabakaty/downloader/jl6;->D:J

    const-wide/32 v9, 0x2bf20

    cmp-long v0, v7, v9

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/me6;->j(II)V

    shl-long v9, v7, v2

    const/16 v0, 0x3f

    shr-long/2addr v7, v0

    xor-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/me6;->p(J)V

    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    if-eqz v0, :cond_b

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/shabakaty/downloader/me6;->b(ILcom/shabakaty/downloader/rf6;)V

    :cond_b
    iget-wide v7, p0, Lcom/shabakaty/downloader/jl6;->u:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v7, v8}, Lcom/shabakaty/downloader/me6;->o(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/me6;->d(I[B)V

    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    array-length v3, v2

    if-ge v0, v3, :cond_e

    const/16 v3, 0x14

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/me6;->k(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    if-eqz v0, :cond_f

    const/16 v2, 0x17

    invoke-virtual {p1, v2, v0}, Lcom/shabakaty/downloader/me6;->n(ILcom/shabakaty/downloader/y26;)V

    :cond_f
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x18

    iget-object v2, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/me6;->c(ILjava/lang/String;)V

    :cond_10
    iget-boolean v0, p0, Lcom/shabakaty/downloader/jl6;->J:Z

    if-eqz v0, :cond_12

    const/16 v2, 0x19

    .line 1
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/me6;->j(II)V

    int-to-byte v0, v0

    iget-object v1, p1, Lcom/shabakaty/downloader/me6;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/shabakaty/downloader/me6;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_11
    new-instance v0, Lcom/shabakaty/downloader/ue6;

    iget-object v1, p1, Lcom/shabakaty/downloader/me6;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p1, p1, Lcom/shabakaty/downloader/me6;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ue6;-><init>(II)V

    throw v0

    .line 2
    :cond_12
    :goto_2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ye6;->a(Lcom/shabakaty/downloader/me6;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ye6;->g()Lcom/shabakaty/downloader/ye6;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jl6;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v1, v1

    new-array v1, v1, [Lcom/shabakaty/downloader/kl6;

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/shabakaty/downloader/kl6;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kl6;

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/shabakaty/downloader/gk6;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gk6;

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/shabakaty/downloader/nk6;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nk6;

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->H:[I

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    if-eqz v1, :cond_6

    iput-object v1, v0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final e()I
    .locals 13

    invoke-super {p0}, Lcom/shabakaty/downloader/ye6;->e()I

    iget-wide v0, p0, Lcom/shabakaty/downloader/jl6;->t:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    invoke-static {v2, v0, v1}, Lcom/shabakaty/downloader/me6;->l(IJ)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    array-length v7, v6

    if-ge v1, v7, :cond_2

    aget-object v6, v6, v1

    if-eqz v6, :cond_1

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/me6;->g(ILcom/shabakaty/downloader/rf6;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    sget-object v6, Lcom/shabakaty/downloader/tg6;->e:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    iget-object v7, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/me6;->i(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x6

    iget-object v7, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/me6;->i(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    if-eqz v1, :cond_5

    const/4 v7, 0x7

    invoke-static {v7, v1}, Lcom/shabakaty/downloader/me6;->g(ILcom/shabakaty/downloader/rf6;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    const-string v7, ""

    if-eqz v1, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x8

    iget-object v8, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/me6;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    if-eqz v1, :cond_7

    const/16 v8, 0x9

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/zp5;->I(ILcom/shabakaty/downloader/y26;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0xd

    iget-object v8, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/me6;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xe

    iget-object v8, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/shabakaty/downloader/me6;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-wide v8, p0, Lcom/shabakaty/downloader/jl6;->D:J

    const-wide/32 v10, 0x2bf20

    cmp-long v1, v8, v10

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/shabakaty/downloader/me6;->r(I)I

    move-result v1

    shl-long v10, v8, v2

    const/16 v12, 0x3f

    shr-long/2addr v8, v12

    xor-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/me6;->q(J)I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v0, v8

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    if-eqz v1, :cond_b

    const/16 v8, 0x10

    invoke-static {v8, v1}, Lcom/shabakaty/downloader/me6;->g(ILcom/shabakaty/downloader/rf6;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v8, p0, Lcom/shabakaty/downloader/jl6;->u:J

    cmp-long v1, v8, v4

    if-eqz v1, :cond_c

    const/16 v1, 0x11

    invoke-static {v1, v8, v9}, Lcom/shabakaty/downloader/me6;->l(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x12

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/me6;->i(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    array-length v5, v4

    if-ge v3, v5, :cond_e

    aget v4, v4, v3

    invoke-static {v4}, Lcom/shabakaty/downloader/me6;->s(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_e
    add-int/2addr v0, v1

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    if-eqz v1, :cond_10

    const/16 v3, 0x17

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/zp5;->I(ILcom/shabakaty/downloader/y26;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x18

    iget-object v3, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/me6;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jl6;->J:Z

    if-eqz v1, :cond_12

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/shabakaty/downloader/me6;->r(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/jl6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/jl6;

    iget-wide v3, p0, Lcom/shabakaty/downloader/jl6;->t:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/jl6;->t:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/shabakaty/downloader/jl6;->u:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/jl6;->u:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/qf6;->c([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->w:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/kv5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    if-eqz v1, :cond_a

    return v2

    :cond_9
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    if-eqz v1, :cond_c

    return v2

    :cond_b
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    if-eqz v1, :cond_e

    return v2

    :cond_d
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/gk6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    if-eqz v1, :cond_10

    return v2

    :cond_f
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/shabakaty/downloader/jl6;->D:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/jl6;->D:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    if-eqz v1, :cond_13

    return v2

    :cond_12
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/nk6;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    if-eqz v1, :cond_16

    return v2

    :cond_15
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->H:[I

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/qf6;->a([I[I)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    if-eqz v1, :cond_19

    return v2

    :cond_18
    iget-object v3, p1, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/kv5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jl6;->J:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/jl6;->J:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/shabakaty/downloader/df6;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    iget-object p1, p1, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/df6;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/shabakaty/downloader/df6;->a()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1

    :cond_1d
    return v2

    :cond_1e
    :goto_1
    return v0
.end method

.method public final synthetic f()Lcom/shabakaty/downloader/rf6;
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/jl6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jl6;

    return-object v0
.end method

.method public final synthetic g()Lcom/shabakaty/downloader/ye6;
    .locals 1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/jl6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jl6;

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    const-class v0, Lcom/shabakaty/downloader/jl6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shabakaty/downloader/jl6;->t:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/shabakaty/downloader/jl6;->u:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    const/16 v2, 0x4d5

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->v:[Lcom/shabakaty/downloader/kl6;

    invoke-static {v4}, Lcom/shabakaty/downloader/qf6;->d([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->w:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->x:Lcom/shabakaty/downloader/ah6;

    mul-int/lit8 v4, v4, 0x1f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->y:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->z:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->A:Ljava/lang/String;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->B:Lcom/shabakaty/downloader/gk6;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gk6;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/shabakaty/downloader/jl6;->C:Ljava/lang/String;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/shabakaty/downloader/jl6;->D:J

    ushr-long v6, v4, v3

    xor-long v3, v4, v6

    long-to-int v4, v3

    add-int/2addr v0, v4

    iget-object v3, p0, Lcom/shabakaty/downloader/jl6;->E:Lcom/shabakaty/downloader/nk6;

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/shabakaty/downloader/nk6;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/shabakaty/downloader/jl6;->F:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->G:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->H:[I

    if-eqz v0, :cond_8

    .line 1
    array-length v4, v0

    if-nez v4, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v0, 0x0

    :goto_8
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x1f

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/jl6;->I:Lcom/shabakaty/downloader/bh6;

    mul-int/lit8 v3, v3, 0x1f

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x1f

    iget-boolean v0, p0, Lcom/shabakaty/downloader/jl6;->J:Z

    if-eqz v0, :cond_a

    const/16 v2, 0x4cf

    :cond_a
    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x1f

    iget-object v0, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/shabakaty/downloader/df6;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/shabakaty/downloader/ye6;->s:Lcom/shabakaty/downloader/df6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/df6;->hashCode()I

    move-result v1

    :cond_c
    :goto_a
    add-int/2addr v3, v1

    return v3
.end method
