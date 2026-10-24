.class public final Lcom/shabakaty/downloader/d13;
.super Ljava/lang/Object;
.source "NotificationSettings.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/d13;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public s:Ljava/lang/String;

.field public final t:Landroid/app/PendingIntent;

.field public final u:I

.field public final v:I

.field public final w:Ljava/lang/Integer;

.field public final x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/d13$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d13$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d13;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;IILjava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/d13;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/d13;->u:I

    .line 6
    iput p5, p0, Lcom/shabakaty/downloader/d13;->v:I

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    .line 8
    iput p7, p0, Lcom/shabakaty/downloader/d13;->x:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;IILjava/lang/Integer;II)V
    .locals 1

    and-int/lit8 p3, p8, 0x4

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    .line 9
    sget-object p3, Lcom/shabakaty/downloader/z24;->d:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object p3, p6

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    .line 10
    sget p4, Lcom/shabakaty/downloader/z24;->c:I

    :cond_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const p5, 0x7f080149

    :cond_2
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_3

    const p7, 0x7f080170

    .line 11
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/shabakaty/downloader/d13;->r:I

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    .line 15
    iput p4, p0, Lcom/shabakaty/downloader/d13;->u:I

    .line 16
    iput p5, p0, Lcom/shabakaty/downloader/d13;->v:I

    .line 17
    iput-object p6, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    .line 18
    iput p7, p0, Lcom/shabakaty/downloader/d13;->x:I

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
    instance-of v1, p1, Lcom/shabakaty/downloader/d13;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/d13;

    iget v1, p0, Lcom/shabakaty/downloader/d13;->r:I

    iget v3, p1, Lcom/shabakaty/downloader/d13;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/shabakaty/downloader/d13;->u:I

    iget v3, p1, Lcom/shabakaty/downloader/d13;->u:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/d13;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/d13;->v:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/shabakaty/downloader/d13;->x:I

    iget p1, p1, Lcom/shabakaty/downloader/d13;->x:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/d13;->r:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/d13;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/d13;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/shabakaty/downloader/d13;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "NotificationSettings(notificationId="

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/d13;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", largeImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/d13;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", finishedIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/d13;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationImgPlaceHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/d13;->x:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/shabakaty/downloader/d13;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shabakaty/downloader/d13;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/d13;->t:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/shabakaty/downloader/d13;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/shabakaty/downloader/d13;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/shabakaty/downloader/d13;->w:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/shabakaty/downloader/d13;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
