.class public Lcom/shabakaty/downloader/ee1;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "FlexboxItemDecoration.java"


# static fields
.field public static final c:[I


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/ee1;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/ee1;->c:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/shabakaty/downloader/ee1;->b:I

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ee1;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ee1;->b:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 5

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->P(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->f()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->g()Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p3

    check-cast p3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p4, Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 8
    iget-object v3, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/de1;

    .line 9
    iget v4, v3, Lcom/shabakaty/downloader/de1;->h:I

    if-nez v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 12
    iget-object v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Lcom/google/android/flexbox/a;

    iget-object v2, v2, Lcom/google/android/flexbox/a;->c:[I

    aget v2, v2, p2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    .line 13
    iget-object v3, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Ljava/util/List;

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 15
    iget-object v3, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Ljava/util/List;

    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/de1;

    iget v2, v2, Lcom/shabakaty/downloader/de1;->o:I

    if-ne v2, p2, :cond_4

    goto :goto_3

    :cond_4
    if-nez p2, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/de1;

    .line 19
    iget v2, v2, Lcom/shabakaty/downloader/de1;->p:I

    add-int/lit8 v3, p2, -0x1

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    goto :goto_4

    .line 20
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 21
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->g()Z

    move-result v1

    if-nez v1, :cond_9

    .line 22
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 23
    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 24
    :cond_9
    iget-boolean v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Z

    if-eqz v1, :cond_a

    .line 25
    iget-object v1, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 26
    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 28
    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->f()Z

    move-result v2

    if-nez v2, :cond_c

    .line 30
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 33
    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 34
    :cond_d
    iget-object v1, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 35
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    :goto_4
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-nez p4, :cond_e

    goto :goto_5

    .line 37
    :cond_e
    iget-object p4, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Lcom/google/android/flexbox/a;

    iget-object p4, p4, Lcom/google/android/flexbox/a;->c:[I

    aget p2, p4, p2

    if-nez p2, :cond_f

    goto :goto_5

    .line 38
    :cond_f
    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 39
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->f()Z

    move-result p2

    if-nez p2, :cond_10

    .line 40
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 41
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 42
    :cond_10
    iget-object p2, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 43
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 44
    :cond_11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ee1;->g()Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_5

    .line 45
    :cond_12
    iget-boolean p2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Z

    if-eqz p2, :cond_13

    .line 46
    iget-object p2, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 47
    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 48
    :cond_13
    iget-object p2, p0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 49
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ee1;->f()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 3
    iget v6, v3, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v8

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    .line 7
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$n;

    if-ne v6, v4, :cond_1

    .line 9
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 10
    iget-object v14, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v13

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v14, v13, v14

    .line 12
    iget-object v13, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int v13, v14, v13

    .line 13
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 14
    iget-boolean v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Z

    if-eqz v15, :cond_2

    .line 15
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v15

    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v5

    iget-object v5, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v15

    .line 16
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 17
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v12

    goto :goto_3

    .line 18
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v15

    iget-object v15, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    sub-int/2addr v5, v15

    .line 19
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 20
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v15

    .line 22
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    add-int/2addr v11, v12

    move/from16 v16, v11

    move v11, v5

    move/from16 v5, v16

    .line 23
    :goto_3
    iget-object v12, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v11, v13, v5, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    iget-object v5, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 25
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ee1;->g()Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_9

    .line 26
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 30
    iget v8, v3, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_9

    .line 31
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 32
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 33
    iget-boolean v12, v3, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Z

    if-eqz v12, :cond_6

    .line 34
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .line 35
    iget-object v13, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v12

    goto :goto_6

    .line 36
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v12

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v13, v12, v13

    .line 37
    iget-object v12, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int v12, v13, v12

    .line 38
    :goto_6
    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 39
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    .line 40
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_7
    if-ne v8, v4, :cond_8

    .line 41
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v14

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget-object v15, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v14

    .line 42
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 43
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    goto :goto_8

    .line 44
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    iget-object v15, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 45
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 46
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_7
    add-int/2addr v10, v11

    move/from16 v16, v14

    move v14, v10

    move/from16 v10, v16

    .line 47
    :goto_8
    iget-object v11, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    iget-object v10, v0, Lcom/shabakaty/downloader/ee1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_9
    :goto_9
    return-void
.end method
