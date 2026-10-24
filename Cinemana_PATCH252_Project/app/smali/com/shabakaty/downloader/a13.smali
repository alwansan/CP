.class public Lcom/shabakaty/downloader/a13;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a13$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/a13;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:[I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:Lcom/shabakaty/downloader/qt5;

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:[I

.field public final t:J

.field public final u:Ljava/lang/String;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v1, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/a13;->X:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/a13;->Y:[I

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wd7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wd7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a13;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[IJ",
            "Ljava/lang/String;",
            "IIIIIIIIIIIIIIIIIIIIIIIIIII",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p33

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/shabakaty/downloader/a13;->r:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v4, v0, Lcom/shabakaty/downloader/a13;->r:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    array-length v1, v2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/a13;->s:[I

    goto :goto_1

    .line 5
    :cond_1
    iput-object v4, v0, Lcom/shabakaty/downloader/a13;->s:[I

    :goto_1
    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/a13;->t:J

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/a13;->u:Ljava/lang/String;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/shabakaty/downloader/a13;->v:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/shabakaty/downloader/a13;->w:I

    move v1, p8

    .line 10
    iput v1, v0, Lcom/shabakaty/downloader/a13;->x:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/shabakaty/downloader/a13;->y:I

    move/from16 v1, p10

    .line 12
    iput v1, v0, Lcom/shabakaty/downloader/a13;->z:I

    move/from16 v1, p11

    .line 13
    iput v1, v0, Lcom/shabakaty/downloader/a13;->A:I

    move/from16 v1, p12

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/a13;->B:I

    move/from16 v1, p13

    .line 15
    iput v1, v0, Lcom/shabakaty/downloader/a13;->C:I

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/shabakaty/downloader/a13;->D:I

    move/from16 v1, p15

    .line 17
    iput v1, v0, Lcom/shabakaty/downloader/a13;->E:I

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/shabakaty/downloader/a13;->F:I

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lcom/shabakaty/downloader/a13;->G:I

    move/from16 v1, p18

    .line 20
    iput v1, v0, Lcom/shabakaty/downloader/a13;->H:I

    move/from16 v1, p19

    .line 21
    iput v1, v0, Lcom/shabakaty/downloader/a13;->I:I

    move/from16 v1, p20

    .line 22
    iput v1, v0, Lcom/shabakaty/downloader/a13;->J:I

    move/from16 v1, p21

    .line 23
    iput v1, v0, Lcom/shabakaty/downloader/a13;->K:I

    move/from16 v1, p22

    .line 24
    iput v1, v0, Lcom/shabakaty/downloader/a13;->L:I

    move/from16 v1, p23

    .line 25
    iput v1, v0, Lcom/shabakaty/downloader/a13;->M:I

    move/from16 v1, p24

    .line 26
    iput v1, v0, Lcom/shabakaty/downloader/a13;->N:I

    move/from16 v1, p25

    .line 27
    iput v1, v0, Lcom/shabakaty/downloader/a13;->O:I

    move/from16 v1, p26

    .line 28
    iput v1, v0, Lcom/shabakaty/downloader/a13;->P:I

    move/from16 v1, p27

    .line 29
    iput v1, v0, Lcom/shabakaty/downloader/a13;->Q:I

    move/from16 v1, p28

    .line 30
    iput v1, v0, Lcom/shabakaty/downloader/a13;->R:I

    move/from16 v1, p29

    .line 31
    iput v1, v0, Lcom/shabakaty/downloader/a13;->S:I

    move/from16 v1, p30

    .line 32
    iput v1, v0, Lcom/shabakaty/downloader/a13;->T:I

    move/from16 v1, p31

    .line 33
    iput v1, v0, Lcom/shabakaty/downloader/a13;->U:I

    move/from16 v1, p32

    .line 34
    iput v1, v0, Lcom/shabakaty/downloader/a13;->V:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "com.google.android.gms.cast.framework.media.INotificationActionsProvider"

    .line 35
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lcom/shabakaty/downloader/qt5;

    if-eqz v2, :cond_3

    .line 37
    move-object v4, v1

    check-cast v4, Lcom/shabakaty/downloader/qt5;

    goto :goto_2

    .line 38
    :cond_3
    new-instance v4, Lcom/shabakaty/downloader/i56;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/i56;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_2
    iput-object v4, v0, Lcom/shabakaty/downloader/a13;->W:Lcom/shabakaty/downloader/qt5;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/a13;->r:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->k(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/a13;->s:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->f(Landroid/os/Parcel;I[IZ)V

    .line 6
    iget-wide v0, p0, Lcom/shabakaty/downloader/a13;->t:J

    const/4 v3, 0x4

    const/16 v4, 0x8

    .line 7
    invoke-static {p1, v3, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/a13;->u:Ljava/lang/String;

    const/4 v1, 0x5

    .line 10
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 11
    iget v0, p0, Lcom/shabakaty/downloader/a13;->v:I

    const/4 v1, 0x6

    .line 12
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/shabakaty/downloader/a13;->w:I

    const/4 v1, 0x7

    .line 15
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget v0, p0, Lcom/shabakaty/downloader/a13;->x:I

    .line 18
    invoke-static {p1, v4, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcom/shabakaty/downloader/a13;->y:I

    const/16 v1, 0x9

    .line 21
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget v0, p0, Lcom/shabakaty/downloader/a13;->z:I

    const/16 v1, 0xa

    .line 24
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/shabakaty/downloader/a13;->A:I

    const/16 v1, 0xb

    .line 27
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/shabakaty/downloader/a13;->B:I

    const/16 v1, 0xc

    .line 30
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/shabakaty/downloader/a13;->C:I

    const/16 v1, 0xd

    .line 33
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/shabakaty/downloader/a13;->D:I

    const/16 v1, 0xe

    .line 36
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/shabakaty/downloader/a13;->E:I

    const/16 v1, 0xf

    .line 39
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/shabakaty/downloader/a13;->F:I

    const/16 v1, 0x10

    .line 42
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/shabakaty/downloader/a13;->G:I

    const/16 v1, 0x11

    .line 45
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/shabakaty/downloader/a13;->H:I

    const/16 v1, 0x12

    .line 48
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/shabakaty/downloader/a13;->I:I

    const/16 v1, 0x13

    .line 51
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/shabakaty/downloader/a13;->J:I

    const/16 v1, 0x14

    .line 54
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/shabakaty/downloader/a13;->K:I

    const/16 v1, 0x15

    .line 57
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/shabakaty/downloader/a13;->L:I

    const/16 v1, 0x16

    .line 60
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/shabakaty/downloader/a13;->M:I

    const/16 v1, 0x17

    .line 63
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/shabakaty/downloader/a13;->N:I

    const/16 v1, 0x18

    .line 66
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/shabakaty/downloader/a13;->O:I

    const/16 v1, 0x19

    .line 69
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/shabakaty/downloader/a13;->P:I

    const/16 v1, 0x1a

    .line 72
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/shabakaty/downloader/a13;->Q:I

    const/16 v1, 0x1b

    .line 75
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/shabakaty/downloader/a13;->R:I

    const/16 v1, 0x1c

    .line 78
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/shabakaty/downloader/a13;->S:I

    const/16 v1, 0x1d

    .line 81
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/shabakaty/downloader/a13;->T:I

    const/16 v1, 0x1e

    .line 84
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/shabakaty/downloader/a13;->U:I

    const/16 v1, 0x1f

    .line 87
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/shabakaty/downloader/a13;->V:I

    const/16 v1, 0x20

    .line 90
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/shabakaty/downloader/a13;->W:Lcom/shabakaty/downloader/qt5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/16 v1, 0x21

    .line 93
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->e(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 94
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
