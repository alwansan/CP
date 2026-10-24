.class public Lcom/shabakaty/downloader/d60;
.super Ljava/lang/Object;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic r:Lcom/skydoves/colorpickerview/ColorPickerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/colorpickerview/ColorPickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d60;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    sget v1, Lcom/skydoves/colorpickerview/ColorPickerView;->L:I

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->K:Lcom/shabakaty/downloader/c60;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 9
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/c60;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/skydoves/colorpickerview/ColorPickerView;->setPureColor(I)V

    .line 10
    new-instance v5, Landroid/graphics/Point;

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 12
    invoke-virtual {v1, v3, v5}, Lcom/shabakaty/downloader/c60;->c(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 13
    invoke-virtual {v1, v3, v5}, Lcom/shabakaty/downloader/c60;->c(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 14
    invoke-virtual {v1, v3, v4}, Lcom/shabakaty/downloader/c60;->a(Ljava/lang/String;I)I

    move-result v1

    .line 15
    iput v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    .line 16
    iput v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 17
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    .line 18
    invoke-virtual {v0, v6, v5}, Lcom/skydoves/colorpickerview/ColorPickerView;->f(II)V

    .line 19
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->a(IZ)V

    .line 20
    iget-object v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->d(Landroid/graphics/Point;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 22
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/kf5;->d(Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 23
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/skydoves/colorpickerview/ColorPickerView;->c(FF)I

    move-result v3

    .line 24
    iput v3, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->r:I

    .line 25
    iput v3, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->s:I

    .line 26
    new-instance v3, Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    .line 27
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->f(II)V

    .line 28
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->a(IZ)V

    .line 29
    iget-object v1, v0, Lcom/skydoves/colorpickerview/ColorPickerView;->t:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->d(Landroid/graphics/Point;)V

    :cond_2
    :goto_0
    return-void
.end method
