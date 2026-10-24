.class public final Lcom/shabakaty/downloader/ve5;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ve5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:Lcom/shabakaty/downloader/ek5;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Lcom/shabakaty/downloader/qy6;

.field public u:J

.field public v:Z

.field public w:Ljava/lang/String;

.field public final x:Lcom/shabakaty/downloader/ek5;

.field public y:J

.field public z:Lcom/shabakaty/downloader/ek5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/ef5;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ef5;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ve5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ve5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 5
    iget-wide v0, p1, Lcom/shabakaty/downloader/ve5;->u:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/ve5;->u:J

    .line 6
    iget-boolean v0, p1, Lcom/shabakaty/downloader/ve5;->v:Z

    iput-boolean v0, p0, Lcom/shabakaty/downloader/ve5;->v:Z

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->x:Lcom/shabakaty/downloader/ek5;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->x:Lcom/shabakaty/downloader/ek5;

    .line 9
    iget-wide v0, p1, Lcom/shabakaty/downloader/ve5;->y:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/ve5;->y:J

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    iput-object v0, p0, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    .line 11
    iget-wide v0, p1, Lcom/shabakaty/downloader/ve5;->A:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/ve5;->A:J

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    iput-object p1, p0, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/qy6;JZLjava/lang/String;Lcom/shabakaty/downloader/ek5;JLcom/shabakaty/downloader/ek5;JLcom/shabakaty/downloader/ek5;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    iput-wide p4, p0, Lcom/shabakaty/downloader/ve5;->u:J

    iput-boolean p6, p0, Lcom/shabakaty/downloader/ve5;->v:Z

    iput-object p7, p0, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    iput-object p8, p0, Lcom/shabakaty/downloader/ve5;->x:Lcom/shabakaty/downloader/ek5;

    iput-wide p9, p0, Lcom/shabakaty/downloader/ve5;->y:J

    iput-object p11, p0, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    iput-wide p12, p0, Lcom/shabakaty/downloader/ve5;->A:J

    iput-object p14, p0, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/shabakaty/downloader/ve5;->s:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-wide v4, p0, Lcom/shabakaty/downloader/ve5;->u:J

    const/16 v6, 0x8

    .line 6
    invoke-static {p1, v1, v6}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x6

    .line 8
    iget-boolean v4, p0, Lcom/shabakaty/downloader/ve5;->v:Z

    .line 9
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/ve5;->w:Ljava/lang/String;

    .line 12
    invoke-static {p1, v1, v2, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/shabakaty/downloader/ve5;->x:Lcom/shabakaty/downloader/ek5;

    .line 13
    invoke-static {p1, v6, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/shabakaty/downloader/ve5;->y:J

    .line 14
    invoke-static {p1, v1, v6}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xa

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/ve5;->z:Lcom/shabakaty/downloader/ek5;

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-wide v4, p0, Lcom/shabakaty/downloader/ve5;->A:J

    .line 18
    invoke-static {p1, v1, v6}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v1, 0xc

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/ve5;->B:Lcom/shabakaty/downloader/ek5;

    .line 21
    invoke-static {p1, v1, v2, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 22
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
