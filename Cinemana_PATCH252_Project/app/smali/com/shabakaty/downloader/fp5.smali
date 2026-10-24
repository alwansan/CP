.class public final Lcom/shabakaty/downloader/fp5;
.super Lcom/shabakaty/downloader/vu4;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final b:Landroid/widget/ImageView;

.field public final c:Lcom/shabakaty/downloader/wy1;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Landroid/view/View;

.field public final f:Lcom/shabakaty/downloader/ez1;

.field public final g:Lcom/shabakaty/downloader/sm5;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/shabakaty/downloader/wy1;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vu4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fp5;->b:Landroid/widget/ImageView;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/fp5;->c:Lcom/shabakaty/downloader/wy1;

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    .line 5
    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/fp5;->d:Landroid/graphics/Bitmap;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/fp5;->e:Landroid/view/View;

    .line 7
    invoke-static {p2}, Lcom/shabakaty/downloader/tw;->e(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3}, Lcom/shabakaty/downloader/tw;->a()Lcom/shabakaty/downloader/vw;

    move-result-object p3

    .line 9
    iget-object p3, p3, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Lcom/shabakaty/downloader/uw;->W0()Lcom/shabakaty/downloader/ez1;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/fp5;->f:Lcom/shabakaty/downloader/ez1;

    goto :goto_1

    .line 11
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/fp5;->f:Lcom/shabakaty/downloader/ez1;

    .line 12
    :goto_1
    new-instance p1, Lcom/shabakaty/downloader/sm5;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/fp5;->g:Lcom/shabakaty/downloader/sm5;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->f()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/fp5;->g:Lcom/shabakaty/downloader/sm5;

    new-instance v0, Lcom/shabakaty/downloader/fq1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/fq1;-><init>(Lcom/shabakaty/downloader/fp5;)V

    .line 3
    iput-object v0, p1, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->g()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp5;->g:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sm5;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->g()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/fp5;->f:Lcom/shabakaty/downloader/ez1;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 6
    iget-object v4, p0, Lcom/shabakaty/downloader/fp5;->c:Lcom/shabakaty/downloader/wy1;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/ez1;->b(Lcom/shabakaty/downloader/ip2;Lcom/shabakaty/downloader/wy1;)Lcom/shabakaty/downloader/s55;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/s55;->s:Landroid/net/Uri;

    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    if-eqz v0, :cond_3

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s55;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/s55;->s:Landroid/net/Uri;

    move-object v1, v0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->g()V

    return-void

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/fp5;->g:Lcom/shabakaty/downloader/sm5;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    return-void

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fp5;->g()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fp5;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/fp5;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/fp5;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/fp5;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
