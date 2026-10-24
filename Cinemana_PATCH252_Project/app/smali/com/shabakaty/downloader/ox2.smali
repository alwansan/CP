.class public Lcom/shabakaty/downloader/ox2;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ox2$a;
    }
.end annotation


# instance fields
.field public r:Lcom/shabakaty/downloader/nx2;

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ox2;->s:Z

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/e;Z)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ox2;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/nx2;->a()V

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    if-nez v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v0

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nx2;->a()V

    goto :goto_2

    .line 8
    :cond_3
    iget v1, p1, Lcom/shabakaty/downloader/nx2;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 9
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lcom/shabakaty/downloader/nx2;->x:I

    .line 12
    iput v3, p1, Lcom/shabakaty/downloader/nx2;->y:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget v3, p1, Lcom/shabakaty/downloader/nx2;->x:I

    if-eq v1, v3, :cond_6

    .line 14
    iget-object v1, p1, Lcom/shabakaty/downloader/nx2;->r:Lcom/shabakaty/downloader/iq4;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/hq4;->a(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/dq4;)V

    .line 15
    :cond_6
    iget v1, p1, Lcom/shabakaty/downloader/nx2;->v:I

    iget-object v3, p1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/nx2;->e(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 16
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->I:Lcom/shabakaty/downloader/ox2;

    const/4 v5, 0x1

    .line 17
    iput-boolean v5, v4, Lcom/shabakaty/downloader/ox2;->s:Z

    .line 18
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    aget-object v4, v4, v3

    iget v5, p1, Lcom/shabakaty/downloader/nx2;->v:I

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/lx2;->setLabelVisibilityMode(I)V

    .line 19
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/lx2;->setShifting(Z)V

    .line 20
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->w:[Lcom/shabakaty/downloader/lx2;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/lx2;->d(Landroidx/appcompat/view/menu/g;I)V

    .line 21
    iget-object v4, p1, Lcom/shabakaty/downloader/nx2;->I:Lcom/shabakaty/downloader/ox2;

    .line 22
    iput-boolean v2, v4, Lcom/shabakaty/downloader/ox2;->s:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ox2;->t:I

    return v0
.end method

.method public i(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    .line 2
    iput-object p2, p1, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    return-void
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ox2$a;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    check-cast p1, Lcom/shabakaty/downloader/ox2$a;

    iget v1, p1, Lcom/shabakaty/downloader/ox2$a;->r:I

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4
    iget-object v5, v0, Lcom/shabakaty/downloader/nx2;->J:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 5
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 6
    iput v1, v0, Lcom/shabakaty/downloader/nx2;->x:I

    .line 7
    iput v4, v0, Lcom/shabakaty/downloader/nx2;->y:I

    const/4 v0, 0x1

    .line 8
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/shabakaty/downloader/ox2$a;->s:Lcom/shabakaty/downloader/fa3;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 14
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/mi$a;

    if-eqz v5, :cond_3

    .line 15
    new-instance v6, Lcom/shabakaty/downloader/mi;

    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/mi;-><init>(Landroid/content/Context;)V

    .line 16
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->v:I

    .line 17
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mi;->j(I)V

    .line 18
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->u:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 19
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mi;->k(I)V

    .line 20
    :cond_2
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->r:I

    .line 21
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mi;->g(I)V

    .line 22
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->s:I

    .line 23
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mi;->i(I)V

    .line 24
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->z:I

    .line 25
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/mi;->h(I)V

    .line 26
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->B:I

    .line 27
    iget-object v8, v6, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 28
    iput v7, v8, Lcom/shabakaty/downloader/mi$a;->B:I

    .line 29
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi;->m()V

    .line 30
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->C:I

    .line 31
    iget-object v8, v6, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 32
    iput v7, v8, Lcom/shabakaty/downloader/mi$a;->C:I

    .line 33
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi;->m()V

    .line 34
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->D:I

    .line 35
    iget-object v8, v6, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 36
    iput v7, v8, Lcom/shabakaty/downloader/mi$a;->D:I

    .line 37
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi;->m()V

    .line 38
    iget v7, v5, Lcom/shabakaty/downloader/mi$a;->E:I

    .line 39
    iget-object v8, v6, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 40
    iput v7, v8, Lcom/shabakaty/downloader/mi$a;->E:I

    .line 41
    invoke-virtual {v6}, Lcom/shabakaty/downloader/mi;->m()V

    .line 42
    iget-boolean v5, v5, Lcom/shabakaty/downloader/mi$a;->A:Z

    .line 43
    invoke-virtual {v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 44
    iget-object v7, v6, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 45
    iput-boolean v5, v7, Lcom/shabakaty/downloader/mi$a;->A:Z

    .line 46
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 47
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/nx2;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_5
    return-void
.end method

.method public l(Landroidx/appcompat/view/menu/l;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m()Landroid/os/Parcelable;
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ox2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ox2$a;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/nx2;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/ox2$a;->r:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ox2;->r:Lcom/shabakaty/downloader/nx2;

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/nx2;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/fa3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/fa3;-><init>()V

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/mi;

    if-eqz v5, :cond_0

    .line 9
    iget-object v5, v5, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 10
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iput-object v2, v0, Lcom/shabakaty/downloader/ox2$a;->s:Lcom/shabakaty/downloader/fa3;

    return-object v0
.end method
