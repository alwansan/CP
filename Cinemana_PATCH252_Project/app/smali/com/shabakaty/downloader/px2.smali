.class public abstract Lcom/shabakaty/downloader/px2;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/px2$d;,
        Lcom/shabakaty/downloader/px2$b;,
        Lcom/shabakaty/downloader/px2$c;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/mx2;

.field public final s:Lcom/shabakaty/downloader/nx2;

.field public final t:Lcom/shabakaty/downloader/ox2;

.field public u:Landroid/content/res/ColorStateList;

.field public v:Landroid/view/MenuInflater;

.field public w:Lcom/shabakaty/downloader/px2$c;

.field public x:Lcom/shabakaty/downloader/px2$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/shabakaty/downloader/un2;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ox2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ox2;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->t:Lcom/shabakaty/downloader/ox2;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/yl3;->E:[I

    const/4 v7, 0x2

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/om4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/shabakaty/downloader/wn4;

    move-result-object p2

    .line 6
    new-instance p3, Lcom/shabakaty/downloader/mx2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, Lcom/shabakaty/downloader/px2;->getMaxItemCount()I

    move-result v0

    invoke-direct {p3, v6, p4, v0}, Lcom/shabakaty/downloader/mx2;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    .line 7
    new-instance p4, Lcom/shabakaty/downloader/kn;

    invoke-direct {p4, v6}, Lcom/shabakaty/downloader/kn;-><init>(Landroid/content/Context;)V

    .line 8
    iput-object p4, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    .line 9
    iput-object p4, p1, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    const/4 v0, 0x1

    .line 10
    iput v0, p1, Lcom/shabakaty/downloader/ox2;->t:I

    .line 11
    invoke-virtual {p4, p1}, Lcom/shabakaty/downloader/nx2;->setPresenter(Lcom/shabakaty/downloader/ox2;)V

    .line 12
    iget-object v1, p3, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-virtual {p3, p1, v1}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/i;Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 14
    iget-object v1, p1, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    .line 15
    iput-object p3, v1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x4

    .line 16
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 18
    invoke-virtual {p4, v1}, Lcom/shabakaty/downloader/nx2;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const v1, 0x1010038

    .line 19
    invoke-virtual {p4, v1}, Lcom/shabakaty/downloader/nx2;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 20
    invoke-virtual {p4, v1}, Lcom/shabakaty/downloader/nx2;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    const/4 v1, 0x3

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b7

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 23
    invoke-virtual {p2, v1, v2}, Lcom/shabakaty/downloader/wn4;->f(II)I

    move-result v1

    .line 24
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setItemIconSize(I)V

    const/4 v1, 0x7

    .line 25
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p2, v1, v3}, Lcom/shabakaty/downloader/wn4;->m(II)I

    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setItemTextAppearanceInactive(I)V

    :cond_1
    const/4 v1, 0x6

    .line 28
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {p2, v1, v3}, Lcom/shabakaty/downloader/wn4;->m(II)I

    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setItemTextAppearanceActive(I)V

    :cond_2
    const/16 v1, 0x8

    .line 31
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_6

    .line 34
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/sn2;

    invoke-direct {v1}, Lcom/shabakaty/downloader/sn2;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 36
    instance-of v4, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_5

    .line 37
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 38
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sn2;->q(Landroid/content/res/ColorStateList;)V

    .line 40
    :cond_5
    iget-object v2, v1, Lcom/shabakaty/downloader/sn2;->r:Lcom/shabakaty/downloader/sn2$b;

    new-instance v4, Lcom/shabakaty/downloader/n21;

    invoke-direct {v4, v6}, Lcom/shabakaty/downloader/n21;-><init>(Landroid/content/Context;)V

    iput-object v4, v2, Lcom/shabakaty/downloader/sn2$b;->b:Lcom/shabakaty/downloader/n21;

    .line 41
    invoke-virtual {v1}, Lcom/shabakaty/downloader/sn2;->A()V

    .line 42
    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_6
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {p2, v0, v3}, Lcom/shabakaty/downloader/wn4;->f(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setElevation(F)V

    .line 46
    :cond_7
    invoke-static {v6, p2, v3}, Lcom/shabakaty/downloader/rn2;->b(Landroid/content/Context;Lcom/shabakaty/downloader/wn4;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const/16 v1, 0x9

    const/4 v2, -0x1

    .line 49
    invoke-virtual {p2, v1, v2}, Lcom/shabakaty/downloader/wn4;->k(II)I

    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setLabelVisibilityMode(I)V

    .line 51
    invoke-virtual {p2, v7, v3}, Lcom/shabakaty/downloader/wn4;->m(II)I

    move-result v1

    if-eqz v1, :cond_8

    .line 52
    invoke-virtual {p4, v1}, Lcom/shabakaty/downloader/nx2;->setItemBackgroundRes(I)V

    goto :goto_1

    :cond_8
    const/4 v1, 0x5

    .line 53
    invoke-static {v6, p2, v1}, Lcom/shabakaty/downloader/rn2;->b(Landroid/content/Context;Lcom/shabakaty/downloader/wn4;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 54
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/px2;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    const/16 v1, 0xa

    .line 55
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 56
    invoke-virtual {p2, v1, v3}, Lcom/shabakaty/downloader/wn4;->m(II)I

    move-result v1

    .line 57
    iput-boolean v0, p1, Lcom/shabakaty/downloader/ox2;->s:Z

    .line 58
    invoke-direct {p0}, Lcom/shabakaty/downloader/px2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    iput-boolean v3, p1, Lcom/shabakaty/downloader/ox2;->s:Z

    .line 60
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox2;->d(Z)V

    .line 61
    :cond_9
    iget-object p1, p2, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance p1, Lcom/shabakaty/downloader/px2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/px2$a;-><init>(Lcom/shabakaty/downloader/px2;)V

    .line 64
    iput-object p1, p3, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    .line 65
    new-instance p1, Lcom/shabakaty/downloader/qx2;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/qx2;-><init>(Lcom/shabakaty/downloader/px2;)V

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/h45;->a(Landroid/view/View;Lcom/shabakaty/downloader/h45$b;)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x6
    .end array-data
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->v:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wh4;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wh4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/px2;->v:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->v:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->u:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    return-object v0
.end method

.method public getMenuView()Landroidx/appcompat/view/menu/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    return-object v0
.end method

.method public getPresenter()Lcom/shabakaty/downloader/ox2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->t:Lcom/shabakaty/downloader/ox2;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/sn2;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/sn2;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/nl6;->u(Landroid/view/View;Lcom/shabakaty/downloader/sn2;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/px2$d;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/px2$d;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/g;->r:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    iget-object p1, p1, Lcom/shabakaty/downloader/px2$d;->t:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android:menu:presenters"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    if-nez v3, :cond_3

    .line 11
    iget-object v3, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v3}, Landroidx/appcompat/view/menu/i;->getId()I

    move-result v2

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    .line 14
    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/i;->j(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/px2$d;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/px2$d;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/shabakaty/downloader/px2$d;->t:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    .line 5
    iget-object v3, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v4, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/i;

    if-nez v6, :cond_2

    .line 9
    iget-object v6, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v6}, Landroidx/appcompat/view/menu/i;->getId()I

    move-result v5

    if-lez v5, :cond_1

    .line 11
    invoke-interface {v6}, Landroidx/appcompat/view/menu/i;->m()Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:presenters"

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :goto_1
    return-object v1
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/nl6;->o(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->u:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->u:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/px2;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->u:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nx2;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/nx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->u:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/nx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/tt3;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/nx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/nx2;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->s:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/nx2;->setLabelVisibilityMode(I)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/px2;->t:Lcom/shabakaty/downloader/ox2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox2;->d(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lcom/shabakaty/downloader/px2$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->x:Lcom/shabakaty/downloader/px2$b;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/shabakaty/downloader/px2$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/px2;->w:Lcom/shabakaty/downloader/px2$c;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/px2;->r:Lcom/shabakaty/downloader/mx2;

    iget-object v1, p0, Lcom/shabakaty/downloader/px2;->t:Lcom/shabakaty/downloader/ox2;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/e;->r(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/i;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
