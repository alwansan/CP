.class public Lcom/skydoves/colorpickerview/ColorPickerView;
.super Landroid/widget/FrameLayout;
.source "ColorPickerView.java"

# interfaces
.implements Lcom/shabakaty/downloader/qh2;


# static fields
.field public static final synthetic L:I


# instance fields
.field public A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

.field public B:Lcom/shabakaty/downloader/f60;

.field public C:J

.field public final D:Landroid/os/Handler;

.field public E:Lcom/skydoves/colorpickerview/a;

.field public F:F

.field public G:F

.field public H:I

.field public I:Z

.field public J:Ljava/lang/String;

.field public final K:Lcom/shabakaty/downloader/c60;

.field public r:I

.field public s:I

.field public t:Landroid/graphics/Point;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Lcom/shabakaty/downloader/yd1;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->D:Landroid/os/Handler;

    .line 4
    sget-object p1, Lcom/skydoves/colorpickerview/a;->r:Lcom/skydoves/colorpickerview/a;

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    .line 6
    iput v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    .line 8
    iput-boolean v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->I:Z

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/c60;->b(Landroid/content/Context;)Lcom/shabakaty/downloader/c60;

    move-result-object v1

    iput-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->K:Lcom/shabakaty/downloader/c60;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/bm3;->c:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x5

    .line 11
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v1, 0x7

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->y:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    iget v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    .line 18
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    :cond_2
    const/16 v1, 0x8

    .line 19
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    iget v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    :cond_3
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    iget v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    .line 24
    :cond_4
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    if-nez v2, :cond_5

    .line 26
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    goto :goto_0

    :cond_5
    if-ne v2, v1, :cond_6

    .line 27
    sget-object p1, Lcom/skydoves/colorpickerview/a;->s:Lcom/skydoves/colorpickerview/a;

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    :cond_6
    :goto_0
    const/4 p1, 0x3

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-wide v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    long-to-int v2, v1

    .line 30
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    :cond_7
    const/4 p1, 0x6

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->J:Ljava/lang/String;

    :cond_8
    const/4 p1, 0x4

    .line 33
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 34
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 37
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    .line 38
    iget-object p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_a

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :cond_a
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 41
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 42
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 46
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802d9

    sget-object v2, Lcom/shabakaty/downloader/ld0;->a:Ljava/lang/Object;

    .line 47
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ld0$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    if-eqz v0, :cond_c

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j96;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->H:I

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j96;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 53
    :cond_c
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iget-object p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    iget p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/d60;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/d60;-><init>(Lcom/skydoves/colorpickerview/ColorPickerView;)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->B:Lcom/shabakaty/downloader/f60;

    if-eqz v0, :cond_6

    .line 2
    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 3
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/e1;->d()V

    .line 5
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;->a()I

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/e1;->d()V

    .line 8
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;->a()I

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->B:Lcom/shabakaty/downloader/f60;

    instance-of v0, p1, Lcom/shabakaty/downloader/w50;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/w50;

    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    invoke-interface {p1, v0, p2}, Lcom/shabakaty/downloader/w50;->a(IZ)V

    goto :goto_0

    .line 11
    :cond_2
    instance-of p1, p1, Lcom/shabakaty/downloader/t50;

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/s50;

    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/s50;-><init>(I)V

    .line 13
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->B:Lcom/shabakaty/downloader/f60;

    check-cast v0, Lcom/shabakaty/downloader/t50;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/t50;->b(Lcom/shabakaty/downloader/s50;Z)V

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColorEnvelope()Lcom/shabakaty/downloader/s50;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/yd1;->a(Lcom/shabakaty/downloader/s50;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 17
    :cond_4
    iget-boolean p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->I:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->I:Z

    .line 19
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 20
    iget p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    if-eqz p1, :cond_6

    .line 22
    iget p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method public c(FF)I
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    aget v0, v1, v2

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    aget v0, v1, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    aget v0, v1, v2

    iget-object v5, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    aget v0, v1, v3

    iget-object v5, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 9
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/u50;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v5, p2, p2

    add-float/2addr v5, v0

    float-to-double v5, v5

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 14
    fill-array-data v1, :array_0

    float-to-double v7, p2

    neg-float p1, p1

    float-to-double p1, p1

    .line 15
    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v7

    double-to-float p1, p1

    const/high16 p2, 0x43340000    # 180.0f

    add-float/2addr p1, p2

    aput p1, v1, v2

    const/high16 p1, 0x3f800000    # 1.0f

    float-to-double v7, v0

    div-double/2addr v5, v7

    double-to-float p2, v5

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v1, v3

    .line 17
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 19
    aget p2, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 20
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 21
    aget v0, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 22
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 23
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    :cond_1
    return v2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final d(Landroid/graphics/Point;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 2
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 3
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/yd1;->getFlagMode()Lcom/shabakaty/downloader/wd1;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/wd1;->r:Lcom/shabakaty/downloader/wd1;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    :cond_0
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 7
    iget p1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    if-lez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 9
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    int-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 10
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 11
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColorEnvelope()Lcom/shabakaty/downloader/s50;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/yd1;->a(Lcom/shabakaty/downloader/s50;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    .line 13
    iget-boolean v3, p1, Lcom/shabakaty/downloader/yd1;->s:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x43340000    # 180.0f

    .line 14
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 15
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    int-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 16
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    iget-object v3, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 17
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColorEnvelope()Lcom/shabakaty/downloader/s50;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/yd1;->a(Lcom/shabakaty/downloader/s50;)V

    :cond_2
    :goto_0
    if-gez v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 20
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setX(F)V

    :cond_4
    return-void
.end method

.method public e(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/u50;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 2
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/4 v2, 0x1

    .line 5
    aget v2, v0, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v4, v4, v2

    float-to-double v5, v4

    const/4 v2, 0x0

    .line 6
    aget v7, v0, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v5

    float-to-double v5, v1

    add-double/2addr v7, v5

    double-to-int v1, v7

    neg-float v4, v4

    float-to-double v4, v4

    .line 7
    aget v6, v0, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    float-to-double v3, v3

    add-double/2addr v6, v3

    double-to-int v3, v6

    .line 8
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p0, v4}, Lcom/shabakaty/downloader/kf5;->d(Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 9
    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    .line 10
    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 11
    new-instance p1, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    .line 12
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlpha()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/e1;->setSelectorPosition(F)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object p1

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/e1;->setSelectorPosition(F)V

    .line 14
    :cond_1
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->f(II)V

    .line 15
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->a(IZ)V

    .line 16
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/skydoves/colorpickerview/ColorPickerView;->d(Landroid/graphics/Point;)V

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "selectByHsvColor(@ColorInt int color) can be called only when the palette is an instance of ColorHsvPalette. Use setHsvPaletteDrawable();"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setX(F)V

    .line 2
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public getActionMode()Lcom/skydoves/colorpickerview/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    return-object v0
.end method

.method public getAlpha()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    return-object v0
.end method

.method public getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    return v0
.end method

.method public getColorEnvelope()Lcom/shabakaty/downloader/s50;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/s50;

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/s50;-><init>(I)V

    return-object v0
.end method

.method public getDebounceDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    return-wide v0
.end method

.method public getFlagView()Lcom/shabakaty/downloader/yd1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    return-object v0
.end method

.method public getPreferenceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getPureColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    return v0
.end method

.method public getSelectedPoint()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSelectorX()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getSelectorY()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/e$b;->ON_DESTROY:Landroidx/lifecycle/e$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->K:Lcom/shabakaty/downloader/c60;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/c60;->d(Lcom/skydoves/colorpickerview/ColorPickerView;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    new-instance p3, Lcom/shabakaty/downloader/u50;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/shabakaty/downloader/u50;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getFlagView()Lcom/shabakaty/downloader/yd1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getFlagView()Lcom/shabakaty/downloader/yd1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yd1;->b(Landroid/view/MotionEvent;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 5
    new-instance v0, Landroid/graphics/Point;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/kf5;->d(Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 7
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/skydoves/colorpickerview/ColorPickerView;->c(FF)I

    move-result v2

    .line 8
    iput v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    .line 9
    iput v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 10
    new-instance v2, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/kf5;->d(Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    .line 11
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->f(II)V

    .line 12
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    sget-object v2, Lcom/skydoves/colorpickerview/a;->s:Lcom/skydoves/colorpickerview/a;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->D:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/e60;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/e60;-><init>(Lcom/skydoves/colorpickerview/ColorPickerView;)V

    .line 16
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->D:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->D:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/e60;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/e60;-><init>(Lcom/skydoves/colorpickerview/ColorPickerView;)V

    .line 19
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->D:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return v1
.end method

.method public setActionMode(Lcom/skydoves/colorpickerview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->E:Lcom/skydoves/colorpickerview/a;

    return-void
.end method

.method public setColorListener(Lcom/shabakaty/downloader/f60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->B:Lcom/shabakaty/downloader/f60;

    return-void
.end method

.method public setDebounceDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->C:J

    return-void
.end method

.method public setFlagView(Lcom/shabakaty/downloader/yd1;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    .line 4
    iget v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public setInitialColor(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->K:Lcom/shabakaty/downloader/c60;

    .line 3
    invoke-virtual {p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/c60;->a(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lcom/skydoves/colorpickerview/ColorPickerView$a;

    invoke-direct {v0, p0, p1}, Lcom/skydoves/colorpickerview/ColorPickerView$a;-><init>(Lcom/skydoves/colorpickerview/ColorPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setInitialColorRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    return-void
.end method

.method public setLifecycleOwner(Lcom/shabakaty/downloader/rh2;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/e;->a(Lcom/shabakaty/downloader/qh2;)V

    return-void
.end method

.method public setPaletteDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    .line 3
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->x:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    .line 9
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->d()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->d()V

    .line 12
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;->a()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;->a()I

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;->a()I

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 18
    :cond_3
    iget-boolean p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->I:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->I:Z

    .line 20
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->F:F

    .line 22
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->G:F

    .line 25
    iget-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->w:Lcom/shabakaty/downloader/yd1;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public setPreferenceName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->J:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPureColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    return-void
.end method

.method public setSelectorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/skydoves/colorpickerview/ColorPickerView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
