.class public Lcom/shabakaty/downloader/yp1;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/yp1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:[Lcom/shabakaty/downloader/ia1;

.field public B:Z

.field public C:I

.field public D:Z

.field public final r:I

.field public final s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Landroid/os/IBinder;

.field public w:[Lcom/google/android/gms/common/api/Scope;

.field public x:Landroid/os/Bundle;

.field public y:Landroid/accounts/Account;

.field public z:[Lcom/shabakaty/downloader/ia1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/r46;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r46;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/yp1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/yp1;->r:I

    .line 3
    sget v0, Lcom/shabakaty/downloader/qq1;->a:I

    iput v0, p0, Lcom/shabakaty/downloader/yp1;->t:I

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/yp1;->s:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yp1;->B:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/shabakaty/downloader/ia1;[Lcom/shabakaty/downloader/ia1;ZIZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 7
    iput p1, p0, Lcom/shabakaty/downloader/yp1;->r:I

    .line 8
    iput p2, p0, Lcom/shabakaty/downloader/yp1;->s:I

    .line 9
    iput p3, p0, Lcom/shabakaty/downloader/yp1;->t:I

    const-string p2, "com.google.android.gms"

    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/yp1;->u:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    iput-object p4, p0, Lcom/shabakaty/downloader/yp1;->u:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 13
    invoke-static {p5}, Lcom/shabakaty/downloader/uw1$a;->g2(Landroid/os/IBinder;)Lcom/shabakaty/downloader/uw1;

    move-result-object p2

    .line 14
    sget p3, Lcom/shabakaty/downloader/h2;->a:I

    if-eqz p2, :cond_1

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 16
    :try_start_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/uw1;->a()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p5, "Remote account accessor probably died"

    .line 18
    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 20
    :goto_1
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_2
    iput-object p1, p0, Lcom/shabakaty/downloader/yp1;->y:Landroid/accounts/Account;

    goto :goto_3

    .line 23
    :cond_2
    iput-object p5, p0, Lcom/shabakaty/downloader/yp1;->v:Landroid/os/IBinder;

    .line 24
    iput-object p8, p0, Lcom/shabakaty/downloader/yp1;->y:Landroid/accounts/Account;

    .line 25
    :goto_3
    iput-object p6, p0, Lcom/shabakaty/downloader/yp1;->w:[Lcom/google/android/gms/common/api/Scope;

    .line 26
    iput-object p7, p0, Lcom/shabakaty/downloader/yp1;->x:Landroid/os/Bundle;

    .line 27
    iput-object p9, p0, Lcom/shabakaty/downloader/yp1;->z:[Lcom/shabakaty/downloader/ia1;

    .line 28
    iput-object p10, p0, Lcom/shabakaty/downloader/yp1;->A:[Lcom/shabakaty/downloader/ia1;

    .line 29
    iput-boolean p11, p0, Lcom/shabakaty/downloader/yp1;->B:Z

    .line 30
    iput p12, p0, Lcom/shabakaty/downloader/yp1;->C:I

    .line 31
    iput-boolean p13, p0, Lcom/shabakaty/downloader/yp1;->D:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
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
    iget v2, p0, Lcom/shabakaty/downloader/yp1;->r:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/yp1;->s:I

    .line 6
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 8
    iget v2, p0, Lcom/shabakaty/downloader/yp1;->t:I

    .line 9
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/yp1;->u:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->v:Landroid/os/IBinder;

    invoke-static {p1, v1, v4, v2}, Lcom/shabakaty/downloader/vw3;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->w:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->x:Landroid/os/Bundle;

    invoke-static {p1, v1, v4, v2}, Lcom/shabakaty/downloader/vw3;->b(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x8

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->y:Landroid/accounts/Account;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    .line 16
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->z:[Lcom/shabakaty/downloader/ia1;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    .line 17
    iget-object v4, p0, Lcom/shabakaty/downloader/yp1;->A:[Lcom/shabakaty/downloader/ia1;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/shabakaty/downloader/vw3;->l(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    .line 18
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yp1;->B:Z

    .line 19
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xd

    .line 21
    iget v1, p0, Lcom/shabakaty/downloader/yp1;->C:I

    .line 22
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xe

    .line 24
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yp1;->D:Z

    .line 25
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
