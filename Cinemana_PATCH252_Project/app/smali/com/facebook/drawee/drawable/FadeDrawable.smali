.class public Lcom/facebook/drawee/drawable/FadeDrawable;
.super Lcom/facebook/drawee/drawable/ArrayDrawable;
.source "FadeDrawable.java"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:I

.field public D:I

.field public E:I

.field public F:J

.field public G:[I

.field public H:[I

.field public I:I

.field public J:[Z

.field public K:I

.field public L:Lcom/facebook/fresco/ui/common/OnFadeListener;

.field public M:Z

.field public N:Z

.field public final z:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;ZI)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/drawable/ArrayDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->N:Z

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "At least one layer required!"

    invoke-static {v1, v3}, Lcom/facebook/common/internal/Preconditions;->e(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->z:[Landroid/graphics/drawable/Drawable;

    .line 5
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->G:[I

    .line 6
    array-length v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    const/16 v3, 0xff

    .line 7
    iput v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->I:I

    .line 8
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    .line 9
    iput v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    .line 10
    iput-boolean p2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->A:Z

    if-eqz p2, :cond_1

    const/16 p1, 0xff

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iput p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->B:I

    .line 12
    iput p3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->C:I

    const/4 p3, 0x2

    .line 13
    iput p3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    .line 14
    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([II)V

    .line 15
    iget-object p3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->G:[I

    aput v3, p3, v2

    .line 16
    iget-object p3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    invoke-static {p3, p1}, Ljava/util/Arrays;->fill([II)V

    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    aput v3, p1, v2

    .line 18
    iget-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 19
    iget-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    aput-boolean v0, p1, v2

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_5

    .line 2
    :cond_0
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->E:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->d(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4
    iget-wide v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->F:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->E:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 5
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->i(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 6
    :goto_1
    iput v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    goto :goto_5

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->G:[I

    iget-object v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->z:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 9
    iput-wide v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->F:J

    .line 10
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->E:I

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 11
    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->i(F)Z

    move-result v0

    .line 12
    iget-boolean v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->M:Z

    if-eqz v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->C:I

    if-ltz v4, :cond_8

    iget-object v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    array-length v6, v5

    if-lt v4, v6, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    aget-boolean v4, v5, v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->M:Z

    .line 16
    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->L:Lcom/facebook/fresco/ui/common/OnFadeListener;

    if-eqz v4, :cond_8

    .line 17
    check-cast v4, Lcom/facebook/drawee/controller/AbstractDraweeController$1;

    .line 18
    iget-object v4, v4, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->a:Lcom/facebook/drawee/controller/AbstractDraweeController;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    .line 19
    :goto_4
    iput v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    :goto_5
    const/4 v3, 0x0

    .line 20
    :goto_6
    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->z:[Landroid/graphics/drawable/Drawable;

    array-length v5, v4

    if-ge v3, v5, :cond_c

    .line 21
    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    aget v5, v5, v3

    iget v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->I:I

    mul-int v5, v5, v6

    int-to-double v5, v5

    const-wide v7, 0x406fe00000000000L    # 255.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-eqz v4, :cond_b

    if-lez v5, :cond_b

    .line 22
    iget v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    .line 23
    iget-boolean v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->N:Z

    if-eqz v6, :cond_a

    .line 24
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 25
    :cond_a
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 26
    iget v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    .line 27
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_e

    .line 28
    iget-boolean p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->M:Z

    if-nez p1, :cond_d

    goto :goto_7

    .line 29
    :cond_d
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->M:Z

    .line 30
    iget-object p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->L:Lcom/facebook/fresco/ui/common/OnFadeListener;

    if-eqz p1, :cond_f

    .line 31
    check-cast p1, Lcom/facebook/drawee/controller/AbstractDraweeController$1;

    .line 32
    iget-object p1, p1, Lcom/facebook/drawee/controller/AbstractDraweeController$1;->a:Lcom/facebook/drawee/controller/AbstractDraweeController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 33
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    :cond_f
    :goto_7
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    return-void
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->z:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    iget-object v3, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0xff

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->I:I

    return v0
.end method

.method public final i(F)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :goto_0
    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->z:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 2
    iget-object v4, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    aget-boolean v5, v4, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    .line 3
    :goto_1
    iget-object v6, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->H:[I

    iget-object v7, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->G:[I

    aget v7, v7, v2

    int-to-float v7, v7

    const/16 v8, 0xff

    mul-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, p1

    add-float/2addr v5, v7

    float-to-int v5, v5

    aput v5, v6, v2

    .line 4
    aget v5, v6, v2

    if-gez v5, :cond_1

    .line 5
    aput v1, v6, v2

    .line 6
    :cond_1
    aget v5, v6, v2

    if-le v5, v8, :cond_2

    .line 7
    aput v8, v6, v2

    .line 8
    :cond_2
    aget-boolean v5, v4, v2

    if-eqz v5, :cond_3

    aget v5, v6, v2

    if-ge v5, v8, :cond_3

    const/4 v3, 0x0

    .line 9
    :cond_3
    aget-boolean v4, v4, v2

    if-nez v4, :cond_4

    aget v4, v6, v2

    if-lez v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->K:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->I:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/drawee/drawable/FadeDrawable;->I:I

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
