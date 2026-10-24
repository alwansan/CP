.class public final Lcom/shabakaty/downloader/kq;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:Lcom/shabakaty/downloader/t44;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/shabakaty/downloader/t44;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->f(I)I

    .line 3
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->f(I)I

    .line 4
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->f(I)I

    .line 5
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lcom/shabakaty/downloader/fl3;->f(I)I

    .line 6
    iput-object p6, p0, Lcom/shabakaty/downloader/kq;->a:Landroid/graphics/Rect;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/kq;->b:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/kq;->c:Landroid/content/res/ColorStateList;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/kq;->d:Landroid/content/res/ColorStateList;

    .line 10
    iput p4, p0, Lcom/shabakaty/downloader/kq;->e:I

    .line 11
    iput-object p5, p0, Lcom/shabakaty/downloader/kq;->f:Lcom/shabakaty/downloader/t44;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/shabakaty/downloader/kq;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Cannot create a CalendarItemStyle with a styleResId of 0"

    .line 1
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/fl3;->e(ZLjava/lang/Object;)V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/yl3;->w:[I

    .line 3
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v4, 0x3

    .line 7
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 8
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x4

    .line 9
    invoke-static {p0, p1, v1}, Lcom/shabakaty/downloader/rn2;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/16 v1, 0x9

    .line 10
    invoke-static {p0, p1, v1}, Lcom/shabakaty/downloader/rn2;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v1, 0x7

    .line 11
    invoke-static {p0, p1, v1}, Lcom/shabakaty/downloader/rn2;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v1, 0x8

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v1, 0x5

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x6

    .line 14
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 15
    new-instance v3, Lcom/shabakaty/downloader/h;

    int-to-float v0, v0

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/h;-><init>(F)V

    invoke-static {p0, v1, v2, v3}, Lcom/shabakaty/downloader/t44;->a(Landroid/content/Context;IILcom/shabakaty/downloader/le0;)Lcom/shabakaty/downloader/t44$b;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/t44$b;->a()Lcom/shabakaty/downloader/t44;

    move-result-object v10

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    new-instance p0, Lcom/shabakaty/downloader/kq;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/shabakaty/downloader/kq;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/shabakaty/downloader/t44;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sn2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sn2;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/sn2;

    invoke-direct {v1}, Lcom/shabakaty/downloader/sn2;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/kq;->f:Lcom/shabakaty/downloader/t44;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/sn2;->setShapeAppearanceModel(Lcom/shabakaty/downloader/t44;)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/kq;->f:Lcom/shabakaty/downloader/t44;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sn2;->setShapeAppearanceModel(Lcom/shabakaty/downloader/t44;)V

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/kq;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/sn2;->q(Landroid/content/res/ColorStateList;)V

    .line 6
    iget v2, p0, Lcom/shabakaty/downloader/kq;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/shabakaty/downloader/kq;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/sn2;->v(FLandroid/content/res/ColorStateList;)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/kq;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/shabakaty/downloader/kq;->b:Landroid/content/res/ColorStateList;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/shabakaty/downloader/kq;->a:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
