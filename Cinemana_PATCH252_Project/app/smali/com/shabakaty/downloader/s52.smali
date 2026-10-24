.class public final Lcom/shabakaty/downloader/s52;
.super Landroidx/recyclerview/widget/n$g;
.source "ItemSwipeDeleteCallback.kt"


# instance fields
.field public final f:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/tm1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 1
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/n$g;-><init>(II)V

    iput-object p2, p0, Lcom/shabakaty/downloader/s52;->f:Lcom/shabakaty/downloader/tm1;

    const p2, 0x7f08015a

    .line 2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x7f06005f

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/s52;->h:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/n$d;->g(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;FFIZ)V

    .line 2
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string p3, "viewHolder.itemView"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p5, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    const/4 p6, 0x0

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    :goto_0
    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p7

    iget-object v0, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_1
    sub-int/2addr p7, v0

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p7, p5

    .line 5
    iget-object p5, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez p5, :cond_2

    const/4 p5, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    :goto_2
    add-int/2addr p5, p7

    const/4 v0, 0x0

    cmpl-float v1, p4, v0

    if-lez v1, :cond_5

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p6

    :goto_3
    add-int/2addr p6, p3

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p3, p7, p6, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    :goto_4
    iget-object p3, p0, Lcom/shabakaty/downloader/s52;->h:Landroid/graphics/drawable/ColorDrawable;

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p6

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p7

    float-to-int p4, p4

    add-int/2addr p7, p4

    add-int/lit8 p7, p7, -0x14

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 13
    invoke-virtual {p3, p5, p6, p7, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    goto :goto_8

    :cond_5
    cmpg-float v0, p4, v0

    if-gez v0, :cond_8

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v0, p3

    iget-object v1, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p6

    :goto_5
    sub-int/2addr v0, p6

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    sub-int/2addr p6, p3

    .line 16
    iget-object p3, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p3, v0, p7, p6, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    :goto_6
    iget-object p3, p0, Lcom/shabakaty/downloader/s52;->h:Landroid/graphics/drawable/ColorDrawable;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p5

    float-to-int p4, p4

    add-int/2addr p5, p4

    add-int/lit8 p5, p5, -0x14

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p6

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 22
    invoke-virtual {p3, p5, p4, p6, p2}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    goto :goto_8

    .line 23
    :cond_8
    iget-object p2, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p2, p6, p6, p6, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    :goto_7
    iget-object p2, p0, Lcom/shabakaty/downloader/s52;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, p6, p6, p6, p6}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 25
    :goto_8
    iget-object p2, p0, Lcom/shabakaty/downloader/s52;->h:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    iget-object p2, p0, Lcom/shabakaty/downloader/s52;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_9
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;)Z
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/s52;->f:Lcom/shabakaty/downloader/tm1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
