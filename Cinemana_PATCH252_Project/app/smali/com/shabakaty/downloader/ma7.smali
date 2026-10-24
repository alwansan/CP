.class public final Lcom/shabakaty/downloader/ma7;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ma7;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:J

.field public final B:Ljava/lang/String;

.field public final C:J

.field public final D:J

.field public final E:I

.field public final F:Z

.field public final G:Z

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/Boolean;

.field public final J:J

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:J

.field public final w:J

.field public final x:Ljava/lang/String;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/hc7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hc7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->A:J

    move-object v1, p6

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->v:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->w:J

    move-object v1, p11

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->x:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->y:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->z:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->C:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->D:J

    move/from16 v1, p19

    iput v1, v0, Lcom/shabakaty/downloader/ma7;->E:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->F:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->G:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->J:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->K:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->A:J

    move-object v1, p4

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->v:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->w:J

    move-object v1, p9

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->x:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->y:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->z:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->C:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->D:J

    move/from16 v1, p19

    iput v1, v0, Lcom/shabakaty/downloader/ma7;->E:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->F:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/shabakaty/downloader/ma7;->G:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/shabakaty/downloader/ma7;->J:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->K:Ljava/util/List;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->s:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/shabakaty/downloader/ma7;->t:Ljava/lang/String;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/shabakaty/downloader/ma7;->u:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->v:J

    const/16 v5, 0x8

    .line 7
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x7

    .line 9
    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->w:J

    .line 10
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/ma7;->x:Ljava/lang/String;

    .line 13
    invoke-static {p1, v5, v0, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-boolean v3, p0, Lcom/shabakaty/downloader/ma7;->y:Z

    .line 14
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xa

    .line 16
    iget-boolean v3, p0, Lcom/shabakaty/downloader/ma7;->z:Z

    .line 17
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xb

    .line 19
    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->A:J

    .line 20
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0xc

    .line 22
    iget-object v3, p0, Lcom/shabakaty/downloader/ma7;->B:Ljava/lang/String;

    .line 23
    invoke-static {p1, v0, v3, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xd

    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->C:J

    .line 24
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 25
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0xe

    .line 26
    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->D:J

    .line 27
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0xf

    .line 29
    iget v3, p0, Lcom/shabakaty/downloader/ma7;->E:I

    .line 30
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x10

    .line 32
    iget-boolean v3, p0, Lcom/shabakaty/downloader/ma7;->F:Z

    .line 33
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 34
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x12

    .line 35
    iget-boolean v3, p0, Lcom/shabakaty/downloader/ma7;->G:Z

    .line 36
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x13

    .line 38
    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->H:Ljava/lang/String;

    .line 39
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->I:Ljava/lang/Boolean;

    .line 40
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/16 v0, 0x16

    iget-wide v3, p0, Lcom/shabakaty/downloader/ma7;->J:J

    .line 41
    invoke-static {p1, v0, v5}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v0, 0x17

    .line 43
    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->K:Ljava/util/List;

    .line 44
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->k(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->L:Ljava/lang/String;

    .line 45
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    .line 46
    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
