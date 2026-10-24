.class public final Lcom/shabakaty/downloader/ep0$d;
.super Lcom/shabakaty/downloader/jp4;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ep0$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final a0:Lcom/shabakaty/downloader/ep0$d;


# instance fields
.field public final N:I

.field public final O:Z

.field public final P:Z

.field public final Q:Z

.field public final R:Z

.field public final S:Z

.field public final T:Z

.field public final U:Z

.field public final V:Z

.field public final W:Z

.field public final X:Z

.field public final Y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/cp4;",
            "Lcom/shabakaty/downloader/ep0$f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final Z:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ep0$e;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ep0$e;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep0$e;->e()Lcom/shabakaty/downloader/ep0$d;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ep0$d;->a0:Lcom/shabakaty/downloader/ep0$d;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ep0$d$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ep0$d$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ep0$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .line 28
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jp4;-><init>(Landroid/os/Parcel;)V

    .line 29
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->O:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->P:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 37
    :goto_3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->R:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 39
    :goto_4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->S:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 41
    :goto_5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->T:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 43
    :goto_6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->U:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/ep0$d;->N:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 46
    :goto_7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->V:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    .line 48
    :goto_8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$d;->W:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 50
    :goto_9
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$d;->X:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_b

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_a

    .line 56
    const-class v8, Lcom/shabakaty/downloader/cp4;

    .line 57
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/cp4;

    .line 58
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v9, Lcom/shabakaty/downloader/ep0$f;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/ep0$f;

    .line 60
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 61
    :cond_a
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 62
    :cond_b
    iput-object v1, p0, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ep0$e;Lcom/shabakaty/downloader/ep0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jp4;-><init>(Lcom/shabakaty/downloader/jp4$b;)V

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->w:Z

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->O:Z

    .line 4
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->x:Z

    .line 5
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->P:Z

    .line 6
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->y:Z

    .line 7
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    .line 8
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->z:Z

    .line 9
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->R:Z

    .line 10
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->A:Z

    .line 11
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->S:Z

    .line 12
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->B:Z

    .line 13
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->T:Z

    .line 14
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->C:Z

    .line 15
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->U:Z

    .line 16
    iget p2, p1, Lcom/shabakaty/downloader/ep0$e;->D:I

    .line 17
    iput p2, p0, Lcom/shabakaty/downloader/ep0$d;->N:I

    .line 18
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->E:Z

    .line 19
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->V:Z

    .line 20
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->F:Z

    .line 21
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->W:Z

    .line 22
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$e;->G:Z

    .line 23
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->X:Z

    .line 24
    iget-object p2, p1, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    .line 25
    iput-object p2, p0, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    .line 26
    iget-object p1, p1, Lcom/shabakaty/downloader/ep0$e;->I:Landroid/util/SparseBooleanArray;

    .line 27
    iput-object p1, p0, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/ep0$e;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ep0$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ep0$e;-><init>(Lcom/shabakaty/downloader/ep0$d;Lcom/shabakaty/downloader/ep0$a;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    const-class v2, Lcom/shabakaty/downloader/ep0$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/ep0$d;

    .line 3
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/jp4;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->O:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->O:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->P:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->P:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->R:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->R:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->S:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->S:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->T:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->T:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->U:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->U:Z

    if-ne v2, v3, :cond_d

    iget v2, p0, Lcom/shabakaty/downloader/ep0$d;->N:I

    iget v3, p1, Lcom/shabakaty/downloader/ep0$d;->N:I

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->V:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->V:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->W:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->W:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->X:Z

    iget-boolean v3, p1, Lcom/shabakaty/downloader/ep0$d;->X:Z

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 6
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_d

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eq v4, v3, :cond_6

    :cond_5
    :goto_3
    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_c

    .line 10
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 11
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 12
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 13
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v8, v7, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/cp4;

    .line 16
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_9
    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_e
    :goto_9
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/jp4;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->O:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->P:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->R:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->S:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->T:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->U:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/shabakaty/downloader/ep0$d;->N:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->V:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ep0$d;->W:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ep0$d;->X:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/jp4;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->O:Z

    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->P:Z

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->R:Z

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->S:Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->T:Z

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->U:Z

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/shabakaty/downloader/ep0$d;->N:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->V:Z

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->W:Z

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ep0$d;->X:Z

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p2, p0, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 26
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 27
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 28
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 29
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
