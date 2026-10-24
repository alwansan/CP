.class public final Lcom/shabakaty/downloader/sr6;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/sr6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Lcom/shabakaty/downloader/kz5;

.field public final t:Z

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/p27;

    invoke-direct {v0}, Lcom/shabakaty/downloader/p27;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/sr6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sr6;->r:Ljava/lang/String;

    const-string p1, "Could not unwrap certificate"

    const-string v0, "GoogleCertificatesQuery"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    sget v2, Lcom/shabakaty/downloader/a87;->a:I

    const-string v2, "com.google.android.gms.common.internal.ICertData"

    .line 4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 5
    instance-of v3, v2, Lcom/shabakaty/downloader/q27;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/q27;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/v57;

    invoke-direct {v2, p2}, Lcom/shabakaty/downloader/v57;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/q27;->b()Lcom/shabakaty/downloader/gx1;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_1
    if-eqz p2, :cond_3

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/fg6;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/fg6;-><init>([B)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p2

    .line 12
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_2
    iput-object v1, p0, Lcom/shabakaty/downloader/sr6;->s:Lcom/shabakaty/downloader/kz5;

    .line 14
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sr6;->t:Z

    .line 15
    iput-boolean p4, p0, Lcom/shabakaty/downloader/sr6;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/kz5;ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/shabakaty/downloader/sr6;->r:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/sr6;->s:Lcom/shabakaty/downloader/kz5;

    .line 19
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sr6;->t:Z

    .line 20
    iput-boolean p4, p0, Lcom/shabakaty/downloader/sr6;->u:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/sr6;->r:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/sr6;->s:Lcom/shabakaty/downloader/kz5;

    if-nez v1, :cond_0

    const-string v1, "GoogleCertificatesQuery"

    const-string v3, "certificate binder is null"

    .line 5
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/sr6;->t:Z

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sr6;->u:Z

    .line 12
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
