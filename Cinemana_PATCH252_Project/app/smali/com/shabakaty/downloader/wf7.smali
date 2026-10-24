.class public final Lcom/shabakaty/downloader/wf7;
.super Lcom/shabakaty/downloader/x0;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/wf7;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:D

.field public s:Z

.field public t:I

.field public u:Lcom/shabakaty/downloader/nc;

.field public v:I

.field public w:Lcom/shabakaty/downloader/rg5;

.field public x:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nf7;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nf7;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wf7;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/wf7;->r:D

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/wf7;->s:Z

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lcom/shabakaty/downloader/wf7;->t:I

    const/4 v3, 0x0

    .line 5
    iput-object v3, p0, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/wf7;->v:I

    .line 7
    iput-object v3, p0, Lcom/shabakaty/downloader/wf7;->w:Lcom/shabakaty/downloader/rg5;

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/wf7;->x:D

    return-void
.end method

.method public constructor <init>(DZILcom/shabakaty/downloader/nc;ILcom/shabakaty/downloader/rg5;D)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/shabakaty/downloader/x0;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/shabakaty/downloader/wf7;->r:D

    .line 11
    iput-boolean p3, p0, Lcom/shabakaty/downloader/wf7;->s:Z

    .line 12
    iput p4, p0, Lcom/shabakaty/downloader/wf7;->t:I

    .line 13
    iput-object p5, p0, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    .line 14
    iput p6, p0, Lcom/shabakaty/downloader/wf7;->v:I

    .line 15
    iput-object p7, p0, Lcom/shabakaty/downloader/wf7;->w:Lcom/shabakaty/downloader/rg5;

    .line 16
    iput-wide p8, p0, Lcom/shabakaty/downloader/wf7;->x:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/wf7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/wf7;

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/wf7;->r:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/wf7;->r:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/wf7;->s:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/wf7;->s:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/wf7;->t:I

    iget v3, p1, Lcom/shabakaty/downloader/wf7;->t:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    iget-object v3, p1, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    .line 4
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/shabakaty/downloader/wf7;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/wf7;->v:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/wf7;->w:Lcom/shabakaty/downloader/rg5;

    .line 5
    invoke-static {v1, v1}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/shabakaty/downloader/wf7;->x:D

    iget-wide v5, p1, Lcom/shabakaty/downloader/wf7;->x:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/shabakaty/downloader/wf7;->r:D

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/shabakaty/downloader/wf7;->s:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/wf7;->t:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/shabakaty/downloader/wf7;->v:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/wf7;->w:Lcom/shabakaty/downloader/rg5;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/shabakaty/downloader/wf7;->x:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->n(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/wf7;->r:D

    const/16 v4, 0x8

    .line 3
    invoke-static {p1, v1, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    const/4 v1, 0x3

    .line 5
    iget-boolean v2, p0, Lcom/shabakaty/downloader/wf7;->s:Z

    const/4 v3, 0x4

    .line 6
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v1, p0, Lcom/shabakaty/downloader/wf7;->t:I

    .line 9
    invoke-static {p1, v3, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/wf7;->u:Lcom/shabakaty/downloader/nc;

    const/4 v5, 0x0

    .line 12
    invoke-static {p1, v1, v2, p2, v5}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    .line 13
    iget v2, p0, Lcom/shabakaty/downloader/wf7;->v:I

    .line 14
    invoke-static {p1, v1, v3}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/wf7;->w:Lcom/shabakaty/downloader/rg5;

    .line 17
    invoke-static {p1, v1, v2, p2, v5}, Lcom/shabakaty/downloader/vw3;->h(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    iget-wide v1, p0, Lcom/shabakaty/downloader/wf7;->x:D

    .line 19
    invoke-static {p1, v4, v4}, Lcom/shabakaty/downloader/vw3;->o(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 21
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vw3;->q(Landroid/os/Parcel;I)V

    return-void
.end method
