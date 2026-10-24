.class public final Lcom/shabakaty/downloader/kl;
.super Lcom/shabakaty/downloader/bn0;
.source "BatchBuffer.java"


# instance fields
.field public A:I

.field public B:I

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    const/16 v0, 0x20

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/kl;->B:I

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/bn0;->H()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/kl;->A:I

    return-void
.end method

.method public M(Lcom/shabakaty/downloader/bn0;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->L()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->D()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kl;->N()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/kl;->A:I

    iget v3, p0, Lcom/shabakaty/downloader/kl;->B:I

    if-lt v0, v3, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v0, v3

    const v3, 0x2ee000

    if-le v0, v3, :cond_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_4

    return v2

    .line 10
    :cond_4
    iget v0, p0, Lcom/shabakaty/downloader/kl;->A:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/kl;->A:I

    if-nez v0, :cond_5

    .line 11
    iget-wide v2, p1, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v2, p0, Lcom/shabakaty/downloader/bn0;->v:J

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iput v1, p0, Lcom/shabakaty/downloader/ao;->r:I

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/ao;->r:I

    .line 16
    :cond_6
    iget-object v0, p1, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/bn0;->J(I)V

    .line 18
    iget-object v2, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    :cond_7
    iget-wide v2, p1, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v2, p0, Lcom/shabakaty/downloader/kl;->z:J

    return v1
.end method

.method public N()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/kl;->A:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
