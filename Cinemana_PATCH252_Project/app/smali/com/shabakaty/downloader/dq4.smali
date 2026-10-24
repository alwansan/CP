.class public abstract Lcom/shabakaty/downloader/dq4;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dq4$c;,
        Lcom/shabakaty/downloader/dq4$b;,
        Lcom/shabakaty/downloader/dq4$d;
    }
.end annotation


# static fields
.field public static final N:[I

.field public static final O:Lcom/shabakaty/downloader/xa3;

.field public static P:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/shabakaty/downloader/ad<",
            "Landroid/animation/Animator;",
            "Lcom/shabakaty/downloader/dq4$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:[I

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;"
        }
    .end annotation
.end field

.field public D:Z

.field public E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public F:I

.field public G:Z

.field public H:Z

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/dq4$d;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public K:Lcom/shabakaty/downloader/cl4;

.field public L:Lcom/shabakaty/downloader/dq4$c;

.field public M:Lcom/shabakaty/downloader/xa3;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:J

.field public u:Landroid/animation/TimeInterpolator;

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/shabakaty/downloader/np4;

.field public y:Lcom/shabakaty/downloader/np4;

.field public z:Lcom/shabakaty/downloader/iq4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/dq4;->N:[I

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/dq4$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/dq4$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dq4;->O:Lcom/shabakaty/downloader/xa3;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/dq4;->P:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->r:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/dq4;->s:J

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/dq4;->t:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/np4;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/np4;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/np4;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/np4;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->z:Lcom/shabakaty/downloader/iq4;

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/dq4;->N:[I

    iput-object v1, p0, Lcom/shabakaty/downloader/dq4;->A:[I

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->D:Z

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/dq4;->E:Ljava/util/ArrayList;

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/dq4;->F:I

    .line 15
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->G:Z

    .line 16
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->H:Z

    .line 17
    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/dq4;->O:Lcom/shabakaty/downloader/xa3;

    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    sget-object p2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ad;

    .line 9
    invoke-virtual {v3, p2}, Lcom/shabakaty/downloader/m64;->e(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v3, p2, v0}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v3, p2, p1}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 14
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 16
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/jl2;

    .line 18
    iget-boolean v5, p2, Lcom/shabakaty/downloader/jl2;->r:Z

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/shabakaty/downloader/jl2;->f()V

    .line 20
    :cond_5
    iget-object v5, p2, Lcom/shabakaty/downloader/jl2;->s:[J

    iget p2, p2, Lcom/shabakaty/downloader/jl2;->u:I

    invoke-static {v5, p2, v3, v4}, Lcom/shabakaty/downloader/ad0;->b([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {p1, v3, v4}, Lcom/shabakaty/downloader/jl2;->g(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 23
    iget-object p0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {p0, v3, v4, v0}, Lcom/shabakaty/downloader/jl2;->k(JLjava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 25
    iget-object p0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p0, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {p0, v3, v4, p1}, Lcom/shabakaty/downloader/jl2;->k(JLjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static r()Lcom/shabakaty/downloader/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/ad<",
            "Landroid/animation/Animator;",
            "Lcom/shabakaty/downloader/dq4$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/dq4;->P:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ad;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/dq4;->P:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static w(Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/dq4;->G:Z

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/dq4;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/dq4;->r()Lcom/shabakaty/downloader/ad;

    move-result-object v0

    .line 4
    iget v2, v0, Lcom/shabakaty/downloader/m64;->t:I

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/m64;->l(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/dq4$b;

    .line 8
    iget-object v5, v4, Lcom/shabakaty/downloader/dq4$b;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/shabakaty/downloader/dq4$b;->d:Lcom/shabakaty/downloader/w65;

    .line 9
    instance-of v5, v4, Lcom/shabakaty/downloader/v65;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/shabakaty/downloader/v65;

    iget-object v4, v4, Lcom/shabakaty/downloader/v65;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 11
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 16
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dq4$d;

    invoke-interface {v3, p0}, Lcom/shabakaty/downloader/dq4$d;->onTransitionResume(Lcom/shabakaty/downloader/dq4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 17
    :cond_3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->G:Z

    :cond_4
    return-void
.end method

.method public B()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->J()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/dq4;->r()Lcom/shabakaty/downloader/ad;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/m64;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->J()V

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/eq4;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/eq4;-><init>(Lcom/shabakaty/downloader/dq4;Lcom/shabakaty/downloader/ad;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-wide v3, p0, Lcom/shabakaty/downloader/dq4;->t:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    :cond_1
    iget-wide v3, p0, Lcom/shabakaty/downloader/dq4;->s:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    :cond_3
    new-instance v3, Lcom/shabakaty/downloader/fq4;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/fq4;-><init>(Lcom/shabakaty/downloader/dq4;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->n()V

    return-void
.end method

.method public C(J)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/dq4;->t:J

    return-object p0
.end method

.method public D(Lcom/shabakaty/downloader/dq4$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->L:Lcom/shabakaty/downloader/dq4$c;

    return-void
.end method

.method public E(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public F(Lcom/shabakaty/downloader/xa3;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/dq4;->O:Lcom/shabakaty/downloader/xa3;

    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->M:Lcom/shabakaty/downloader/xa3;

    :goto_0
    return-void
.end method

.method public G(Lcom/shabakaty/downloader/cl4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    return-void
.end method

.method public H(Landroid/view/ViewGroup;)Lcom/shabakaty/downloader/dq4;
    .locals 0

    return-object p0
.end method

.method public I(J)Lcom/shabakaty/downloader/dq4;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/dq4;->s:J

    return-object p0
.end method

.method public J()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dq4;->F:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/dq4$d;

    invoke-interface {v4, p0}, Lcom/shabakaty/downloader/dq4$d;->onTransitionStart(Lcom/shabakaty/downloader/dq4;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->H:Z

    .line 8
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/dq4;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/dq4;->F:I

    return-void
.end method

.method public K(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/dq4;->t:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string v0, "dur("

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/shabakaty/downloader/dq4;->t:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/dq4;->s:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const-string v0, "dly("

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/shabakaty/downloader/dq4;->s:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->u:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 13
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 17
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_6
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 19
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 3
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dq4$d;

    invoke-interface {v3, p0}, Lcom/shabakaty/downloader/dq4$d;->onTransitionCancel(Lcom/shabakaty/downloader/dq4;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->k()Lcom/shabakaty/downloader/dq4;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Lcom/shabakaty/downloader/kq4;)V
.end method

.method public final f(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kq4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/kq4;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->h(Lcom/shabakaty/downloader/kq4;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->e(Lcom/shabakaty/downloader/kq4;)V

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->g(Lcom/shabakaty/downloader/kq4;)V

    if-eqz p2, :cond_2

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    invoke-static {v1, p1, v0}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    invoke-static {v1, p1, v0}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    .line 10
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/dq4;->f(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public g(Lcom/shabakaty/downloader/kq4;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cl4;->f()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl4;->b(Lcom/shabakaty/downloader/kq4;)V

    :cond_3
    return-void
.end method

.method public abstract h(Lcom/shabakaty/downloader/kq4;)V
.end method

.method public i(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/dq4;->j(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/dq4;->f(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/kq4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/kq4;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/dq4;->h(Lcom/shabakaty/downloader/kq4;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/dq4;->e(Lcom/shabakaty/downloader/kq4;)V

    .line 10
    :goto_2
    iget-object v4, v3, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/dq4;->g(Lcom/shabakaty/downloader/kq4;)V

    if-eqz p2, :cond_3

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    invoke-static {v4, v2, v3}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v4, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    invoke-static {v4, v2, v3}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 16
    new-instance v1, Lcom/shabakaty/downloader/kq4;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/kq4;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/dq4;->h(Lcom/shabakaty/downloader/kq4;)V

    goto :goto_5

    .line 18
    :cond_6
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/dq4;->e(Lcom/shabakaty/downloader/kq4;)V

    .line 19
    :goto_5
    iget-object v2, v1, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/dq4;->g(Lcom/shabakaty/downloader/kq4;)V

    if-eqz p2, :cond_7

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    invoke-static {v2, p1, v1}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    goto :goto_6

    .line 22
    :cond_7
    iget-object v2, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    invoke-static {v2, p1, v1}, Lcom/shabakaty/downloader/dq4;->c(Lcom/shabakaty/downloader/np4;Landroid/view/View;Lcom/shabakaty/downloader/kq4;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public j(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ad;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/m64;->clear()V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/jl2;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ad;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/m64;->clear()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    iget-object p1, p1, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/jl2;->b()V

    :goto_0
    return-void
.end method

.method public k()Lcom/shabakaty/downloader/dq4;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/np4;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/np4;-><init>(I)V

    iput-object v2, v1, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/np4;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/np4;-><init>(I)V

    iput-object v2, v1, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    .line 5
    iput-object v0, v1, Lcom/shabakaty/downloader/dq4;->B:Ljava/util/ArrayList;

    .line 6
    iput-object v0, v1, Lcom/shabakaty/downloader/dq4;->C:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public l(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/np4;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/shabakaty/downloader/np4;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kq4;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/dq4;->r()Lcom/shabakaty/downloader/ad;

    move-result-object v8

    .line 2
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 4
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/kq4;

    move-object/from16 v14, p5

    .line 5
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/kq4;

    if-eqz v2, :cond_0

    .line 6
    iget-object v5, v2, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    iget-object v5, v3, Lcom/shabakaty/downloader/kq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {v6, v2, v3}, Lcom/shabakaty/downloader/dq4;->u(Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v6, v7, v2, v3}, Lcom/shabakaty/downloader/dq4;->l(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 10
    iget-object v15, v3, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/dq4;->s()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 12
    array-length v11, v4

    if-lez v11, :cond_9

    .line 13
    new-instance v11, Lcom/shabakaty/downloader/kq4;

    invoke-direct {v11, v15}, Lcom/shabakaty/downloader/kq4;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 14
    iget-object v5, v10, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ad;

    invoke-virtual {v5, v15}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kq4;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 15
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 16
    iget-object v13, v11, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 17
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 19
    iget v4, v8, Lcom/shabakaty/downloader/m64;->t:I

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 20
    invoke-virtual {v8, v5}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 21
    invoke-virtual {v8, v10}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/dq4$b;

    .line 22
    iget-object v12, v10, Lcom/shabakaty/downloader/dq4$b;->c:Lcom/shabakaty/downloader/kq4;

    if-eqz v12, :cond_7

    iget-object v12, v10, Lcom/shabakaty/downloader/dq4$b;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Lcom/shabakaty/downloader/dq4$b;->b:Ljava/lang/String;

    .line 23
    iget-object v13, v6, Lcom/shabakaty/downloader/dq4;->r:Ljava/lang/String;

    .line 24
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 25
    iget-object v10, v10, Lcom/shabakaty/downloader/dq4$b;->c:Lcom/shabakaty/downloader/kq4;

    invoke-virtual {v10, v11}, Lcom/shabakaty/downloader/kq4;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v4, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v4, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v4

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 26
    iget-object v4, v2, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 27
    iget-object v4, v6, Lcom/shabakaty/downloader/dq4;->K:Lcom/shabakaty/downloader/cl4;

    if-eqz v4, :cond_b

    .line 28
    invoke-virtual {v4, v7, v6, v2, v3}, Lcom/shabakaty/downloader/cl4;->g(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/dq4;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)J

    move-result-wide v2

    .line 29
    iget-object v4, v6, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 31
    new-instance v13, Lcom/shabakaty/downloader/dq4$b;

    .line 32
    iget-object v2, v6, Lcom/shabakaty/downloader/dq4;->r:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    .line 34
    new-instance v4, Lcom/shabakaty/downloader/v65;

    invoke-direct {v4, v7}, Lcom/shabakaty/downloader/v65;-><init>(Landroid/view/View;)V

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/dq4$b;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/shabakaty/downloader/dq4;Lcom/shabakaty/downloader/w65;Lcom/shabakaty/downloader/kq4;)V

    .line 36
    invoke-virtual {v8, v10, v13}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, v6, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    .line 39
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 40
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 41
    iget-object v3, v6, Lcom/shabakaty/downloader/dq4;->J:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 42
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v3

    .line 43
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public n()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/dq4;->F:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/dq4;->F:I

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/dq4$d;

    invoke-interface {v5, p0}, Lcom/shabakaty/downloader/dq4$d;->onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    iget-object v3, v3, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    iget-object v3, v3, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/jl2;->n(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_2
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    iget-object v3, v3, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/jl2;->m()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    iget-object v3, v3, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/jl2;

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/jl2;->n(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 13
    sget-object v4, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/dq4;->H:Z

    :cond_5
    return-void
.end method

.method public o(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/dq4;->r()Lcom/shabakaty/downloader/ad;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/m64;->t:I

    if-eqz p1, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/ad;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/ad;-><init>(Lcom/shabakaty/downloader/m64;)V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/m64;->clear()V

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 7
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/m64;->l(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/dq4$b;

    .line 8
    iget-object v4, v3, Lcom/shabakaty/downloader/dq4$b;->a:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/shabakaty/downloader/dq4$b;->d:Lcom/shabakaty/downloader/w65;

    .line 9
    instance-of v4, v3, Lcom/shabakaty/downloader/v65;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/shabakaty/downloader/v65;

    iget-object v3, v3, Lcom/shabakaty/downloader/v65;->a:Landroid/view/WindowId;

    invoke-virtual {v3, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 11
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public q(Landroid/view/View;Z)Lcom/shabakaty/downloader/kq4;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->z:Lcom/shabakaty/downloader/iq4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/dq4;->q(Landroid/view/View;Z)Lcom/shabakaty/downloader/kq4;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->B:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->C:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/kq4;

    if-nez v5, :cond_3

    return-object v1

    .line 6
    :cond_3
    iget-object v5, v5, Lcom/shabakaty/downloader/kq4;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->C:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->B:Ljava/util/ArrayList;

    .line 8
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/kq4;

    :cond_7
    return-object v1
.end method

.method public s()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Landroid/view/View;Z)Lcom/shabakaty/downloader/kq4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->z:Lcom/shabakaty/downloader/iq4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/dq4;->t(Landroid/view/View;Z)Lcom/shabakaty/downloader/kq4;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/dq4;->x:Lcom/shabakaty/downloader/np4;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/dq4;->y:Lcom/shabakaty/downloader/np4;

    .line 4
    :goto_0
    iget-object p2, p2, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ad;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/kq4;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/dq4;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq4;->s()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 3
    invoke-static {p1, p2, v5}, Lcom/shabakaty/downloader/dq4;->w(Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p1, Lcom/shabakaty/downloader/kq4;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v3}, Lcom/shabakaty/downloader/dq4;->w(Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public v(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/dq4;->v:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public x(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/dq4;->H:Z

    if-nez v0, :cond_4

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/dq4;->r()Lcom/shabakaty/downloader/ad;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/shabakaty/downloader/m64;->t:I

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/g45;->a:Lcom/shabakaty/downloader/p45;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/m64;->l(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/dq4$b;

    .line 7
    iget-object v5, v4, Lcom/shabakaty/downloader/dq4$b;->a:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/shabakaty/downloader/dq4$b;->d:Lcom/shabakaty/downloader/w65;

    .line 8
    instance-of v5, v4, Lcom/shabakaty/downloader/v65;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/shabakaty/downloader/v65;

    iget-object v4, v4, Lcom/shabakaty/downloader/v65;->a:Landroid/view/WindowId;

    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/m64;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 10
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_3

    .line 15
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dq4$d;

    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/dq4$d;->onTransitionPause(Lcom/shabakaty/downloader/dq4;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/dq4;->G:Z

    :cond_4
    return-void
.end method

.method public y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/dq4;->I:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public z(Landroid/view/View;)Lcom/shabakaty/downloader/dq4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq4;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
