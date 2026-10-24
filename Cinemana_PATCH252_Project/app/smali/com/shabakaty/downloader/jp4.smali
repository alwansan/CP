.class public Lcom/shabakaty/downloader/jp4;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/jp4$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/jp4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final J:I

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jp4$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jp4$b;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/jp4;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/jp4;-><init>(Lcom/shabakaty/downloader/jp4$b;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/jp4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jp4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/jp4;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 49
    invoke-static {v0}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->E:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 53
    invoke-static {v0}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->J:I

    .line 55
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->K:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->r:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->s:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->t:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->u:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->v:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->w:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->x:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->y:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->z:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->A:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->B:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 72
    invoke-static {v0}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->F:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/jp4;->G:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 77
    invoke-static {v0}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 79
    :goto_2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->L:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 81
    :goto_3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->M:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/jp4$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->a:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->r:I

    .line 4
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->b:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->s:I

    .line 6
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->c:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->t:I

    .line 8
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->d:I

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->u:I

    .line 10
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->e:I

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->v:I

    .line 12
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->f:I

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->w:I

    .line 14
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->g:I

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->x:I

    .line 16
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->h:I

    .line 17
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->y:I

    .line 18
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->i:I

    .line 19
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->z:I

    .line 20
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->j:I

    .line 21
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->A:I

    .line 22
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4$b;->k:Z

    .line 23
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->B:Z

    .line 24
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4$b;->l:Lcom/google/common/collect/p;

    .line 25
    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4$b;->m:Lcom/google/common/collect/p;

    .line 27
    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    .line 28
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->n:I

    .line 29
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->E:I

    .line 30
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->o:I

    .line 31
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->F:I

    .line 32
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->p:I

    .line 33
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->G:I

    .line 34
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4$b;->q:Lcom/google/common/collect/p;

    .line 35
    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    .line 36
    iget-object v0, p1, Lcom/shabakaty/downloader/jp4$b;->r:Lcom/google/common/collect/p;

    .line 37
    iput-object v0, p0, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    .line 38
    iget v0, p1, Lcom/shabakaty/downloader/jp4$b;->s:I

    .line 39
    iput v0, p0, Lcom/shabakaty/downloader/jp4;->J:I

    .line 40
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4$b;->t:Z

    .line 41
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->K:Z

    .line 42
    iget-boolean v0, p1, Lcom/shabakaty/downloader/jp4$b;->u:Z

    .line 43
    iput-boolean v0, p0, Lcom/shabakaty/downloader/jp4;->L:Z

    .line 44
    iget-boolean p1, p1, Lcom/shabakaty/downloader/jp4$b;->v:Z

    .line 45
    iput-boolean p1, p0, Lcom/shabakaty/downloader/jp4;->M:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/jp4;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->r:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->r:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->s:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->t:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->u:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->v:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->w:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->w:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->x:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->y:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->y:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->B:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/jp4;->B:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->z:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->z:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->A:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->A:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    iget-object v3, p1, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    iget-object v3, p1, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->E:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->E:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->F:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->F:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->G:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->G:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    iget-object v3, p1, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    iget-object v3, p1, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/common/collect/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/jp4;->J:I

    iget v3, p1, Lcom/shabakaty/downloader/jp4;->J:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->K:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/jp4;->K:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->L:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/jp4;->L:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->M:Z

    iget-boolean p1, p1, Lcom/shabakaty/downloader/jp4;->M:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/jp4;->r:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->s:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->t:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->u:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->v:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->w:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->x:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->y:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->B:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->z:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->A:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    invoke-virtual {v2}, Lcom/google/common/collect/p;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/p;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->E:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->F:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->G:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    invoke-virtual {v2}, Lcom/google/common/collect/p;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/p;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget v2, p0, Lcom/shabakaty/downloader/jp4;->J:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->K:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget-boolean v2, p0, Lcom/shabakaty/downloader/jp4;->L:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-boolean v1, p0, Lcom/shabakaty/downloader/jp4;->M:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/jp4;->D:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->E:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/jp4;->I:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->J:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/shabakaty/downloader/jp4;->K:Z

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Lcom/shabakaty/downloader/jp4;->B:Z

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/shabakaty/downloader/jp4;->C:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 20
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->F:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/shabakaty/downloader/jp4;->G:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/shabakaty/downloader/jp4;->H:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 23
    iget-boolean p2, p0, Lcom/shabakaty/downloader/jp4;->L:Z

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-boolean p2, p0, Lcom/shabakaty/downloader/jp4;->M:Z

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
