.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "AppCompatImageView.java"


# instance fields
.field public final mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

.field public final mImageHelper:Lcom/shabakaty/downloader/ka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/tn4;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/rm4;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/t9;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/t9;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/t9;->d(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ka;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ka;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/ka;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/t9;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

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

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shabakaty/downloader/un4;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/shabakaty/downloader/un4;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

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
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ka;->c(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Lcom/shabakaty/downloader/t9;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/t9;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ka;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Lcom/shabakaty/downloader/ka;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ka;->e(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
