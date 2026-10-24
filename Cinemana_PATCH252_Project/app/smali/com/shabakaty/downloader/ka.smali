.class public Lcom/shabakaty/downloader/ka;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lcom/shabakaty/downloader/un4;

.field public c:Lcom/shabakaty/downloader/un4;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/j01;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_9

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_8

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->c:Lcom/shabakaty/downloader/un4;

    if-nez v1, :cond_3

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/un4;

    invoke-direct {v1}, Lcom/shabakaty/downloader/un4;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ka;->c:Lcom/shabakaty/downloader/un4;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->c:Lcom/shabakaty/downloader/un4;

    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lcom/shabakaty/downloader/un4;->a:Landroid/content/res/ColorStateList;

    .line 8
    iput-boolean v4, v1, Lcom/shabakaty/downloader/un4;->d:Z

    .line 9
    iput-object v2, v1, Lcom/shabakaty/downloader/un4;->b:Landroid/graphics/PorterDuff$Mode;

    .line 10
    iput-boolean v4, v1, Lcom/shabakaty/downloader/un4;->c:Z

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 13
    iput-boolean v3, v1, Lcom/shabakaty/downloader/un4;->d:Z

    .line 14
    iput-object v2, v1, Lcom/shabakaty/downloader/un4;->a:Landroid/content/res/ColorStateList;

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 17
    iput-boolean v3, v1, Lcom/shabakaty/downloader/un4;->c:Z

    .line 18
    iput-object v2, v1, Lcom/shabakaty/downloader/un4;->b:Landroid/graphics/PorterDuff$Mode;

    .line 19
    :cond_5
    iget-boolean v2, v1, Lcom/shabakaty/downloader/un4;->d:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lcom/shabakaty/downloader/un4;->c:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 20
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ha;->f(Landroid/graphics/drawable/Drawable;Lcom/shabakaty/downloader/un4;[I)V

    :goto_2
    if-eqz v3, :cond_8

    return-void

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    if-eqz v1, :cond_9

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ha;->f(Landroid/graphics/drawable/Drawable;Lcom/shabakaty/downloader/un4;[I)V

    :cond_9
    return-void
.end method

.method public b(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/zl3;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Lcom/shabakaty/downloader/wn4;->r(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/shabakaty/downloader/wn4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v5, v0, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    .line 4
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/c35;->t(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p2}, Lcom/shabakaty/downloader/wn4;->m(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/j01;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x2

    .line 10
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wn4;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 13
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/uz1;->a(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    .line 14
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/wn4;->p(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wn4;->j(II)I

    move-result p1

    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j01;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 18
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    const/16 p1, 0x15

    if-ne p2, p1, :cond_4

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_4
    iget-object p1, v0, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    iget-object p2, v0, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    throw p1
.end method

.method public c(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ra;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/j01;->b(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ka;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka;->a()V

    return-void
.end method

.method public d(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/un4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/un4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    iput-object p1, v0, Lcom/shabakaty/downloader/un4;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/shabakaty/downloader/un4;->d:Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka;->a()V

    return-void
.end method

.method public e(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/un4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/un4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ka;->b:Lcom/shabakaty/downloader/un4;

    iput-object p1, v0, Lcom/shabakaty/downloader/un4;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/shabakaty/downloader/un4;->c:Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka;->a()V

    return-void
.end method
