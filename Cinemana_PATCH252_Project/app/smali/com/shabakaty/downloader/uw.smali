.class public Lcom/shabakaty/downloader/uw;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/uw;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Lcom/shabakaty/downloader/lm5;

.field public final u:Lcom/shabakaty/downloader/a13;

.field public final v:Z

.field public final w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "CastMediaOptions"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/uw;->x:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/be5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/be5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/shabakaty/downloader/a13;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/uw;->r:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/uw;->s:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.cast.framework.media.IImagePicker"

    .line 4
    invoke-interface {p3, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/shabakaty/downloader/lm5;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/lm5;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/e06;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/e06;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/uw;->t:Lcom/shabakaty/downloader/lm5;

    .line 9
    iput-object p4, p0, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    .line 10
    iput-boolean p5, p0, Lcom/shabakaty/downloader/uw;->v:Z

    .line 11
    iput-boolean p6, p0, Lcom/shabakaty/downloader/uw;->w:Z

    return-void
.end method


# virtual methods
.method public W0()Lcom/shabakaty/downloader/ez1;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uw;->t:Lcom/shabakaty/downloader/lm5;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/lm5;->H()Lcom/shabakaty/downloader/gx1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/p43;->h2(Lcom/shabakaty/downloader/gx1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ez1;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/uw;->x:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedClientObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/lm5;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 5
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/uw;->r:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/uw;->s:Ljava/lang/String;

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/uw;->t:Lcom/shabakaty/downloader/lm5;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x4

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    .line 9
    invoke-static {p1, v1, v4, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    .line 10
    iget-boolean v1, p0, Lcom/shabakaty/downloader/uw;->v:Z

    .line 11
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x7

    .line 13
    iget-boolean v1, p0, Lcom/shabakaty/downloader/uw;->w:Z

    .line 14
    invoke-static {p1, p2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
