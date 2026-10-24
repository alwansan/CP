.class public final Lcom/shabakaty/downloader/rg5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/rg5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/yf5;

.field public final s:Lcom/shabakaty/downloader/yf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nh5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nh5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/rg5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/yf5;Lcom/shabakaty/downloader/yf5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rg5;->r:Lcom/shabakaty/downloader/yf5;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/rg5;->s:Lcom/shabakaty/downloader/yf5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/rg5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/rg5;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rg5;->r:Lcom/shabakaty/downloader/yf5;

    iget-object v3, p1, Lcom/shabakaty/downloader/rg5;->r:Lcom/shabakaty/downloader/yf5;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/rg5;->s:Lcom/shabakaty/downloader/yf5;

    iget-object p1, p1, Lcom/shabakaty/downloader/rg5;->s:Lcom/shabakaty/downloader/yf5;

    .line 4
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/rg5;->r:Lcom/shabakaty/downloader/yf5;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/rg5;->s:Lcom/shabakaty/downloader/yf5;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/rg5;->r:Lcom/shabakaty/downloader/yf5;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/rg5;->s:Lcom/shabakaty/downloader/yf5;

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
