.class public final Lcom/shabakaty/downloader/uv5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/br3$d;


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/shabakaty/downloader/de5;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/shabakaty/downloader/de5;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    const v0, 0x7f0a026e

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shabakaty/downloader/uv5;->b:Landroid/widget/TextView;

    const v0, 0x7f0a026d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/shabakaty/downloader/uv5;->c:Landroid/widget/ImageView;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/uv5;->d:Lcom/shabakaty/downloader/de5;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/xl3;->a:[I

    const/4 v1, 0x0

    const v2, 0x7f0400c0

    const v3, 0x7f1300f1

    .line 6
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv5;->f()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv5;->f()V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv5;->f()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-virtual {p1, p0, v0, v1}, Lcom/shabakaty/downloader/br3;->a(Lcom/shabakaty/downloader/br3$d;J)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv5;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/br3;->r(Lcom/shabakaty/downloader/br3$d;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uv5;->f()V

    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->m()Z

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uv5;->d:Lcom/shabakaty/downloader/de5;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/de5;->d()I

    move-result v2

    int-to-long v2, v2

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 9
    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/de5;->c(J)Z

    move-result v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/uv5;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/uv5;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/lw6;->R:Lcom/shabakaty/downloader/lw6;

    invoke-static {v0}, Lcom/shabakaty/downloader/b87;->a(Lcom/shabakaty/downloader/lw6;)V

    return-void

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/uv5;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/uv5;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
