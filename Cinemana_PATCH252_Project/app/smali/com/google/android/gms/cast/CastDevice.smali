.class public Lcom/google/android/gms/cast/CastDevice;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:Ljava/lang/String;

.field public F:[B

.field public G:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/net/InetAddress;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jc7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jc7;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/s55;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p2

    .line 3
    :goto_1
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 6
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    iget-object v3, v1, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "Unable to convert host address ("

    const-string v6, ") to ipaddress: "

    invoke-static {v4, v5, v3, v6, v0}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "CastDevice"

    .line 9
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    if-nez p3, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, p3

    .line 10
    :goto_3
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    if-nez p4, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, p4

    .line 11
    :goto_4
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    if-nez p5, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    move-object v0, p5

    .line 12
    :goto_5
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    move v3, p6

    .line 13
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->x:I

    if-eqz p7, :cond_6

    move-object v0, p7

    goto :goto_6

    .line 14
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    iput-object v0, v1, Lcom/google/android/gms/cast/CastDevice;->y:Ljava/util/List;

    move v3, p8

    .line 15
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->z:I

    move/from16 v3, p9

    .line 16
    iput v3, v1, Lcom/google/android/gms/cast/CastDevice;->A:I

    if-nez p10, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v2, p10

    .line 17
    :goto_7
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->B:Ljava/lang/String;

    move-object/from16 v2, p11

    .line 18
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    move/from16 v2, p12

    .line 19
    iput v2, v1, Lcom/google/android/gms/cast/CastDevice;->D:I

    move-object/from16 v2, p13

    .line 20
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->E:Ljava/lang/String;

    move-object/from16 v2, p14

    .line 21
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->F:[B

    move-object/from16 v2, p15

    .line 22
    iput-object v2, v1, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    return-void
.end method

.method public static o1(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/cast/CastDevice;

    return-object p0
.end method


# virtual methods
.method public D1()Ljava/net/Inet4Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public E1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/CastDevice;->z:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public W0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    const-string v1, "__cast_nearby__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/CastDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2

    .line 5
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/net/InetAddress;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/net/InetAddress;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->x:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->x:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->y:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->y:Ljava/util/List;

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->z:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->z:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->A:I

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->A:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->B:Ljava/lang/String;

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->D:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->E:Ljava/lang/String;

    .line 13
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->E:Ljava/lang/String;

    .line 14
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 15
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 17
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 18
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->x:I

    .line 19
    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->x:I

    if-ne v1, v3, :cond_6

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->F:[B

    if-nez v1, :cond_4

    .line 21
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->F:[B

    if-eqz v3, :cond_5

    .line 22
    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->F:[B

    .line 23
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 24
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\"%s\" (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    .line 7
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->v:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/String;

    .line 10
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    .line 11
    iget v3, p0, Lcom/google/android/gms/cast/CastDevice;->x:I

    .line 12
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->y:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->m(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0x9

    .line 16
    iget v3, p0, Lcom/google/android/gms/cast/CastDevice;->z:I

    .line 17
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xa

    .line 19
    iget v3, p0, Lcom/google/android/gms/cast/CastDevice;->A:I

    .line 20
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xb

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->B:Ljava/lang/String;

    .line 23
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xc

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 25
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xd

    .line 26
    iget v3, p0, Lcom/google/android/gms/cast/CastDevice;->D:I

    .line 27
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xe

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->E:Ljava/lang/String;

    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xf

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->F:[B

    .line 32
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->c(Landroid/os/Parcel;I[BZ)V

    const/16 v0, 0x10

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->G:Ljava/lang/String;

    .line 34
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
