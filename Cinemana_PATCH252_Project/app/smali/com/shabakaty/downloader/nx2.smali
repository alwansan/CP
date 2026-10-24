.class public abstract Lcom/shabakaty/downloader/nx2;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/j;


# static fields
.field public static final K:[I

.field public static final L:[I


# instance fields
.field public A:I

.field public B:Landroid/content/res/ColorStateList;

.field public final C:Landroid/content/res/ColorStateList;

.field public D:I

.field public E:I

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:I

.field public H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/mi;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcom/shabakaty/downloader/ox2;

.field public J:Landroidx/appcompat/view/menu/e;

.field public final r:Lcom/shabakaty/downloader/iq4;

.field public final s:Landroid/view/View$OnClickListener;

.field public final t:Lcom/shabakaty/downloader/ae3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ae3<",
            "Lcom/shabakaty/downloader/lx2;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field public w:[Lcom/shabakaty/downloader/lx2;

.field public x:I

.field public y:I

.field public z:Landroid/content/res/ColorStateList;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/shabakaty/downloader/nx2;->K:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/shabakaty/downloader/nx2;->L:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ce3;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ce3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->t:Lcom/shabakaty/downloader/ae3;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->u:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->x:I

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->y:I

    .line 6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    const v0, 0x1010038

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nx2;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/nx2;->C:Landroid/content/res/ColorStateList;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/zf;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zf;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/nx2;->r:Lcom/shabakaty/downloader/iq4;

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->R(I)Lcom/shabakaty/downloader/iq4;

    const-wide/16 v1, 0x73

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/iq4;->P(J)Lcom/shabakaty/downloader/iq4;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/y91;

    invoke-direct {p1}, Lcom/shabakaty/downloader/y91;-><init>()V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->Q(Landroid/animation/TimeInterpolator;)Lcom/shabakaty/downloader/iq4;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/cm4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/cm4;-><init>()V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/iq4;->M(Lcom/shabakaty/downloader/dq4;)Lcom/shabakaty/downloader/iq4;

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/nx2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/nx2$a;-><init>(Lcom/shabakaty/downloader/nx2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->s:Landroid/view/View$OnClickListener;

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private getNewItem()Lcom/shabakaty/downloader/lx2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->t:Lcom/shabakaty/downloader/ae3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ae3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lx2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/nx2;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/lx2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lcom/shabakaty/downloader/lx2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mi;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/lx2;->setBadge(Lcom/shabakaty/downloader/mi;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 3
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    if-eqz v6, :cond_2

    .line 4
    iget-object v7, p0, Lcom/shabakaty/downloader/nx2;->t:Lcom/shabakaty/downloader/ae3;

    invoke-interface {v7, v6}, Lcom/shabakaty/downloader/ae3;->a(Ljava/lang/Object;)Z

    .line 5
    iget-object v7, v6, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v6}, Lcom/shabakaty/downloader/lx2;->b()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 8
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 9
    iget-object v8, v6, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/ni;->b(Lcom/shabakaty/downloader/mi;Landroid/view/View;)V

    .line 10
    :cond_1
    iput-object v1, v6, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iput v2, p0, Lcom/shabakaty/downloader/nx2;->x:I

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/nx2;->y:I

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    return-void

    .line 15
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 16
    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 17
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 18
    :goto_3
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 19
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 21
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v0

    new-array v0, v0, [Lcom/shabakaty/downloader/lx2;

    iput-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    .line 23
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->v:I

    iget-object v1, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/nx2;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    .line 24
    :goto_4
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 25
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->I:Lcom/shabakaty/downloader/ox2;

    .line 26
    iput-boolean v3, v4, Lcom/shabakaty/downloader/ox2;->s:Z

    .line 27
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 28
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->I:Lcom/shabakaty/downloader/ox2;

    .line 29
    iput-boolean v2, v4, Lcom/shabakaty/downloader/ox2;->s:Z

    .line 30
    invoke-direct {p0}, Lcom/shabakaty/downloader/nx2;->getNewItem()Lcom/shabakaty/downloader/lx2;

    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    aput-object v4, v5, v1

    .line 32
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    iget v5, p0, Lcom/shabakaty/downloader/nx2;->A:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setIconSize(I)V

    .line 34
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 35
    iget v5, p0, Lcom/shabakaty/downloader/nx2;->D:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setTextAppearanceInactive(I)V

    .line 36
    iget v5, p0, Lcom/shabakaty/downloader/nx2;->E:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setTextAppearanceActive(I)V

    .line 37
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->B:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 39
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 40
    :cond_8
    iget v5, p0, Lcom/shabakaty/downloader/nx2;->G:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setItemBackground(I)V

    .line 41
    :goto_5
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/lx2;->setShifting(Z)V

    .line 42
    iget v5, p0, Lcom/shabakaty/downloader/nx2;->v:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setLabelVisibilityMode(I)V

    .line 43
    iget-object v5, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v5, v1}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/g;

    .line 44
    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/lx2;->d(Landroidx/appcompat/view/menu/g;I)V

    .line 45
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/lx2;->setItemPosition(I)V

    .line 46
    iget v5, v5, Landroidx/appcompat/view/menu/g;->a:I

    .line 47
    iget-object v6, p0, Lcom/shabakaty/downloader/nx2;->u:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    iget-object v6, p0, Lcom/shabakaty/downloader/nx2;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget v6, p0, Lcom/shabakaty/downloader/nx2;->x:I

    if-eqz v6, :cond_9

    if-ne v5, v6, :cond_9

    .line 50
    iput v1, p0, Lcom/shabakaty/downloader/nx2;->y:I

    .line 51
    :cond_9
    invoke-direct {p0, v4}, Lcom/shabakaty/downloader/nx2;->setBadgeIfNeeded(Lcom/shabakaty/downloader/lx2;)V

    .line 52
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 53
    :cond_a
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/shabakaty/downloader/nx2;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/nx2;->y:I

    .line 54
    iget-object v1, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    return-void
.end method

.method public c(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/ra;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040127

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/shabakaty/downloader/nx2;->L:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/shabakaty/downloader/nx2;->K:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public abstract d(Landroid/content/Context;)Lcom/shabakaty/downloader/lx2;
.end method

.method public e(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/mi;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->z:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->F:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->G:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->A:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->E:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->D:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->B:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->v:I

    return v0
.end method

.method public getMenu()Landroidx/appcompat/view/menu/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->x:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/nx2;->y:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v2, v0, v1, v2}, Lcom/shabakaty/downloader/e2$b;->a(IIZI)Lcom/shabakaty/downloader/e2$b;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/e2$b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/mi;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->H:Landroid/util/SparseArray;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mi;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/lx2;->setBadge(Lcom/shabakaty/downloader/mi;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->z:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->F:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->G:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->A:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->E:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setTextAppearanceActive(I)V

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->B:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/lx2;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->D:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setTextAppearanceInactive(I)V

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/nx2;->B:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/lx2;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->B:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/shabakaty/downloader/lx2;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/nx2;->v:I

    return-void
.end method

.method public setPresenter(Lcom/shabakaty/downloader/ox2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nx2;->I:Lcom/shabakaty/downloader/ox2;

    return-void
.end method
