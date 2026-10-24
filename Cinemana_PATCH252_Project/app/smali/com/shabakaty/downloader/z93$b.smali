.class public final Lcom/shabakaty/downloader/z93$b;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ok4;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/z93$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/z93$b;->b:Ljava/util/List;

    const/16 v1, 0x10

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/z93$b;->c:I

    const/16 v1, 0x3100

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/z93$b;->d:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/shabakaty/downloader/z93$b;->e:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/z93$b;->f:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/z93;->f:Lcom/shabakaty/downloader/z93$c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/z93$b;->a:Landroid/graphics/Bitmap;

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/ok4;->d:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/ok4;->e:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/ok4;->f:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/ok4;->g:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/ok4;->h:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/ok4;->i:Lcom/shabakaty/downloader/ok4;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/z93;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/z93$b;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 2
    iget v2, v0, Lcom/shabakaty/downloader/z93$b;->d:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v5, v5, v2

    .line 4
    iget v2, v0, Lcom/shabakaty/downloader/z93$b;->d:I

    if-le v5, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v5

    div-double/2addr v2, v4

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    .line 6
    :cond_0
    iget v2, v0, Lcom/shabakaty/downloader/z93$b;->e:I

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    iget v5, v0, Lcom/shabakaty/downloader/z93$b;->e:I

    if-le v2, v5, :cond_1

    int-to-double v3, v5

    int-to-double v5, v2

    div-double/2addr v3, v5

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 11
    invoke-static {v1, v5, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 12
    :goto_1
    iget-object v3, v0, Lcom/shabakaty/downloader/z93$b;->a:Landroid/graphics/Bitmap;

    .line 13
    new-instance v11, Lcom/shabakaty/downloader/q50;

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v3, v9, v10

    .line 16
    new-array v12, v3, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v12

    move v6, v9

    .line 17
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 18
    iget v3, v0, Lcom/shabakaty/downloader/z93$b;->c:I

    iget-object v4, v0, Lcom/shabakaty/downloader/z93$b;->f:Ljava/util/List;

    .line 19
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/shabakaty/downloader/z93$b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/shabakaty/downloader/z93$c;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shabakaty/downloader/z93$c;

    :goto_2
    invoke-direct {v11, v12, v3, v4}, Lcom/shabakaty/downloader/q50;-><init>([II[Lcom/shabakaty/downloader/z93$c;)V

    .line 20
    iget-object v3, v0, Lcom/shabakaty/downloader/z93$b;->a:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_4

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    :cond_4
    iget-object v1, v11, Lcom/shabakaty/downloader/q50;->c:Ljava/util/List;

    .line 23
    new-instance v3, Lcom/shabakaty/downloader/z93;

    iget-object v4, v0, Lcom/shabakaty/downloader/z93$b;->b:Ljava/util/List;

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/z93;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_13

    .line 25
    iget-object v6, v3, Lcom/shabakaty/downloader/z93;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ok4;

    .line 26
    iget-object v7, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v9, v7, :cond_6

    .line 27
    iget-object v11, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    aget v11, v11, v9

    cmpl-float v12, v11, v8

    if-lez v12, :cond_5

    add-float/2addr v10, v11

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    cmpl-float v7, v10, v8

    if-eqz v7, :cond_8

    .line 28
    iget-object v7, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    array-length v7, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_8

    .line 29
    iget-object v11, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    aget v12, v11, v9

    cmpl-float v12, v12, v8

    if-lez v12, :cond_7

    .line 30
    aget v12, v11, v9

    div-float/2addr v12, v10

    aput v12, v11, v9

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 31
    :cond_8
    iget-object v7, v3, Lcom/shabakaty/downloader/z93;->c:Ljava/util/Map;

    .line 32
    iget-object v9, v3, Lcom/shabakaty/downloader/z93;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x1

    if-ge v10, v9, :cond_11

    .line 33
    iget-object v14, v3, Lcom/shabakaty/downloader/z93;->a:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/shabakaty/downloader/z93$d;

    .line 34
    invoke-virtual {v14}, Lcom/shabakaty/downloader/z93$d;->b()[F

    move-result-object v15

    .line 35
    aget v16, v15, v13

    .line 36
    iget-object v5, v6, Lcom/shabakaty/downloader/ok4;->a:[F

    aget v17, v5, v2

    const/16 v18, 0x2

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_9

    .line 37
    aget v16, v15, v13

    .line 38
    aget v5, v5, v18

    cmpg-float v5, v16, v5

    if-gtz v5, :cond_9

    .line 39
    aget v5, v15, v18

    .line 40
    iget-object v13, v6, Lcom/shabakaty/downloader/ok4;->b:[F

    aget v17, v13, v2

    cmpl-float v5, v5, v17

    if-ltz v5, :cond_9

    .line 41
    aget v5, v15, v18

    .line 42
    aget v13, v13, v18

    cmpg-float v5, v5, v13

    if-gtz v5, :cond_9

    .line 43
    iget-object v5, v3, Lcom/shabakaty/downloader/z93;->d:Landroid/util/SparseBooleanArray;

    .line 44
    iget v13, v14, Lcom/shabakaty/downloader/z93$d;->d:I

    .line 45
    invoke-virtual {v5, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_f

    .line 46
    invoke-virtual {v14}, Lcom/shabakaty/downloader/z93$d;->b()[F

    move-result-object v5

    .line 47
    iget-object v13, v3, Lcom/shabakaty/downloader/z93;->e:Lcom/shabakaty/downloader/z93$d;

    if-eqz v13, :cond_a

    .line 48
    iget v13, v13, Lcom/shabakaty/downloader/z93$d;->e:I

    goto :goto_8

    :cond_a
    const/4 v13, 0x1

    .line 49
    :goto_8
    iget-object v15, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    aget v17, v15, v2

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v8

    if-lez v17, :cond_b

    .line 50
    aget v15, v15, v2

    const/16 v16, 0x1

    .line 51
    aget v17, v5, v16

    .line 52
    iget-object v2, v6, Lcom/shabakaty/downloader/ok4;->a:[F

    aget v2, v2, v16

    sub-float v17, v17, v2

    .line 53
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v19, v2

    mul-float v2, v2, v15

    goto :goto_9

    :cond_b
    const/16 v16, 0x1

    const/4 v2, 0x0

    .line 54
    :goto_9
    iget-object v15, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    aget v17, v15, v16

    cmpl-float v17, v17, v8

    if-lez v17, :cond_c

    .line 55
    aget v15, v15, v16

    .line 56
    aget v5, v5, v18

    .line 57
    iget-object v8, v6, Lcom/shabakaty/downloader/ok4;->b:[F

    aget v8, v8, v16

    sub-float/2addr v5, v8

    .line 58
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v19, v19, v5

    mul-float v19, v19, v15

    goto :goto_a

    :cond_c
    const/16 v19, 0x0

    .line 59
    :goto_a
    iget-object v5, v6, Lcom/shabakaty/downloader/ok4;->c:[F

    aget v8, v5, v18

    const/4 v15, 0x0

    cmpl-float v8, v8, v15

    if-lez v8, :cond_d

    .line 60
    aget v5, v5, v18

    .line 61
    iget v8, v14, Lcom/shabakaty/downloader/z93$d;->e:I

    int-to-float v8, v8

    int-to-float v13, v13

    div-float/2addr v8, v13

    mul-float v8, v8, v5

    goto :goto_b

    :cond_d
    const/4 v8, 0x0

    :goto_b
    add-float v2, v2, v19

    add-float/2addr v2, v8

    if-eqz v11, :cond_e

    cmpl-float v5, v2, v12

    if-lez v5, :cond_10

    :cond_e
    move v12, v2

    move-object v11, v14

    goto :goto_c

    :cond_f
    const/4 v15, 0x0

    :cond_10
    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_11
    if-eqz v11, :cond_12

    .line 62
    iget-object v2, v3, Lcom/shabakaty/downloader/z93;->d:Landroid/util/SparseBooleanArray;

    .line 63
    iget v5, v11, Lcom/shabakaty/downloader/z93$d;->d:I

    const/4 v8, 0x1

    .line 64
    invoke-virtual {v2, v5, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 65
    :cond_12
    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 66
    :cond_13
    iget-object v1, v3, Lcom/shabakaty/downloader/z93;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    return-object v3

    .line 67
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
