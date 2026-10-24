.class public Lcom/facebook/drawee/generic/GenericDraweeHierarchy;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchy.java"

# interfaces
.implements Lcom/facebook/drawee/interfaces/SettableDraweeHierarchy;


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Landroid/content/res/Resources;

.field public c:Lcom/facebook/drawee/generic/RoundingParams;

.field public final d:Lcom/facebook/drawee/generic/RootDrawable;

.field public final e:Lcom/facebook/drawee/drawable/FadeDrawable;

.field public final f:Lcom/facebook/drawee/drawable/ForwardingDrawable;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 4
    iget-object v2, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->a:Landroid/content/res/Resources;

    .line 5
    iput-object v2, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->b:Landroid/content/res/Resources;

    .line 6
    iget-object v2, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->p:Lcom/facebook/drawee/generic/RoundingParams;

    .line 7
    iput-object v2, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 8
    new-instance v2, Lcom/facebook/drawee/drawable/ForwardingDrawable;

    invoke-direct {v2, v0}, Lcom/facebook/drawee/drawable/ForwardingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->f:Lcom/facebook/drawee/drawable/ForwardingDrawable;

    .line 9
    iget-object v0, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 11
    :cond_1
    iget-object v4, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x6

    .line 12
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v5, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->m:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    .line 14
    invoke-virtual {p0, v5, v6}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    .line 15
    iget-object v5, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->d:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v7, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->e:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 17
    invoke-virtual {p0, v5, v7}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v3

    .line 18
    iget-object v5, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->l:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 19
    invoke-virtual {v2, v6}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 20
    invoke-static {v2, v5, v6}, Lcom/facebook/drawee/generic/WrappingUtils;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x2

    .line 21
    aput-object v2, v4, v5

    const/4 v2, 0x3

    .line 22
    iget-object v7, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->j:Landroid/graphics/drawable/Drawable;

    .line 23
    iget-object v8, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->k:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 24
    invoke-virtual {p0, v7, v8}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x4

    .line 25
    iget-object v7, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->f:Landroid/graphics/drawable/Drawable;

    .line 26
    iget-object v8, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->g:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 27
    invoke-virtual {p0, v7, v8}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x5

    .line 28
    iget-object v7, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->h:Landroid/graphics/drawable/Drawable;

    .line 29
    iget-object v8, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->i:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 30
    invoke-virtual {p0, v7, v8}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v2

    if-lez v0, :cond_5

    .line 31
    iget-object v0, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    add-int/lit8 v8, v2, 0x1

    add-int/lit8 v2, v2, 0x6

    .line 33
    invoke-virtual {p0, v7, v6}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v4, v2

    move v2, v8

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 34
    :cond_4
    iget-object v0, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    add-int/lit8 v2, v2, 0x6

    .line 35
    invoke-virtual {p0, v0, v6}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v2

    .line 36
    :cond_5
    new-instance v0, Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-direct {v0, v4, v1, v5}, Lcom/facebook/drawee/drawable/FadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;ZI)V

    iput-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    .line 37
    iget p1, p1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->b:I

    .line 38
    iput p1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->E:I

    .line 39
    iget p1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    if-ne p1, v3, :cond_6

    .line 40
    iput v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    .line 41
    :cond_6
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->c:Lcom/facebook/drawee/generic/RoundingParams;

    .line 42
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    if-eqz p1, :cond_8

    .line 43
    iget-object v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 44
    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->r:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v1, v2, :cond_7

    goto :goto_3

    .line 45
    :cond_7
    new-instance v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-static {v1, p1}, Lcom/facebook/drawee/generic/WrappingUtils;->b(Lcom/facebook/drawee/drawable/Rounded;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 47
    iget p1, p1, Lcom/facebook/drawee/generic/RoundingParams;->d:I

    .line 48
    iput p1, v1, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->E:I

    .line 49
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    move-object v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 51
    :goto_4
    new-instance p1, Lcom/facebook/drawee/generic/RootDrawable;

    invoke-direct {p1, v0}, Lcom/facebook/drawee/generic/RootDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->d:Lcom/facebook/drawee/generic/RootDrawable;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->n()V

    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    return-void

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->b()Z

    .line 56
    throw p1
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->d:Lcom/facebook/drawee/generic/RootDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->d:Lcom/facebook/drawee/generic/RootDrawable;

    .line 2
    iput-object p1, v0, Lcom/facebook/drawee/generic/RootDrawable;->u:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->j()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/ArrayDrawable;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->f()V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->j()V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/drawable/ArrayDrawable;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->f()V

    return-void
.end method

.method public e(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/ArrayDrawable;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->e()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->s(F)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->g()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->f()V

    return-void
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->d:Lcom/facebook/drawee/generic/RootDrawable;

    return-object v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/WrappingUtils;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->f:Lcom/facebook/drawee/drawable/ForwardingDrawable;

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->n(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->e()V

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->j()V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->s(F)V

    if-eqz p3, :cond_0

    .line 9
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->g()V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {p1}, Lcom/facebook/drawee/drawable/FadeDrawable;->f()V

    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/facebook/drawee/generic/WrappingUtils;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/facebook/drawee/generic/WrappingUtils;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    .line 3
    iget-object v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    return-void
.end method

.method public final k(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    .line 3
    iget-object v2, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    aput-boolean v1, v2, p1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final l(I)Lcom/facebook/drawee/drawable/DrawableParent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 3
    iget-object v3, v0, Lcom/facebook/drawee/drawable/ArrayDrawable;->u:[Lcom/facebook/drawee/drawable/DrawableParent;

    array-length v3, v3

    if-ge p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->a(Ljava/lang/Boolean;)V

    .line 4
    iget-object v1, v0, Lcom/facebook/drawee/drawable/ArrayDrawable;->u:[Lcom/facebook/drawee/drawable/DrawableParent;

    aget-object v2, v1, p1

    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lcom/facebook/drawee/drawable/ArrayDrawable$1;

    invoke-direct {v2, v0, p1}, Lcom/facebook/drawee/drawable/ArrayDrawable$1;-><init>(Lcom/facebook/drawee/drawable/ArrayDrawable;I)V

    .line 6
    aput-object v2, v1, p1

    .line 7
    :cond_2
    aget-object p1, v1, p1

    .line 8
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/DrawableParent;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/drawable/MatrixDrawable;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/DrawableParent;->k()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/drawable/MatrixDrawable;

    .line 10
    :cond_3
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/DrawableParent;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/facebook/drawee/drawable/DrawableParent;->k()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    :cond_4
    return-object p1
.end method

.method public final m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->l(I)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 5
    sget-object v1, Lcom/facebook/drawee/generic/WrappingUtils;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v1}, Lcom/facebook/drawee/drawable/DrawableParent;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v0, v2}, Lcom/facebook/drawee/generic/WrappingUtils;->d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lcom/facebook/drawee/drawable/DrawableParent;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const-string p1, "Parent has no child drawable!"

    .line 8
    invoke-static {v0, p1}, Lcom/facebook/common/internal/Preconditions;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->e()V

    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->D:I

    .line 5
    iget-object v1, v0, Lcom/facebook/drawee/drawable/FadeDrawable;->J:[Z

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 6
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->invalidateSelf()V

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->j()V

    .line 8
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    .line 9
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->g()V

    .line 10
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/FadeDrawable;->f()V

    :cond_0
    return-void
.end method

.method public o(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->r(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    return-void
.end method

.method public final p(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/facebook/drawee/drawable/ArrayDrawable;->c(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->c:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->b:Landroid/content/res/Resources;

    invoke-static {p2, v0, v1}, Lcom/facebook/drawee/generic/WrappingUtils;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->l(I)Lcom/facebook/drawee/drawable/DrawableParent;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/drawee/drawable/DrawableParent;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public q(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    .line 2
    iget-object v0, v0, Lcom/facebook/drawee/drawable/ArrayDrawable;->t:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    const/4 v1, 0x6

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "The given index does not correspond to an overlay image."

    .line 3
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v1, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->p(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->p(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->f:Lcom/facebook/drawee/drawable/ForwardingDrawable;

    iget-object v1, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/ForwardingDrawable;->n(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->n()V

    return-void
.end method

.method public final s(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->e:Lcom/facebook/drawee/drawable/FadeDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/ArrayDrawable;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 3
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->k(I)V

    goto :goto_0

    .line 5
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_3

    .line 6
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 7
    :cond_3
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->i(I)V

    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method
