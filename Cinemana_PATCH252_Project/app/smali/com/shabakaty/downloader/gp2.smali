.class public Lcom/shabakaty/downloader/gp2;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/gp2;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public D:J

.field public final r:Lcom/google/android/gms/cast/MediaInfo;

.field public final s:Lcom/shabakaty/downloader/rp2;

.field public final t:Ljava/lang/Boolean;

.field public final u:J

.field public final v:D

.field public final w:[J

.field public x:Ljava/lang/String;

.field public final y:Lorg/json/JSONObject;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaLoadRequestData"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/gp2;->E:Lcom/shabakaty/downloader/pk2;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/kq5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kq5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/gp2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/shabakaty/downloader/rp2;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    .line 5
    iput-wide p4, p0, Lcom/shabakaty/downloader/gp2;->u:J

    .line 6
    iput-wide p6, p0, Lcom/shabakaty/downloader/gp2;->v:D

    .line 7
    iput-object p8, p0, Lcom/shabakaty/downloader/gp2;->w:[J

    .line 8
    iput-object p9, p0, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    .line 9
    iput-object p10, p0, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    .line 11
    iput-object p12, p0, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    .line 12
    iput-object p13, p0, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    .line 13
    iput-wide p14, p0, Lcom/shabakaty/downloader/gp2;->D:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/gp2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/gp2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/na2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    .line 5
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/shabakaty/downloader/gp2;->u:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/gp2;->u:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    iget-wide v3, p0, Lcom/shabakaty/downloader/gp2;->v:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/gp2;->v:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->w:[J

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->w:[J

    .line 7
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/shabakaty/downloader/gp2;->D:J

    iget-wide v5, p1, Lcom/shabakaty/downloader/gp2;->D:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->u:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->v:D

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->w:[J

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->D:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gp2;->y:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/gp2;->x:Ljava/lang/String;

    const/16 v0, 0x4f45

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/gp2;->r:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/gp2;->s:Lcom/shabakaty/downloader/rp2;

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->t:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/4 p2, 0x5

    .line 9
    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->u:J

    const/16 v4, 0x8

    .line 10
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p2, 0x6

    .line 12
    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->v:D

    .line 13
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 p2, 0x7

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->w:[J

    .line 16
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->g(Landroid/os/Parcel;I[JZ)V

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/gp2;->x:Ljava/lang/String;

    invoke-static {p1, v4, p2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->z:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xa

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->A:Ljava/lang/String;

    .line 21
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xb

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->B:Ljava/lang/String;

    .line 23
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xc

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/gp2;->C:Ljava/lang/String;

    .line 25
    invoke-static {p1, p2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xd

    .line 26
    iget-wide v1, p0, Lcom/shabakaty/downloader/gp2;->D:J

    .line 27
    invoke-static {p1, p2, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
