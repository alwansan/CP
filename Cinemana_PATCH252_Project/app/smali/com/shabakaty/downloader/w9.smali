.class public Lcom/shabakaty/downloader/w9;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"


# instance fields
.field public final r:Lcom/shabakaty/downloader/y9;

.field public final s:Lcom/shabakaty/downloader/t9;

.field public final t:Lcom/shabakaty/downloader/xa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400de

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/w9;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/tn4;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/rm4;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/y9;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/y9;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/y9;->b(Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/t9;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/t9;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/t9;->d(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/xa;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xa;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/w9;->t:Lcom/shabakaty/downloader/xa;

    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/xa;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t9;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->t:Lcom/shabakaty/downloader/xa;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xa;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

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

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y9;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y9;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w9;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p1, Lcom/shabakaty/downloader/y9;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/shabakaty/downloader/y9;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/shabakaty/downloader/y9;->f:Z

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/y9;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->s:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/y9;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/y9;->d:Z

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y9;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w9;->r:Lcom/shabakaty/downloader/y9;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/y9;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/shabakaty/downloader/y9;->e:Z

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/y9;->a()V

    :cond_0
    return-void
.end method
