.class public Lcom/shabakaty/downloader/va$d;
.super Lcom/shabakaty/downloader/mi2;
.source "AppCompatSpinner.java"

# interfaces
.implements Lcom/shabakaty/downloader/va$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public T:Ljava/lang/CharSequence;

.field public U:Landroid/widget/ListAdapter;

.field public final V:Landroid/graphics/Rect;

.field public W:I

.field public final synthetic X:Lcom/shabakaty/downloader/va;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/shabakaty/downloader/mi2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/va$d;->V:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/mi2;->F:Landroid/view/View;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/mi2;->s(Z)V

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/va$d$a;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/va$d$a;-><init>(Lcom/shabakaty/downloader/va$d;Lcom/shabakaty/downloader/va;)V

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/mi2;->G:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->T:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$d;->T:Ljava/lang/CharSequence;

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/va$d;->W:I

    return-void
.end method

.method public n(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi2;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/va$d;->t()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/mi2;->P:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi2;->b()V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 7
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 8
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/mi2;->t:Lcom/shabakaty/downloader/c11;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi2;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/c11;->setListSelectionHidden(Z)V

    .line 13
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 14
    invoke-virtual {p2}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p2, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/va$d$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/va$d$b;-><init>(Lcom/shabakaty/downloader/va$d;)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/va$d$c;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/va$d$c;-><init>(Lcom/shabakaty/downloader/va$d;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    iget-object p2, p0, Lcom/shabakaty/downloader/mi2;->P:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/mi2;->p(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/va$d;->U:Landroid/widget/ListAdapter;

    return-void
.end method

.method public t()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi2;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget-object v1, v1, Lcom/shabakaty/downloader/va;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-static {v0}, Lcom/shabakaty/downloader/j45;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget-object v0, v0, Lcom/shabakaty/downloader/va;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget-object v0, v0, Lcom/shabakaty/downloader/va;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget-object v0, v0, Lcom/shabakaty/downloader/va;->y:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget v5, v4, Lcom/shabakaty/downloader/va;->x:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/va$d;->U:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi2;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/va;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 13
    iget-object v5, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    iget-object v6, v6, Lcom/shabakaty/downloader/va;->y:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/mi2;->r(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 16
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/mi2;->r(I)V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/mi2;->r(I)V

    .line 18
    :goto_2
    iget-object v4, p0, Lcom/shabakaty/downloader/va$d;->X:Lcom/shabakaty/downloader/va;

    invoke-static {v4}, Lcom/shabakaty/downloader/j45;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 19
    iget v0, p0, Lcom/shabakaty/downloader/mi2;->v:I

    sub-int/2addr v3, v0

    .line 20
    iget v0, p0, Lcom/shabakaty/downloader/va$d;->W:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_3

    .line 21
    :cond_5
    iget v2, p0, Lcom/shabakaty/downloader/va$d;->W:I

    add-int/2addr v0, v2

    add-int v3, v0, v1

    .line 22
    :goto_3
    iput v3, p0, Lcom/shabakaty/downloader/mi2;->w:I

    return-void
.end method
