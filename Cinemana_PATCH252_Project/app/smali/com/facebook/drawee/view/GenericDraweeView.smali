.class public Lcom/facebook/drawee/view/GenericDraweeView;
.super Lcom/facebook/drawee/view/DraweeView;
.source "GenericDraweeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/view/DraweeView<",
        "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/view/GenericDraweeView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-direct {v4, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_30

    .line 5
    sget-object v14, Lcom/facebook/drawee/R$styleable;->a:[I

    .line 6
    invoke-virtual {v2, v0, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 7
    :try_start_0
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    :goto_0
    if-ge v15, v0, :cond_26

    .line 8
    invoke-virtual {v14, v15}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 9
    invoke-static {v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->b(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    .line 10
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto/16 :goto_1

    :cond_0
    if-ne v3, v6, :cond_1

    .line 11
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 12
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->d:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_1
    const/4 v6, 0x0

    if-ne v3, v7, :cond_3

    .line 13
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 14
    iput-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->o:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 15
    :cond_2
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v7, v13, [I

    const v25, 0x10100a7

    aput v25, v7, v12

    .line 16
    invoke-virtual {v6, v7, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 17
    iput-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->o:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0xa

    if-ne v3, v7, :cond_4

    .line 18
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 19
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_4
    if-ne v3, v8, :cond_5

    .line 20
    invoke-virtual {v14, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 21
    iput v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->b:I

    goto/16 :goto_1

    :cond_5
    const/16 v7, 0x1c

    if-ne v3, v7, :cond_6

    .line 22
    invoke-virtual {v14, v3, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 23
    iput v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->c:F

    goto/16 :goto_1

    :cond_6
    if-ne v3, v9, :cond_7

    .line 24
    invoke-static {v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->b(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    .line 25
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->e:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto/16 :goto_1

    :cond_7
    const/16 v7, 0xc

    if-ne v3, v7, :cond_8

    .line 26
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 27
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->f:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_8
    const/16 v7, 0xd

    if-ne v3, v7, :cond_9

    .line 28
    invoke-static {v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->b(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    .line 29
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    :cond_9
    if-ne v3, v10, :cond_a

    .line 30
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 31
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_a
    const/4 v7, 0x4

    if-ne v3, v7, :cond_b

    .line 32
    invoke-static {v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->b(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    .line 33
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->i:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    :cond_b
    const/16 v7, 0xb

    if-ne v3, v7, :cond_c

    .line 34
    invoke-static {v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->b(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v3

    .line 35
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->k:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_1

    :cond_c
    const/16 v7, 0x9

    if-ne v3, v7, :cond_d

    .line 36
    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    goto :goto_2

    :cond_d
    if-ne v3, v13, :cond_e

    .line 37
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 38
    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_e
    const/4 v7, 0x5

    if-ne v3, v7, :cond_10

    .line 39
    invoke-static {v2, v14, v3}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_f

    .line 40
    iput-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    goto :goto_1

    :cond_f
    new-array v6, v13, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v12

    .line 41
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    goto :goto_1

    :cond_10
    const/16 v6, 0xe

    if-ne v3, v6, :cond_12

    .line 42
    iget-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v6, :cond_11

    .line 43
    new-instance v6, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v6}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 44
    iput-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 45
    :cond_11
    iget-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 46
    invoke-virtual {v14, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 47
    iput-boolean v3, v6, Lcom/facebook/drawee/generic/RoundingParams;->b:Z

    :goto_1
    move/from16 p2, v0

    move/from16 v9, v16

    move/from16 v11, v17

    move/from16 v10, v18

    move/from16 v0, v19

    move/from16 v8, v20

    move/from16 v12, v21

    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v13, v24

    move/from16 v19, v5

    goto/16 :goto_8

    :cond_12
    const/16 v6, 0x18

    if-ne v3, v6, :cond_13

    move/from16 v6, v23

    .line 48
    invoke-virtual {v14, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    :goto_2
    move/from16 v7, v22

    goto :goto_4

    :cond_13
    move/from16 v6, v23

    const/16 v7, 0x14

    if-ne v3, v7, :cond_14

    move/from16 v7, v22

    .line 49
    invoke-virtual {v14, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    move/from16 v7, v22

    goto :goto_3

    :cond_14
    move/from16 v7, v22

    const/16 v9, 0x15

    if-ne v3, v9, :cond_15

    move/from16 v9, v16

    .line 50
    invoke-virtual {v14, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    :goto_3
    move/from16 v23, v6

    :goto_4
    move/from16 v9, v16

    goto :goto_5

    :cond_15
    move/from16 v9, v16

    const/16 v8, 0x10

    if-ne v3, v8, :cond_16

    move/from16 v8, v20

    .line 51
    invoke-virtual {v14, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    move/from16 v23, v6

    :goto_5
    move/from16 v11, v17

    move/from16 v10, v18

    move/from16 v8, v20

    move/from16 v6, v23

    goto :goto_7

    :cond_16
    move/from16 v8, v20

    const/16 v10, 0x11

    if-ne v3, v10, :cond_17

    move/from16 v10, v18

    .line 52
    invoke-virtual {v14, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move/from16 v11, v17

    move/from16 v10, v18

    goto :goto_7

    :cond_17
    move/from16 v10, v18

    const/16 v13, 0x16

    if-ne v3, v13, :cond_18

    move/from16 v13, v24

    .line 53
    invoke-virtual {v14, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    goto :goto_6

    :cond_18
    move/from16 v13, v24

    const/16 v11, 0x13

    if-ne v3, v11, :cond_19

    move/from16 v11, v17

    .line 54
    invoke-virtual {v14, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v24, v13

    :goto_6
    move/from16 v11, v17

    goto :goto_7

    :cond_19
    move/from16 v11, v17

    const/16 v12, 0x12

    if-ne v3, v12, :cond_1a

    move/from16 v12, v21

    .line 55
    invoke-virtual {v14, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v24, v13

    :goto_7
    move/from16 p2, v0

    goto/16 :goto_c

    :cond_1a
    move/from16 p2, v0

    move/from16 v12, v21

    const/16 v0, 0xf

    if-ne v3, v0, :cond_1b

    move/from16 v0, v19

    .line 56
    invoke-virtual {v14, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v21, v12

    move/from16 v24, v13

    goto/16 :goto_c

    :cond_1b
    move/from16 v0, v19

    const/16 v2, 0x17

    if-ne v3, v2, :cond_1d

    .line 57
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v2, :cond_1c

    .line 58
    new-instance v2, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v2}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 59
    iput-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 60
    :cond_1c
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    move/from16 v19, v5

    const/4 v5, 0x0

    .line 61
    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 62
    iput v3, v2, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 63
    sget-object v3, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->r:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v3, v2, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    :goto_8
    move/from16 v21, v6

    goto/16 :goto_b

    :cond_1d
    move/from16 v19, v5

    const/16 v2, 0x1b

    if-ne v3, v2, :cond_20

    .line 64
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v2, :cond_1e

    .line 65
    new-instance v2, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v2}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 66
    iput-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 67
    :cond_1e
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v5, 0x0

    .line 68
    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    cmpl-float v21, v3, v5

    if-ltz v21, :cond_1f

    move/from16 v21, v6

    const/4 v5, 0x1

    goto :goto_9

    :cond_1f
    move/from16 v21, v6

    const/4 v5, 0x0

    :goto_9
    const-string v6, "the border width cannot be < 0"

    .line 69
    invoke-static {v5, v6}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 70
    iput v3, v2, Lcom/facebook/drawee/generic/RoundingParams;->e:F

    goto :goto_b

    :cond_20
    move/from16 v21, v6

    const/16 v2, 0x19

    if-ne v3, v2, :cond_22

    .line 71
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v2, :cond_21

    .line 72
    new-instance v2, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v2}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 73
    iput-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 74
    :cond_21
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v5, 0x0

    .line 75
    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 76
    iput v3, v2, Lcom/facebook/drawee/generic/RoundingParams;->f:I

    goto :goto_b

    :cond_22
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_25

    .line 77
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v2, :cond_23

    .line 78
    new-instance v2, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v2}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 79
    iput-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 80
    :cond_23
    iget-object v2, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_24

    const/4 v6, 0x1

    goto :goto_a

    :cond_24
    const/4 v6, 0x0

    :goto_a
    const-string v5, "the padding cannot be < 0"

    .line 82
    invoke-static {v6, v5}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 83
    iput v3, v2, Lcom/facebook/drawee/generic/RoundingParams;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_25
    :goto_b
    move/from16 v24, v13

    move/from16 v5, v19

    move/from16 v6, v21

    move/from16 v19, v0

    move/from16 v21, v12

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v23, v6

    move/from16 v22, v7

    move/from16 v20, v8

    move/from16 v16, v9

    move/from16 v18, v10

    move/from16 v17, v11

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_26
    move/from16 v9, v16

    move/from16 v11, v17

    move/from16 v10, v18

    move/from16 v0, v19

    move/from16 v8, v20

    move/from16 v12, v21

    move/from16 v7, v22

    move/from16 v21, v23

    move/from16 v13, v24

    move/from16 v19, v5

    .line 84
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    if-eqz v7, :cond_27

    if-eqz v11, :cond_27

    const/4 v5, 0x1

    goto :goto_d

    :cond_27
    const/4 v5, 0x0

    :goto_d
    if-eqz v9, :cond_28

    if-eqz v13, :cond_28

    const/4 v2, 0x1

    goto :goto_e

    :cond_28
    const/4 v2, 0x0

    :goto_e
    if-eqz v10, :cond_29

    if-eqz v12, :cond_29

    const/4 v3, 0x1

    goto :goto_f

    :cond_29
    const/4 v3, 0x0

    :goto_f
    if-eqz v8, :cond_2f

    if-eqz v0, :cond_2f

    goto :goto_13

    :cond_2a
    if-eqz v7, :cond_2b

    if-eqz v13, :cond_2b

    const/4 v5, 0x1

    goto :goto_10

    :cond_2b
    const/4 v5, 0x0

    :goto_10
    if-eqz v9, :cond_2c

    if-eqz v11, :cond_2c

    const/4 v2, 0x1

    goto :goto_11

    :cond_2c
    const/4 v2, 0x0

    :goto_11
    if-eqz v10, :cond_2d

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_12

    :cond_2d
    const/4 v0, 0x0

    :goto_12
    if-eqz v8, :cond_2e

    if-eqz v12, :cond_2e

    move v3, v0

    :goto_13
    move v0, v3

    move v3, v5

    const/4 v5, 0x1

    goto :goto_14

    :cond_2e
    move v3, v0

    :cond_2f
    move v0, v3

    move v3, v5

    const/4 v5, 0x0

    :goto_14
    move/from16 v6, v19

    move/from16 v7, v21

    goto :goto_15

    :catchall_0
    move-exception v0

    .line 86
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 88
    throw v0

    :cond_30
    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 89
    :goto_15
    iget-object v8, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_31

    if-lez v6, :cond_31

    .line 90
    new-instance v8, Lcom/facebook/drawee/drawable/AutoRotateDrawable;

    .line 91
    iget-object v9, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-direct {v8, v9, v6}, Lcom/facebook/drawee/drawable/AutoRotateDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 93
    iput-object v8, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    :cond_31
    if-lez v7, :cond_38

    .line 94
    iget-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-nez v6, :cond_32

    .line 95
    new-instance v6, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v6}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 96
    iput-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 97
    :cond_32
    iget-object v6, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    if-eqz v3, :cond_33

    int-to-float v3, v7

    goto :goto_16

    :cond_33
    const/4 v3, 0x0

    :goto_16
    if-eqz v2, :cond_34

    int-to-float v2, v7

    goto :goto_17

    :cond_34
    const/4 v2, 0x0

    :goto_17
    if-eqz v0, :cond_35

    int-to-float v0, v7

    goto :goto_18

    :cond_35
    const/4 v0, 0x0

    :goto_18
    if-eqz v5, :cond_36

    int-to-float v11, v7

    goto :goto_19

    :cond_36
    const/4 v11, 0x0

    .line 98
    :goto_19
    iget-object v5, v6, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    if-nez v5, :cond_37

    const/16 v5, 0x8

    new-array v5, v5, [F

    .line 99
    iput-object v5, v6, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    .line 100
    :cond_37
    iget-object v5, v6, Lcom/facebook/drawee/generic/RoundingParams;->c:[F

    const/4 v6, 0x1

    .line 101
    aput v3, v5, v6

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v3, 0x3

    .line 102
    aput v2, v5, v3

    const/4 v3, 0x2

    aput v2, v5, v3

    const/4 v2, 0x5

    .line 103
    aput v0, v5, v2

    const/4 v2, 0x4

    aput v0, v5, v2

    const/4 v0, 0x7

    .line 104
    aput v11, v5, v0

    const/4 v0, 0x6

    aput v11, v5, v0

    .line 105
    :cond_38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 106
    iget v0, v4, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->c:F

    .line 107
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 108
    invoke-virtual {v4}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->a()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/DraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 109
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void
.end method
