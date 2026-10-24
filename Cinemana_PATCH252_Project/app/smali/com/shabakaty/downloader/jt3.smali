.class public final Lcom/shabakaty/downloader/jt3;
.super Ljava/lang/Object;
.source "ExternalSeasonFragment.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/jt3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public final s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/jt3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jt3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jt3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/jt3;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/shabakaty/downloader/jt3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/jt3;

    iget v1, p0, Lcom/shabakaty/downloader/jt3;->r:I

    iget v3, p1, Lcom/shabakaty/downloader/jt3;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object p1, p1, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/jt3;->r:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ResultTypeVideoModelPair(type="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/jt3;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/downloader/jt3;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/downloader/jt3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
