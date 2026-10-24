.class public final Lcom/shabakaty/downloader/wu3;
.super Ljava/lang/Object;
.source "RtpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wu3$b;
    }
.end annotation


# static fields
.field public static final g:[B


# instance fields
.field public final a:Z

.field public final b:B

.field public final c:I

.field public final d:J

.field public final e:I

.field public final f:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/wu3;->g:[B

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wu3$b;Lcom/shabakaty/downloader/wu3$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/wu3$b;->b:Z

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/wu3;->a:Z

    .line 4
    iget-byte p2, p1, Lcom/shabakaty/downloader/wu3$b;->c:B

    .line 5
    iput-byte p2, p0, Lcom/shabakaty/downloader/wu3;->b:B

    .line 6
    iget p2, p1, Lcom/shabakaty/downloader/wu3$b;->d:I

    .line 7
    iput p2, p0, Lcom/shabakaty/downloader/wu3;->c:I

    .line 8
    iget-wide v0, p1, Lcom/shabakaty/downloader/wu3$b;->e:J

    .line 9
    iput-wide v0, p0, Lcom/shabakaty/downloader/wu3;->d:J

    .line 10
    iget p2, p1, Lcom/shabakaty/downloader/wu3$b;->f:I

    .line 11
    iput p2, p0, Lcom/shabakaty/downloader/wu3;->e:I

    .line 12
    iget-object p2, p1, Lcom/shabakaty/downloader/wu3$b;->g:[B

    .line 13
    array-length p2, p2

    div-int/lit8 p2, p2, 0x4

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/wu3$b;->h:[B

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/wu3;->f:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/wu3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/wu3;

    .line 3
    iget-byte v2, p0, Lcom/shabakaty/downloader/wu3;->b:B

    iget-byte v3, p1, Lcom/shabakaty/downloader/wu3;->b:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/wu3;->c:I

    iget v3, p1, Lcom/shabakaty/downloader/wu3;->c:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/wu3;->a:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/wu3;->a:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/shabakaty/downloader/wu3;->d:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/wu3;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/wu3;->e:I

    iget p1, p1, Lcom/shabakaty/downloader/wu3;->e:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/wu3;->b:B

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/wu3;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wu3;->a:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-wide v2, p0, Lcom/shabakaty/downloader/wu3;->d:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/wu3;->e:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-byte v1, p0, Lcom/shabakaty/downloader/wu3;->b:B

    .line 2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/wu3;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/wu3;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/wu3;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/wu3;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
