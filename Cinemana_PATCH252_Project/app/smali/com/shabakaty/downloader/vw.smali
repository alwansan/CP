.class public Lcom/shabakaty/downloader/vw;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/vw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Ljava/lang/String;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Lcom/shabakaty/downloader/if2;

.field public final v:Z

.field public final w:Lcom/shabakaty/downloader/uw;

.field public final x:Z

.field public final y:D

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d06;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d06;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/vw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/shabakaty/downloader/if2;ZLcom/shabakaty/downloader/uw;ZDZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/shabakaty/downloader/if2;",
            "Z",
            "Lcom/shabakaty/downloader/uw;",
            "ZDZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vw;->s:Ljava/util/List;

    if-lez p1, :cond_2

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/vw;->t:Z

    if-nez p4, :cond_3

    .line 7
    new-instance p4, Lcom/shabakaty/downloader/if2;

    invoke-direct {p4}, Lcom/shabakaty/downloader/if2;-><init>()V

    :cond_3
    iput-object p4, p0, Lcom/shabakaty/downloader/vw;->u:Lcom/shabakaty/downloader/if2;

    .line 8
    iput-boolean p5, p0, Lcom/shabakaty/downloader/vw;->v:Z

    .line 9
    iput-object p6, p0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 10
    iput-boolean p7, p0, Lcom/shabakaty/downloader/vw;->x:Z

    .line 11
    iput-wide p8, p0, Lcom/shabakaty/downloader/vw;->y:D

    .line 12
    iput-boolean p10, p0, Lcom/shabakaty/downloader/vw;->z:Z

    return-void
.end method


# virtual methods
.method public W0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vw;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->i(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vw;->W0()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/shabakaty/downloader/vw3;->k(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/vw;->t:Z

    const/4 v2, 0x4

    .line 7
    invoke-static {p1, v2, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/vw;->u:Lcom/shabakaty/downloader/if2;

    const/4 v4, 0x5

    .line 10
    invoke-static {p1, v4, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    iget-boolean v1, p0, Lcom/shabakaty/downloader/vw;->v:Z

    const/4 v4, 0x6

    .line 12
    invoke-static {p1, v4, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    const/4 v4, 0x7

    .line 15
    invoke-static {p1, v4, v1, p2, v3}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    iget-boolean p2, p0, Lcom/shabakaty/downloader/vw;->x:Z

    const/16 v1, 0x8

    .line 17
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-wide v3, p0, Lcom/shabakaty/downloader/vw;->y:D

    const/16 p2, 0x9

    .line 20
    invoke-static {p1, p2, v1}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 22
    iget-boolean p2, p0, Lcom/shabakaty/downloader/vw;->z:Z

    const/16 v1, 0xa

    .line 23
    invoke-static {p1, v1, v2}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
