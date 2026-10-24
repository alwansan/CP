.class public Lcom/shabakaty/downloader/bn0;
.super Lcom/shabakaty/downloader/ao;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bn0$a;
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/ug0;

.field public t:Ljava/nio/ByteBuffer;

.field public u:Z

.field public v:J

.field public w:Ljava/nio/ByteBuffer;

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ao;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ug0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ug0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/bn0;->s:Lcom/shabakaty/downloader/ug0;

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/bn0;->x:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/bn0;->y:I

    return-void
.end method


# virtual methods
.method public H()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/ao;->r:I

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/bn0;->w:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 6
    :cond_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/bn0;->u:Z

    return-void
.end method

.method public final I(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bn0;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 5
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/bn0$a;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/bn0$a;-><init>(II)V

    throw v1
.end method

.method public J(I)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/bn0;->y:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bn0;->I(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr p1, v2

    if-lt v1, p1, :cond_1

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bn0;->I(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bn0;->w:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ao;->y(I)Z

    move-result v0

    return v0
.end method
