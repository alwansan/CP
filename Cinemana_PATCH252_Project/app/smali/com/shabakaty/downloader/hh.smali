.class public final Lcom/shabakaty/downloader/hh;
.super Lcom/shabakaty/downloader/yz1;
.source "AutoValue_ImmutableImageInfo.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/lk4;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk4;JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yz1;-><init>()V

    const-string v0, "Null tagBundle"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/hh;->a:Lcom/shabakaty/downloader/lk4;

    .line 4
    iput-wide p2, p0, Lcom/shabakaty/downloader/hh;->b:J

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/hh;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/lk4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hh;->a:Lcom/shabakaty/downloader/lk4;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/hh;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/yz1;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/yz1;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/hh;->a:Lcom/shabakaty/downloader/lk4;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yz1;->a()Lcom/shabakaty/downloader/lk4;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/shabakaty/downloader/hh;->b:J

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yz1;->getTimestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/shabakaty/downloader/hh;->c:I

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yz1;->b()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/hh;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hh;->a:Lcom/shabakaty/downloader/lk4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/hh;->b:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/hh;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ImmutableImageInfo{tagBundle="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/hh;->a:Lcom/shabakaty/downloader/lk4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shabakaty/downloader/hh;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/hh;->c:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/gh;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
