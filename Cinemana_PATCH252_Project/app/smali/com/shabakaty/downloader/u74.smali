.class public final Lcom/shabakaty/downloader/u74;
.super Ljava/lang/Object;
.source "SingleImageProxyBundle.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/lh5;->r:Lcom/shabakaty/downloader/lh5;

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/k26;->r:Lcom/shabakaty/downloader/k26;

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    .line 15
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object p1, Lcom/shabakaty/downloader/hg7;->r:Lcom/shabakaty/downloader/hg7;

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    :cond_3
    const/16 p1, 0x20

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/u74;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/shabakaty/downloader/u74;->a:I

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/w14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/u74;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/shabakaty/downloader/u74;->a:I

    .line 20
    invoke-static {p2}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fz1;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-interface {p1}, Lcom/shabakaty/downloader/fz1;->N0()Lcom/shabakaty/downloader/xy1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v0}, Lcom/shabakaty/downloader/xy1;->a()Lcom/shabakaty/downloader/lk4;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/u74;->a:I

    .line 26
    iput-object p1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageProxy has no associated tag"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ImageProxy has no associated ImageInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/u74;->a:I

    iget-object v1, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [J

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 2
    check-cast v1, [J

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lcom/shabakaty/downloader/u74;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/u74;->a:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public b(I)J
    .locals 5

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/u74;->a:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/shabakaty/downloader/u74;->a:I

    const/16 v2, 0x2e

    const-string v3, "Invalid index "

    const-string v4, ", size is "

    invoke-static {v2, v3, p1, v4, v1}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/shabakaty/downloader/o91;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ka3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ka3;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 6
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ka3;

    .line 8
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 9
    invoke-interface {p1, v3, v2, v4}, Lcom/shabakaty/downloader/o91;->s([BII)V

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ka3;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v1, v1, 0x1

    .line 12
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    .line 13
    :cond_2
    iget p1, p0, Lcom/shabakaty/downloader/u74;->a:I

    add-int/2addr v4, v2

    add-int/2addr v4, p1

    iput v4, p0, Lcom/shabakaty/downloader/u74;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public d(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v0, [B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method public e()Lcom/shabakaty/downloader/gg5;
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/gg5;

    iget v1, p0, Lcom/shabakaty/downloader/u74;->a:I

    iget-object v2, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/lh5;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/gg5;-><init>(ILcom/shabakaty/downloader/lh5;)V

    return-object v0
.end method

.method public f()Lcom/shabakaty/downloader/u16;
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/u16;

    iget v1, p0, Lcom/shabakaty/downloader/u74;->a:I

    iget-object v2, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/k26;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/u16;-><init>(ILcom/shabakaty/downloader/k26;)V

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/ve7;
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/ve7;

    iget v1, p0, Lcom/shabakaty/downloader/u74;->a:I

    iget-object v2, p0, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/hg7;

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ve7;-><init>(ILcom/shabakaty/downloader/hg7;)V

    return-object v0
.end method
