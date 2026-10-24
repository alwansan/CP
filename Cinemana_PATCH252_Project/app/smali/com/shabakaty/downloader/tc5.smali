.class public final Lcom/shabakaty/downloader/tc5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-base@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/tc5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:I

.field public s:Landroid/os/IBinder;

.field public t:Lcom/shabakaty/downloader/gb0;

.field public u:Z

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wc5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wc5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tc5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/shabakaty/downloader/gb0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/tc5;->r:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tc5;->s:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/tc5;->t:Lcom/shabakaty/downloader/gb0;

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/tc5;->u:Z

    .line 6
    iput-boolean p5, p0, Lcom/shabakaty/downloader/tc5;->v:Z

    return-void
.end method


# virtual methods
.method public final W0()Lcom/shabakaty/downloader/uw1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tc5;->s:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/uw1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/uw1;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/shabakaty/downloader/tc5;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/shabakaty/downloader/tc5;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/tc5;->t:Lcom/shabakaty/downloader/gb0;

    iget-object v3, p1, Lcom/shabakaty/downloader/tc5;->t:Lcom/shabakaty/downloader/gb0;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/gb0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tc5;->W0()Lcom/shabakaty/downloader/uw1;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/tc5;->W0()Lcom/shabakaty/downloader/uw1;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/tc5;->r:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/tc5;->s:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4}, Lcom/shabakaty/downloader/vw3;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/tc5;->t:Lcom/shabakaty/downloader/gb0;

    .line 7
    invoke-static {p1, v1, v2, p2, v4}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    iget-boolean p2, p0, Lcom/shabakaty/downloader/tc5;->u:Z

    .line 9
    invoke-static {p1, v3, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    .line 11
    iget-boolean v1, p0, Lcom/shabakaty/downloader/tc5;->v:Z

    .line 12
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
