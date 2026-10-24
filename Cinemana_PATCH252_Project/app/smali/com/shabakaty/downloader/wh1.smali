.class public final Lcom/shabakaty/downloader/wh1;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wh1$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/shabakaty/downloader/ps2;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:I

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final F:Lcom/shabakaty/downloader/o01;

.field public final G:J

.field public final H:I

.field public final I:I

.field public final J:F

.field public final K:I

.field public final L:F

.field public final M:[B

.field public final N:I

.field public final O:Lcom/shabakaty/downloader/v50;

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/g71;",
            ">;"
        }
    .end annotation
.end field

.field public W:I

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wh1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wh1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/wh1;->u:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/wh1;->v:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/wh1;->w:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->x:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 72
    :cond_0
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->y:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 74
    const-class v0, Lcom/shabakaty/downloader/ps2;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ps2;

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/wh1;->D:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    iget-object v3, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 81
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const-class v0, Lcom/shabakaty/downloader/o01;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o01;

    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/downloader/wh1;->G:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/wh1;->H:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/wh1;->I:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/wh1;->J:F

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/wh1;->K:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/shabakaty/downloader/wh1;->L:F

    .line 90
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/wh1;->M:[B

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->N:I

    .line 94
    const-class v1, Lcom/shabakaty/downloader/v50;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/v50;

    iput-object v1, p0, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->P:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->R:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->S:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/wh1;->T:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/wh1;->U:I

    if-eqz v0, :cond_4

    .line 101
    const-class v2, Lcom/shabakaty/downloader/ow4;

    :cond_4
    iput-object v2, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wh1$b;Lcom/shabakaty/downloader/wh1$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/shabakaty/downloader/sy4;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 8
    iget p2, p1, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 9
    iput p2, p0, Lcom/shabakaty/downloader/wh1;->u:I

    .line 10
    iget p2, p1, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 11
    iput p2, p0, Lcom/shabakaty/downloader/wh1;->v:I

    .line 12
    iget p2, p1, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 13
    iput p2, p0, Lcom/shabakaty/downloader/wh1;->w:I

    .line 14
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move p2, v0

    .line 16
    :cond_0
    iput p2, p0, Lcom/shabakaty/downloader/wh1;->y:I

    .line 17
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 19
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 20
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    .line 21
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 25
    iget p2, p1, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 26
    iput p2, p0, Lcom/shabakaty/downloader/wh1;->D:I

    .line 27
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    if-nez p2, :cond_1

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    .line 29
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 30
    iput-object p2, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    .line 31
    iget-wide v2, p1, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 32
    iput-wide v2, p0, Lcom/shabakaty/downloader/wh1;->G:J

    .line 33
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 34
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->H:I

    .line 35
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 36
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->I:I

    .line 37
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->r:F

    .line 38
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->J:F

    .line 39
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->s:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 40
    :cond_2
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->K:I

    .line 41
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->t:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    :cond_3
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->L:F

    .line 43
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1$b;->u:[B

    .line 44
    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->M:[B

    .line 45
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->v:I

    .line 46
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->N:I

    .line 47
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1$b;->w:Lcom/shabakaty/downloader/v50;

    .line 48
    iput-object v0, p0, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    .line 49
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 50
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->P:I

    .line 51
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 52
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 53
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 54
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->R:I

    .line 55
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->A:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 56
    :cond_4
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->S:I

    .line 57
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->B:I

    if-ne v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    .line 58
    :goto_0
    iput v2, p0, Lcom/shabakaty/downloader/wh1;->T:I

    .line 59
    iget v0, p1, Lcom/shabakaty/downloader/wh1$b;->C:I

    .line 60
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->U:I

    .line 61
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1$b;->D:Ljava/lang/Class;

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 62
    const-class p1, Lcom/shabakaty/downloader/ow4;

    iput-object p1, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    goto :goto_1

    .line 63
    :cond_6
    iput-object p1, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    :goto_1
    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string v0, "id="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->y:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", codecs="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    if-eqz v1, :cond_c

    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    iget v5, v4, Lcom/shabakaty/downloader/o01;->u:I

    if-ge v3, v5, :cond_8

    .line 10
    iget-object v4, v4, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    aget-object v4, v4, v3

    .line 11
    iget-object v4, v4, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    .line 12
    sget-object v5, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "cenc"

    .line 13
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    sget-object v5, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "clearkey"

    .line 15
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    sget-object v5, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "playready"

    .line 17
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_5
    sget-object v5, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, "widevine"

    .line 19
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_6
    sget-object v5, Lcom/shabakaty/downloader/jp;->a:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v4, "universal"

    .line 21
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "unknown ("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const-string v3, ", drm=["

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 24
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    :try_start_0
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    :goto_2
    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 34
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 35
    invoke-interface {v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 37
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    instance-of v6, v5, Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    :goto_4
    invoke-interface {v4, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 40
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 43
    :cond_c
    :goto_5
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->H:I

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->I:I

    if-eq v1, v2, :cond_d

    const-string v1, ", res="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    :cond_d
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->J:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_e

    const-string v1, ", fps="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->J:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    :cond_e
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->P:I

    if-eq v1, v2, :cond_f

    const-string v1, ", channels="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_f
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    if-eq v1, v2, :cond_10

    const-string v1, ", sample_rate="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    :cond_10
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, ", language="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    if-eqz v1, :cond_12

    const-string v1, ", label="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_12
    iget p0, p0, Lcom/shabakaty/downloader/wh1;->v:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_13

    const-string p0, ", trick-play-track"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wh1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/wh1$b;-><init>(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/shabakaty/downloader/wh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/g71;",
            ">;)",
            "Lcom/shabakaty/downloader/wh1;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v0

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/wh1$b;->D:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/wh1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v2, v0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v2

    .line 2
    iget-object v3, v1, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 3
    iget-object v4, v1, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v5, v0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    .line 5
    :cond_2
    iget-object v6, v1, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v5, v6

    .line 6
    :cond_3
    iget v6, v0, Lcom/shabakaty/downloader/wh1;->w:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_4

    iget v6, v1, Lcom/shabakaty/downloader/wh1;->w:I

    .line 7
    :cond_4
    iget v9, v0, Lcom/shabakaty/downloader/wh1;->x:I

    if-ne v9, v8, :cond_5

    iget v9, v1, Lcom/shabakaty/downloader/wh1;->x:I

    .line 8
    :cond_5
    iget-object v8, v0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 9
    iget-object v10, v1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-static {v10}, Lcom/shabakaty/downloader/sy4;->R(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-ne v11, v7, :cond_6

    move-object v8, v10

    .line 11
    :cond_6
    iget-object v10, v0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v10, :cond_7

    .line 12
    iget-object v10, v1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    goto :goto_1

    .line 13
    :cond_7
    iget-object v11, v1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/ps2;->b(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object v10

    .line 14
    :goto_1
    iget v11, v0, Lcom/shabakaty/downloader/wh1;->J:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v11, v12

    if-nez v12, :cond_8

    const/4 v12, 0x2

    if-ne v2, v12, :cond_8

    .line 15
    iget v11, v1, Lcom/shabakaty/downloader/wh1;->J:F

    .line 16
    :cond_8
    iget v2, v0, Lcom/shabakaty/downloader/wh1;->u:I

    iget v12, v1, Lcom/shabakaty/downloader/wh1;->u:I

    or-int/2addr v2, v12

    .line 17
    iget v12, v0, Lcom/shabakaty/downloader/wh1;->v:I

    iget v13, v1, Lcom/shabakaty/downloader/wh1;->v:I

    or-int/2addr v12, v13

    .line 18
    iget-object v1, v1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    iget-object v13, v0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    .line 19
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_a

    .line 20
    iget-object v15, v1, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    .line 21
    iget-object v1, v1, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    array-length v7, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_b

    move/from16 v16, v7

    aget-object v7, v1, v0

    .line 22
    invoke-virtual {v7}, Lcom/shabakaty/downloader/o01$b;->a()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 23
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v16

    goto :goto_2

    :cond_a
    const/4 v15, 0x0

    :cond_b
    if-eqz v13, :cond_12

    if-nez v15, :cond_c

    .line 24
    iget-object v0, v13, Lcom/shabakaty/downloader/o01;->t:Ljava/lang/String;

    move-object v15, v0

    .line 25
    :cond_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 26
    iget-object v1, v13, Lcom/shabakaty/downloader/o01;->r:[Lcom/shabakaty/downloader/o01$b;

    array-length v7, v1

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v7, :cond_11

    move/from16 v16, v7

    aget-object v7, v1, v13

    .line 27
    invoke-virtual {v7}, Lcom/shabakaty/downloader/o01$b;->a()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v1

    iget-object v1, v7, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    move-object/from16 v18, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v0, :cond_e

    .line 28
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/shabakaty/downloader/o01$b;

    iget-object v0, v0, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v20

    goto :goto_4

    :cond_e
    move/from16 v20, v0

    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_10

    .line 29
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    move/from16 v20, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v15

    :cond_10
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v15, v18

    move/from16 v0, v20

    goto :goto_3

    :cond_11
    move-object/from16 v18, v15

    .line 30
    :cond_12
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v15, 0x0

    goto :goto_7

    :cond_13
    new-instance v0, Lcom/shabakaty/downloader/o01;

    const/4 v1, 0x0

    new-array v7, v1, [Lcom/shabakaty/downloader/o01$b;

    .line 31
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/shabakaty/downloader/o01$b;

    invoke-direct {v0, v15, v1, v7}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    move-object v15, v0

    .line 32
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v0

    .line 33
    iput-object v3, v0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 34
    iput-object v4, v0, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 35
    iput-object v5, v0, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 36
    iput v2, v0, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 37
    iput v12, v0, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 38
    iput v6, v0, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 39
    iput v9, v0, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 40
    iput-object v8, v0, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 41
    iput-object v10, v0, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 42
    iput-object v15, v0, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 43
    iput v11, v0, Lcom/shabakaty/downloader/wh1$b;->r:F

    .line 44
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/shabakaty/downloader/wh1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/wh1;

    .line 3
    iget v2, p0, Lcom/shabakaty/downloader/wh1;->W:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->W:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/wh1;->u:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->u:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->v:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->v:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->w:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->w:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->x:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->D:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->D:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/shabakaty/downloader/wh1;->G:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/wh1;->G:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->H:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->H:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->I:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->I:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->K:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->K:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->N:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->N:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->P:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->P:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->R:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->R:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->S:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->S:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->T:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->T:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->U:I

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->U:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->J:F

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->J:F

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/shabakaty/downloader/wh1;->L:F

    iget v3, p1, Lcom/shabakaty/downloader/wh1;->L:F

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    .line 7
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 13
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->M:[B

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->M:[B

    .line 14
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    .line 15
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    .line 16
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    .line 17
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wh1;->c(Lcom/shabakaty/downloader/wh1;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->W:I

    if-nez v0, :cond_8

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->v:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ps2;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->D:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v3, p0, Lcom/shabakaty/downloader/wh1;->G:J

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->H:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->I:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->J:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->K:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->L:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 20
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->N:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 21
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->P:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->R:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->S:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->T:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lcom/shabakaty/downloader/wh1;->U:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    .line 28
    iput v0, p0, Lcom/shabakaty/downloader/wh1;->W:I

    .line 29
    :cond_8
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->W:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    iget v5, p0, Lcom/shabakaty/downloader/wh1;->y:I

    iget-object v6, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    iget v7, p0, Lcom/shabakaty/downloader/wh1;->H:I

    iget v8, p0, Lcom/shabakaty/downloader/wh1;->I:I

    iget v9, p0, Lcom/shabakaty/downloader/wh1;->J:F

    iget v10, p0, Lcom/shabakaty/downloader/wh1;->P:I

    iget v11, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    const/16 v12, 0x68

    invoke-static {v0, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v1, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v2, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v3, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v4, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v6, v12}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "Format("

    const-string v14, ", "

    invoke-static {v12, v13, v0, v14, v1}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v14, v2, v14, v3}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-wide v2, p0, Lcom/shabakaty/downloader/wh1;->G:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->J:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->L:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->M:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->M:[B

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 27
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/wh1;->N:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 29
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->R:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->S:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->T:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->U:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
