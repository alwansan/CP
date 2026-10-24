.class public Lcom/shabakaty/downloader/jb0;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/jb0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/eu3;

.field public final s:Z

.field public final t:Z

.field public final u:[I

.field public final v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mz5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/mz5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jb0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/eu3;ZZ[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/jb0;->r:Lcom/shabakaty/downloader/eu3;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/jb0;->s:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/jb0;->t:Z

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/jb0;->u:[I

    .line 6
    iput p5, p0, Lcom/shabakaty/downloader/jb0;->v:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/jb0;->r:Lcom/shabakaty/downloader/eu3;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jb0;->s:Z

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x3

    .line 7
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jb0;->t:Z

    .line 8
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/jb0;->u:[I

    .line 11
    invoke-static {p1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->f(Landroid/os/Parcel;I[IZ)V

    const/4 p2, 0x5

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/jb0;->v:I

    .line 13
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
