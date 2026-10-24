.class public final Lcom/facebook/appevents/ml/Operator;
.super Ljava/lang/Object;
.source "Operator.java"


# direct methods
.method public static a(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 3
    aget v0, v0, v4

    .line 4
    iget-object p0, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 5
    iget-object p1, p1, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_0

    mul-int v7, v4, v3

    mul-int v7, v7, v0

    mul-int v8, v5, v0

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    .line 6
    aget v7, p0, v8

    aget v9, p1, v6

    add-float/2addr v7, v9

    aput v7, p0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 2
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 3
    aget v2, v2, v7

    .line 4
    iget-object v8, v1, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v9, v8, v3

    sub-int v10, v6, v9

    add-int/2addr v10, v5

    .line 5
    aget v8, v8, v7

    .line 6
    new-instance v11, Lcom/facebook/appevents/ml/MTensor;

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v4, v12, v3

    aput v10, v12, v5

    aput v8, v12, v7

    invoke-direct {v11, v12}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 7
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 8
    iget-object v5, v11, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 9
    iget-object v1, v1, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v8, :cond_3

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v10, :cond_2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_1

    :goto_4
    if-ge v3, v2, :cond_0

    mul-int v16, v6, v2

    mul-int v16, v16, v7

    add-int v17, v15, v13

    mul-int v17, v17, v2

    add-int v17, v17, v16

    add-int v17, v17, v3

    .line 10
    aget v16, v0, v17

    mul-int v17, v15, v2

    add-int v17, v17, v3

    mul-int v17, v17, v8

    add-int v17, v17, v12

    aget v17, v1, v17

    mul-float v16, v16, v17

    add-float v14, v16, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    mul-int v3, v10, v8

    mul-int v3, v3, v7

    mul-int v15, v13, v8

    add-int/2addr v15, v3

    add-int/2addr v15, v12

    .line 11
    aput v14, v5, v15

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    return-object v11
.end method

.method public static c(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    .line 2
    iget-object v6, v2, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v6, v6, v4

    .line 3
    aget v3, v3, v4

    .line 4
    iget-object v7, v1, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v8, v7, v4

    const/4 v9, 0x1

    .line 5
    aget v7, v7, v9

    .line 6
    new-instance v10, Lcom/facebook/appevents/ml/MTensor;

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v3, v11, v4

    aput v7, v11, v9

    invoke-direct {v10, v11}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 7
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 8
    iget-object v1, v1, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 9
    iget-object v9, v10, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_2

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_1

    mul-int v13, v11, v7

    add-int/2addr v13, v12

    const/4 v14, 0x0

    .line 10
    aput v14, v9, v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_0

    .line 11
    aget v15, v9, v13

    mul-int v16, v11, v8

    add-int v16, v16, v14

    aget v16, v0, v16

    mul-int v17, v14, v7

    add-int v17, v17, v12

    aget v17, v1, v17

    mul-float v16, v16, v17

    add-float v16, v16, v15

    aput v16, v9, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, v2, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 13
    iget-object v1, v10, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_3

    mul-int v7, v2, v6

    add-int/2addr v7, v3

    .line 14
    aget v8, v1, v7

    aget v9, v0, v3

    add-float/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object v10
.end method

.method public static d(Lcom/facebook/appevents/ml/MTensor;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    const/4 v2, 0x1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 3
    aget v3, v3, v1

    mul-int v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 4
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_2

    .line 5
    iget-object v6, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v6, v6, v5

    .line 6
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_2
    aput v2, v3, p1

    .line 8
    iput-object v3, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v1, :cond_3

    .line 9
    aget v2, v3, p1

    mul-int v0, v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 10
    :cond_3
    new-array p1, v0, [F

    .line 11
    iget-object v1, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    iget v2, p0, Lcom/facebook/appevents/ml/MTensor;->c:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 13
    iput v0, p0, Lcom/facebook/appevents/ml/MTensor;->c:I

    return-void
.end method

.method public static e(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 2
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 3
    aget v2, v2, v7

    sub-int v8, v6, v1

    add-int/2addr v8, v5

    .line 4
    new-instance v9, Lcom/facebook/appevents/ml/MTensor;

    const/4 v10, 0x3

    new-array v10, v10, [I

    aput v4, v10, v3

    aput v8, v10, v5

    aput v2, v10, v7

    invoke-direct {v9, v10}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 6
    iget-object v5, v9, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_1

    mul-int v12, v7, v8

    mul-int v12, v12, v2

    mul-int v13, v11, v2

    add-int/2addr v12, v13

    add-int/2addr v12, v10

    mul-int v14, v7, v6

    mul-int v14, v14, v2

    add-int/2addr v14, v13

    add-int/2addr v14, v10

    const/4 v13, 0x1

    .line 7
    aput v13, v5, v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_0

    .line 8
    aget v15, v5, v12

    mul-int v16, v13, v2

    add-int v16, v16, v14

    aget v3, v0, v16

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v5, v12

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    return-object v9
.end method

.method public static f(Lcom/facebook/appevents/ml/MTensor;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3
    aget v1, p0, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 4
    aput v2, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static g(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aget v0, v0, v3

    .line 3
    new-instance v4, Lcom/facebook/appevents/ml/MTensor;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v1

    aput v2, v5, v3

    invoke-direct {v4, v5}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 4
    iget-object p0, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 5
    iget-object v3, v4, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    mul-int v7, v6, v2

    add-int/2addr v7, v5

    mul-int v8, v5, v0

    add-int/2addr v8, v6

    .line 6
    aget v8, p0, v8

    aput v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static h(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aget v4, v0, v3

    const/4 v5, 0x2

    .line 3
    aget v0, v0, v5

    .line 4
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x3

    new-array v7, v7, [I

    aput v0, v7, v1

    aput v4, v7, v3

    aput v2, v7, v5

    invoke-direct {v6, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    iget-object p0, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 6
    iget-object v3, v6, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_0

    mul-int v9, v8, v2

    mul-int v9, v9, v4

    mul-int v10, v7, v2

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    mul-int v9, v5, v4

    mul-int v9, v9, v0

    mul-int v11, v7, v0

    add-int/2addr v11, v9

    add-int/2addr v11, v8

    .line 7
    aget v9, p0, v11

    aput v9, v3, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method
