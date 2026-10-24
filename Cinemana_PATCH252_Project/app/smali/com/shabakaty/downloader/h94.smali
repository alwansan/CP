.class public final Lcom/shabakaty/downloader/h94;
.super Ljava/lang/Object;
.source "SmtaMetadataEntry.java"

# interfaces
.implements Lcom/shabakaty/downloader/ps2$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/h94;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:F

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/h94$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/h94$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/h94;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/h94;->r:F

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/h94;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/shabakaty/downloader/h94$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/h94;->r:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/h94;->s:I

    return-void
.end method


# virtual methods
.method public synthetic D0(Lcom/shabakaty/downloader/hp2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/qs2;->c(Lcom/shabakaty/downloader/ps2$b;Lcom/shabakaty/downloader/hp2$b;)V

    return-void
.end method

.method public synthetic Z()Lcom/shabakaty/downloader/wh1;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->b(Lcom/shabakaty/downloader/ps2$b;)Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/shabakaty/downloader/h94;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/h94;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/h94;->r:F

    iget v3, p1, Lcom/shabakaty/downloader/h94;->r:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/h94;->s:I

    iget p1, p1, Lcom/shabakaty/downloader/h94;->s:I

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/h94;->r:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/h94;->s:I

    add-int/2addr v1, v0

    return v1
.end method

.method public synthetic q1()[B
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->a(Lcom/shabakaty/downloader/ps2$b;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/h94;->r:F

    iget v1, p0, Lcom/shabakaty/downloader/h94;->s:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "smta: captureFrameRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", svcTemporalLayerCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/shabakaty/downloader/h94;->r:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lcom/shabakaty/downloader/h94;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
