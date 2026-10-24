.class public final Lcom/shabakaty/downloader/w51;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;


# instance fields
.field public final r:Lcom/shabakaty/downloader/wh1;

.field public final s:Lcom/shabakaty/downloader/ag6;

.field public t:[J

.field public u:Z

.field public v:Lcom/shabakaty/downloader/c61;

.field public w:Z

.field public x:I

.field public y:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c61;Lcom/shabakaty/downloader/wh1;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/w51;->r:Lcom/shabakaty/downloader/wh1;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/w51;->v:Lcom/shabakaty/downloader/c61;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/ag6;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/w51;->s:Lcom/shabakaty/downloader/ag6;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v0, p0, Lcom/shabakaty/downloader/w51;->y:J

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/c61;->b:[J

    iput-object p2, p0, Lcom/shabakaty/downloader/w51;->t:[J

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/w51;->c(Lcom/shabakaty/downloader/c61;Z)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w51;->t:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/sy4;->b([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/w51;->x:I

    .line 3
    iget-boolean v3, p0, Lcom/shabakaty/downloader/w51;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/shabakaty/downloader/w51;->t:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    :goto_1
    iput-wide p1, p0, Lcom/shabakaty/downloader/w51;->y:J

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/c61;Z)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/w51;->x:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/w51;->t:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 2
    :goto_0
    iput-boolean p2, p0, Lcom/shabakaty/downloader/w51;->u:Z

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/w51;->v:Lcom/shabakaty/downloader/c61;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/c61;->b:[J

    iput-object p1, p0, Lcom/shabakaty/downloader/w51;->t:[J

    .line 5
    iget-wide v6, p0, Lcom/shabakaty/downloader/w51;->y:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, v6, v7}, Lcom/shabakaty/downloader/w51;->a(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, v4, v5, p2, p2}, Lcom/shabakaty/downloader/sy4;->b([JJZZ)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/w51;->x:I

    :cond_2
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/w51;->x:I

    iget-object v1, p0, Lcom/shabakaty/downloader/w51;->t:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v4, p0, Lcom/shabakaty/downloader/w51;->u:Z

    if-nez v4, :cond_1

    const/4 p1, 0x4

    .line 3
    iput p1, p2, Lcom/shabakaty/downloader/ao;->r:I

    return v3

    :cond_1
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_4

    .line 4
    iget-boolean p3, p0, Lcom/shabakaty/downloader/w51;->w:Z

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/w51;->x:I

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/w51;->s:Lcom/shabakaty/downloader/ag6;

    iget-object p3, p0, Lcom/shabakaty/downloader/w51;->v:Lcom/shabakaty/downloader/c61;

    iget-object p3, p3, Lcom/shabakaty/downloader/c61;->a:[Lcom/shabakaty/downloader/u51;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ag6;->l(Lcom/shabakaty/downloader/u51;)[B

    move-result-object p1

    .line 7
    array-length p3, p1

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/bn0;->J(I)V

    .line 8
    iget-object p3, p2, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/w51;->t:[J

    aget-wide v0, p1, v0

    iput-wide v0, p2, Lcom/shabakaty/downloader/bn0;->v:J

    .line 10
    iput v2, p2, Lcom/shabakaty/downloader/ao;->r:I

    return v3

    .line 11
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/shabakaty/downloader/w51;->r:Lcom/shabakaty/downloader/wh1;

    iput-object p2, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    .line 12
    iput-boolean v2, p0, Lcom/shabakaty/downloader/w51;->w:Z

    const/4 p1, -0x5

    return p1
.end method

.method public i(J)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/w51;->x:I

    iget-object v1, p0, Lcom/shabakaty/downloader/w51;->t:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/shabakaty/downloader/sy4;->b([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget p2, p0, Lcom/shabakaty/downloader/w51;->x:I

    sub-int p2, p1, p2

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/w51;->x:I

    return p2
.end method
