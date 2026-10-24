.class public abstract Lcom/shabakaty/downloader/lx2;
.super Landroid/widget/FrameLayout;
.source "NavigationBarItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/j$a;


# static fields
.field public static final H:[I


# instance fields
.field public final A:Landroid/widget/TextView;

.field public B:I

.field public C:Landroidx/appcompat/view/menu/g;

.field public D:Landroid/content/res/ColorStateList;

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:Lcom/shabakaty/downloader/mi;

.field public final r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:I

.field public w:Z

.field public x:Landroid/widget/ImageView;

.field public final y:Landroid/view/ViewGroup;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/lx2;->H:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/lx2;->B:I

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx2;->getItemLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a02ff

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    const p1, 0x7f0a0300

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    const v0, 0x7f0a0302

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    const v2, 0x7f0a0301

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx2;->getItemBackgroundResId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx2;->getItemDefaultMarginResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/shabakaty/downloader/lx2;->r:I

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a02f9

    invoke-virtual {p1, v4, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 13
    invoke-virtual {v2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lx2;->a(FF)V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/lx2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/lx2$a;-><init>(Lcom/shabakaty/downloader/lx2;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static e(Landroid/view/View;FFI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 3
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 2
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private getItemVisiblePosition()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Lcom/shabakaty/downloader/lx2;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getSuggestedIconHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private getSuggestedIconWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/mi;->y:Lcom/shabakaty/downloader/mi$a;

    .line 4
    iget v1, v1, Lcom/shabakaty/downloader/mi$a;->B:I

    sub-int/2addr v0, v1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/lx2;->s:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/lx2;->t:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/lx2;->u:F

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Landroidx/appcompat/view/menu/g;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lx2;->setCheckable(Z)V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lx2;->setChecked(Z)V

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lx2;->setEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lx2;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/lx2;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    iget p2, p1, Landroidx/appcompat/view/menu/g;->a:I

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 10
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 12
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    :cond_0
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p1, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 18
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 19
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/ho4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 20
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getBadge()Lcom/shabakaty/downloader/mi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    return-object v0
.end method

.method public getItemBackgroundResId()I
    .locals 1

    const v0, 0x7f08028f

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .locals 1

    const v0, 0x7f0701b8

    return v0
.end method

.method public abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/lx2;->B:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-direct {p0}, Lcom/shabakaty/downloader/lx2;->getSuggestedIconHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    return v2
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/lx2;->getSuggestedIconWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/lx2;->H:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    .line 4
    iget-object v1, v0, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    .line 8
    iget-object v1, v0, Landroidx/appcompat/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/mi;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12
    invoke-direct {p0}, Lcom/shabakaty/downloader/lx2;->getItemVisiblePosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v6

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/e2$c;->a(IIIIZZ)Lcom/shabakaty/downloader/e2$c;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/e2$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/e2$a;->e:Lcom/shabakaty/downloader/e2$a;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/e2$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 21
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBadge(Lcom/shabakaty/downloader/mi;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lx2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->G:Lcom/shabakaty/downloader/mi;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/ni;->a(Lcom/shabakaty/downloader/mi;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/lx2;->v:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const v4, 0x7f0a02f9

    const/16 v5, 0x31

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/lx2;->s:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-static {v0, v6, v6, v8}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->t:F

    invoke-static {v0, v1, v1, v7}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->u:F

    invoke-static {v0, v1, v1, v7}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-static {v0, v6, v6, v8}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 21
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 24
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 27
    :cond_5
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lx2;->w:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 31
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    .line 32
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v3}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    .line 35
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->y:Landroid/view/ViewGroup;

    .line 38
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/lx2;->f(Landroid/view/View;I)V

    if-eqz p1, :cond_8

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shabakaty/downloader/lx2;->s:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-static {v0, v6, v6, v8}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->t:F

    invoke-static {v0, v1, v1, v7}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    goto :goto_2

    .line 43
    :cond_8
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->r:I

    invoke-static {v0, v1, v5}, Lcom/shabakaty/downloader/lx2;->c(Landroid/view/View;II)V

    .line 44
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    iget v1, p0, Lcom/shabakaty/downloader/lx2;->u:F

    invoke-static {v0, v1, v1, v7}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    .line 45
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-static {v0, v6, v6, v8}, Lcom/shabakaty/downloader/lx2;->e(Landroid/view/View;FFI)V

    .line 46
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/xd3;->a(Landroid/content/Context;I)Lcom/shabakaty/downloader/xd3;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/c35;->v(Landroid/view/View;Lcom/shabakaty/downloader/xd3;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/c35;->v(Landroid/view/View;Lcom/shabakaty/downloader/xd3;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->E:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/g01;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->F:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lx2;->D:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ld0;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ld0$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lx2;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/lx2;->B:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/lx2;->v:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/lx2;->v:I

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lx2;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lx2;->w:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/lx2;->w:Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lx2;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/im4;->g(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lx2;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/im4;->g(Landroid/widget/TextView;I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lx2;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->q:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/lx2;->C:Landroidx/appcompat/view/menu/g;

    .line 10
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->r:Ljava/lang/CharSequence;

    .line 11
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_4

    .line 12
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/ho4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
