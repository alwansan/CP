.class public final Lcom/shabakaty/downloader/yq5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/view/View;

.field public final d:Z

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Ljava/lang/String;

.field public final i:Landroid/graphics/drawable/Drawable;

.field public final j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yq5;->k:Z

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/yq5;->e:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/yq5;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_0

    move-object p4, p5

    .line 6
    :cond_0
    iput-object p4, p0, Lcom/shabakaty/downloader/yq5;->i:Landroid/graphics/drawable/Drawable;

    const p3, 0x7f12006d

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/yq5;->f:Ljava/lang/String;

    const p3, 0x7f12006c

    .line 8
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/yq5;->h:Ljava/lang/String;

    const p3, 0x7f120074

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/yq5;->j:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/shabakaty/downloader/yq5;->c:Landroid/view/View;

    .line 11
    iput-boolean p7, p0, Lcom/shabakaty/downloader/yq5;->d:Z

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yq5;->g()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yq5;->h(Z)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yq5;->g()V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/yq5;->c:Landroid/view/View;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    iget-boolean p1, p0, Lcom/shabakaty/downloader/yq5;->k:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shabakaty/downloader/yq5;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yq5;->f(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shabakaty/downloader/yq5;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yq5;->f(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/shabakaty/downloader/yq5;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/yq5;->f(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/yq5;->h(Z)V

    return-void

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/yq5;->h(Z)V

    :cond_5
    return-void

    .line 13
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAccessibilityFocused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/yq5;->k:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yq5;->k:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/yq5;->d:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/yq5;->b:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
