.class public final Lcom/shabakaty/downloader/ww2;
.super Ljava/lang/Object;
.source "NavBackStackEntryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ww2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/util/UUID;

.field public final s:I

.field public final t:Landroid/os/Bundle;

.field public final u:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ww2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ww2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ww2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ww2;->r:Ljava/util/UUID;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/ww2;->s:I

    .line 13
    const-class v0, Lcom/shabakaty/downloader/ww2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ww2;->t:Landroid/os/Bundle;

    .line 14
    const-class v0, Lcom/shabakaty/downloader/ww2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ww2;->u:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vw2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/vw2;->w:Ljava/util/UUID;

    iput-object v0, p0, Lcom/shabakaty/downloader/ww2;->r:Ljava/util/UUID;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/vw2;->s:Landroidx/navigation/c;

    .line 4
    iget v0, v0, Landroidx/navigation/c;->t:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/ww2;->s:I

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/vw2;->t:Landroid/os/Bundle;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ww2;->t:Landroid/os/Bundle;

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ww2;->u:Landroid/os/Bundle;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/vw2;->v:Landroidx/savedstate/b;

    invoke-virtual {p1, v0}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ww2;->r:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/shabakaty/downloader/ww2;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/ww2;->t:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ww2;->u:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
