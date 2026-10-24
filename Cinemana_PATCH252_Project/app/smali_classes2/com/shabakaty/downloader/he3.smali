.class public final Lcom/shabakaty/downloader/he3;
.super Ljava/lang/Object;
.source "LookupLocation.kt"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final t:Lcom/shabakaty/downloader/he3;


# instance fields
.field public final r:I

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/he3;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/he3;-><init>(II)V

    sput-object v0, Lcom/shabakaty/downloader/he3;->t:Lcom/shabakaty/downloader/he3;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/he3;->r:I

    iput p2, p0, Lcom/shabakaty/downloader/he3;->s:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/he3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/he3;

    iget v1, p0, Lcom/shabakaty/downloader/he3;->r:I

    iget v3, p1, Lcom/shabakaty/downloader/he3;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/he3;->s:I

    iget p1, p1, Lcom/shabakaty/downloader/he3;->s:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/he3;->r:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/he3;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Position(line="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/he3;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/he3;->s:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
