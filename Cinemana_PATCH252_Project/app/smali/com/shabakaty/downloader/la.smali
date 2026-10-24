.class public Lcom/shabakaty/downloader/la;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"


# static fields
.field public static final t:[I


# instance fields
.field public final r:Lcom/shabakaty/downloader/t9;

.field public final s:Lcom/shabakaty/downloader/xa;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/la;->t:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/tn4;->a(Landroid/content/Context;)Landroid/content/Context;

    const v0, 0x7f04004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/rm4;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/la;->t:[I

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v0, v2}, Lcom/shabakaty/downloader/wn4;->r(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/shabakaty/downloader/wn4;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/wn4;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/t9;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/t9;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/t9;->d(Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/xa;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xa;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/la;->s:Lcom/shabakaty/downloader/xa;

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/xa;->e(Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xa;->b()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t9;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->s:Lcom/shabakaty/downloader/xa;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xa;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t9;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t9;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/shabakaty/downloader/hl3;->h(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/t9;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->f(I)V

    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->r:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/la;->s:Lcom/shabakaty/downloader/xa;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xa;->f(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
