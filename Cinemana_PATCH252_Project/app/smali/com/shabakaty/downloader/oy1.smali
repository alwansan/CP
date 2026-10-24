.class public final Lcom/shabakaty/downloader/oy1;
.super Ljava/lang/Object;
.source "ImageBindingAdapters.kt"


# direct methods
.method public static final a(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;)V
    .locals 5

    const-string v0, "draweeView"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->e()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "context"

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060063

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->e()I

    move-result p1

    invoke-static {p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f080260

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f080158

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wt2;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f06014c

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wt2;->f(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 8
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v3, :cond_6

    .line 10
    invoke-static {p0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    goto :goto_3

    .line 11
    :cond_6
    new-instance v1, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    sget-object v2, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-direct {v1, v3, v2}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 15
    iput-object p1, v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->n:Ljava/util/List;

    .line 16
    invoke-virtual {v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->a()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    :goto_4
    return-void
.end method

.method public static final b(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 3
    :cond_2
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v6, Lcom/shabakaty/downloader/oy1$a;

    invoke-direct {v6, p1}, Lcom/shabakaty/downloader/oy1$a;-><init>(Landroid/app/Dialog;)V

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/io3;

    invoke-direct {v3}, Lcom/shabakaty/downloader/io3;-><init>()V

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/io3;

    invoke-direct {v4}, Lcom/shabakaty/downloader/io3;-><init>()V

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/io3;

    invoke-direct {v7}, Lcom/shabakaty/downloader/io3;-><init>()V

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/io3;

    invoke-direct {v8}, Lcom/shabakaty/downloader/io3;-><init>()V

    .line 10
    new-instance v9, Lcom/shabakaty/downloader/ny1;

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/ny1;-><init>(Lcom/shabakaty/downloader/io3;Lcom/shabakaty/downloader/io3;Landroid/view/View;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/io3;Lcom/shabakaty/downloader/io3;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :goto_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :goto_3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->e(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/r9;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 17
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/r9;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 18
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 19
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->c:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {p2, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->o(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    :goto_4
    const p2, 0x3f4ccccd    # 0.8f

    .line 22
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 23
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 24
    new-instance p2, Lcom/shabakaty/downloader/ck;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ck;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public static final c(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/Fresco;->a:Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;->a()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->g:Lcom/facebook/drawee/interfaces/DraweeController;

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-static {p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p4

    .line 6
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/rm;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p3, :cond_2

    const/16 p3, 0x1a

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_1
    invoke-direct {p2, v1, p3}, Lcom/shabakaty/downloader/rm;-><init>(Landroid/content/Context;I)V

    .line 8
    iput-object p2, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-nez p4, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iput-object p2, p4, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 10
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    .line 11
    iput-object p2, v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 12
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 13
    iput-object p1, v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    goto :goto_4

    :cond_4
    if-nez p4, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    .line 16
    iput-object p2, v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->f:Ljava/lang/Object;

    .line 17
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 18
    iput-object p1, v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e:Ljava/lang/Object;

    .line 19
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->a()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    :goto_4
    return-void
.end method

.method public static final d(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "draweeView"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->f:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->p(ILandroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->m(I)Lcom/facebook/drawee/drawable/ScaleTypeDrawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/drawable/ScaleTypeDrawable;->r(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    :goto_0
    return-void
.end method
