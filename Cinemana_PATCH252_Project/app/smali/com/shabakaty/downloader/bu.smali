.class public final Lcom/shabakaty/downloader/bu;
.super Lcom/shabakaty/downloader/bk;
.source "CameraMotionRenderer.java"


# instance fields
.field public final C:Lcom/shabakaty/downloader/bn0;

.field public final D:Lcom/shabakaty/downloader/ka3;

.field public E:J

.field public F:Lcom/shabakaty/downloader/au;

.field public G:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/bk;-><init>(I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/bn0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/bu;->D:Lcom/shabakaty/downloader/ka3;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bu;->F:Lcom/shabakaty/downloader/au;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/au;->e()V

    :cond_0
    return-void
.end method

.method public D(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/bu;->G:J

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/bu;->F:Lcom/shabakaty/downloader/au;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/au;->e()V

    :cond_0
    return-void
.end method

.method public H([Lcom/shabakaty/downloader/wh1;JJ)V
    .locals 0

    .line 1
    iput-wide p4, p0, Lcom/shabakaty/downloader/bu;->E:J

    return-void
.end method

.method public a(Lcom/shabakaty/downloader/wh1;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->i()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public o(JJ)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->i()Z

    move-result p3

    if-nez p3, :cond_6

    iget-wide p3, p0, Lcom/shabakaty/downloader/bu;->G:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_6

    .line 2
    iget-object p3, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_6

    .line 5
    iget-object p3, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    iget-wide v1, p3, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v1, p0, Lcom/shabakaty/downloader/bu;->G:J

    .line 7
    iget-object p4, p0, Lcom/shabakaty/downloader/bu;->F:Lcom/shabakaty/downloader/au;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 9
    iget-object p3, p0, Lcom/shabakaty/downloader/bu;->C:Lcom/shabakaty/downloader/bn0;

    iget-object p3, p3, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    sget p4, Lcom/shabakaty/downloader/sy4;->a:I

    .line 10
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v1, 0x10

    if-eq p4, v1, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    .line 11
    :cond_3
    iget-object p4, p0, Lcom/shabakaty/downloader/bu;->D:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 12
    iget-object p4, p0, Lcom/shabakaty/downloader/bu;->D:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    invoke-virtual {p4, p3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_4

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/bu;->D:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p3, p4

    :goto_2
    if-nez p3, :cond_5

    goto/16 :goto_0

    .line 14
    :cond_5
    iget-object p4, p0, Lcom/shabakaty/downloader/bu;->F:Lcom/shabakaty/downloader/au;

    iget-wide v0, p0, Lcom/shabakaty/downloader/bu;->G:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/bu;->E:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/shabakaty/downloader/au;->c(J[F)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public p(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/au;

    iput-object p2, p0, Lcom/shabakaty/downloader/bu;->F:Lcom/shabakaty/downloader/au;

    :cond_0
    return-void
.end method
