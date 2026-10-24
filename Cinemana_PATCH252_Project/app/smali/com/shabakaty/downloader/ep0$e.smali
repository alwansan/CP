.class public final Lcom/shabakaty/downloader/ep0$e;
.super Lcom/shabakaty/downloader/jp4$b;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public final H:Landroid/util/SparseArray;
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

.field public final I:Landroid/util/SparseBooleanArray;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/shabakaty/downloader/jp4$b;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ep0$e;->I:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ep0$e;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/jp4$b;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ep0$e;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/jp4$b;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ep0$e;->d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/jp4$b;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ep0$e;->I:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ep0$e;->f()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ep0$d;Lcom/shabakaty/downloader/ep0$a;)V
    .locals 5

    .line 11
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/jp4$b;-><init>(Lcom/shabakaty/downloader/jp4;)V

    .line 12
    iget p2, p1, Lcom/shabakaty/downloader/ep0$d;->N:I

    iput p2, p0, Lcom/shabakaty/downloader/ep0$e;->D:I

    .line 13
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->O:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->w:Z

    .line 14
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->P:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->x:Z

    .line 15
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->Q:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->y:Z

    .line 16
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->R:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->z:Z

    .line 17
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->S:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->A:Z

    .line 18
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->T:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->B:Z

    .line 19
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->U:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->C:Z

    .line 20
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->V:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->E:Z

    .line 21
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->W:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->F:Z

    .line 22
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ep0$d;->X:Z

    iput-boolean p2, p0, Lcom/shabakaty/downloader/ep0$e;->G:Z

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/ep0$d;->Y:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 26
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/ep0$e;->H:Landroid/util/SparseArray;

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/ep0$d;->Z:Landroid/util/SparseBooleanArray;

    .line 29
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ep0$e;->I:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/shabakaty/downloader/jp4$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/jp4$b;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/jp4$b;

    return-object p0
.end method

.method public b([Ljava/lang/String;)Lcom/shabakaty/downloader/jp4$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/jp4$b;->b([Ljava/lang/String;)Lcom/shabakaty/downloader/jp4$b;

    return-object p0
.end method

.method public c(IIZ)Lcom/shabakaty/downloader/jp4$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/jp4$b;->i:I

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/jp4$b;->j:I

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/jp4$b;->k:Z

    return-object p0
.end method

.method public d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/jp4$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/jp4$b;->d(Landroid/content/Context;Z)Lcom/shabakaty/downloader/jp4$b;

    return-object p0
.end method

.method public e()Lcom/shabakaty/downloader/ep0$d;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ep0$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ep0$d;-><init>(Lcom/shabakaty/downloader/ep0$e;Lcom/shabakaty/downloader/ep0$a;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$e;->w:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$e;->x:Z

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$e;->y:Z

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$e;->z:Z

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$e;->A:Z

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$e;->B:Z

    .line 7
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$e;->C:Z

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/ep0$e;->D:I

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$e;->E:Z

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ep0$e;->F:Z

    .line 11
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ep0$e;->G:Z

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/shabakaty/downloader/ep0$e;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ep0$e;->b([Ljava/lang/String;)Lcom/shabakaty/downloader/jp4$b;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/ep0$e;->b([Ljava/lang/String;)Lcom/shabakaty/downloader/jp4$b;

    :goto_0
    return-object p0
.end method
