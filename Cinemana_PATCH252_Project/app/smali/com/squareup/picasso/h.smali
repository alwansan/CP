.class public Lcom/squareup/picasso/h;
.super Lcom/squareup/picasso/a;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/a<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Lcom/shabakaty/downloader/yq;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/k;Landroid/widget/ImageView;Lcom/squareup/picasso/m;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/shabakaty/downloader/yq;Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/k;Ljava/lang/Object;Lcom/squareup/picasso/m;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    .line 2
    iput-object v1, v0, Lcom/squareup/picasso/h;->m:Lcom/shabakaty/downloader/yq;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/squareup/picasso/a;->l:Z

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/h;->m:Lcom/shabakaty/downloader/yq;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/squareup/picasso/h;->m:Lcom/shabakaty/downloader/yq;

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/k;

    iget-object v2, v0, Lcom/squareup/picasso/k;->d:Landroid/content/Context;

    .line 3
    iget-boolean v6, v0, Lcom/squareup/picasso/k;->l:Z

    .line 4
    iget-boolean v5, p0, Lcom/squareup/picasso/a;->d:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/squareup/picasso/l;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;ZZ)V

    .line 5
    iget-object p1, p0, Lcom/squareup/picasso/h;->m:Lcom/shabakaty/downloader/yq;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/yq;->onSuccess()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 5
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/a;->g:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/squareup/picasso/h;->m:Lcom/shabakaty/downloader/yq;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yq;->onError(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method
