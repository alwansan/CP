.class public final Lcom/shabakaty/downloader/eb;
.super Ljava/lang/Object;
.source "AppInfoTable.java"

# interfaces
.implements Lcom/shabakaty/downloader/ps2$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/eb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public final s:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/eb$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/eb$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/eb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/eb;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/eb;->s:Ljava/lang/String;

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

.method public synthetic q1()[B
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/qs2;->a(Lcom/shabakaty/downloader/ps2$b;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/eb;->r:I

    iget-object v1, p0, Lcom/shabakaty/downloader/eb;->s:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ait(controlCode="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",url="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/eb;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/shabakaty/downloader/eb;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
