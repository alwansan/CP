.class public Lcom/shabakaty/downloader/n03;
.super Lcom/shabakaty/downloader/r03;
.source "NotificationCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r03;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/h03;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/s03;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/s03;->b:Landroid/app/Notification$Builder;

    .line 4
    new-instance v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    return-object v0
.end method

.method public h(Lcom/shabakaty/downloader/h03;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/n03;->k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/shabakaty/downloader/h03;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/n03;->k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/h03;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/m03;->w:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public final k(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 13

    const/4 v0, 0x1

    const v1, 0x7f0d00f3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/downloader/r03;->c(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    const v3, 0x7f0a004a

    .line 2
    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3
    iget-object v4, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    iget-object v4, v4, Lcom/shabakaty/downloader/m03;->b:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/j03;

    .line 6
    iget-boolean v7, v6, Lcom/shabakaty/downloader/j03;->h:Z

    if-nez v7, :cond_1

    .line 7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_1
    if-eqz p2, :cond_7

    if-eqz v4, :cond_7

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    const/4 v5, 0x3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p2, :cond_8

    .line 9
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/j03;

    .line 10
    iget-object v7, v6, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 11
    :goto_3
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    iget-object v9, v9, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v7, :cond_4

    const v10, 0x7f0d00eb

    goto :goto_4

    :cond_4
    const v10, 0x7f0d00ea

    .line 12
    :goto_4
    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {v6}, Lcom/shabakaty/downloader/j03;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    if-eqz v9, :cond_5

    const v10, 0x7f0a0043

    .line 14
    iget-object v11, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    iget-object v11, v11, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060124

    .line 16
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 17
    invoke-virtual {p0, v9, v11, v2}, Lcom/shabakaty/downloader/r03;->e(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 18
    invoke-virtual {v8, v10, v9}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_5
    const v9, 0x7f0a0049

    .line 19
    iget-object v10, v6, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v9, 0x7f0a0040

    if-nez v7, :cond_6

    .line 20
    iget-object v7, v6, Lcom/shabakaty/downloader/j03;->k:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 21
    :cond_6
    iget-object v6, v6, Lcom/shabakaty/downloader/j03;->j:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1, v3, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    const/16 p2, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/16 v0, 0x8

    .line 23
    :goto_5
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a0042

    .line 24
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a04bc

    .line 25
    invoke-virtual {v1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a049c

    .line 26
    invoke-virtual {v1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a049b

    .line 27
    invoke-virtual {v1, v0, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const p2, 0x7f0a0317

    .line 28
    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 30
    invoke-virtual {v1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v4, 0x7f0a0318

    const/4 v5, 0x0

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/r03;->a:Lcom/shabakaty/downloader/m03;

    iget-object p1, p1, Lcom/shabakaty/downloader/m03;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070207

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f070208

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    cmpg-float v6, p1, v2

    if-gez v6, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    cmpl-float v6, p1, v3

    if-lez v6, :cond_b

    const p1, 0x3fa66666    # 1.3f

    :cond_b
    :goto_6
    sub-float/2addr p1, v2

    const v3, 0x3e999998    # 0.29999995f

    div-float/2addr p1, v3

    sub-float/2addr v2, p1

    int-to-float p2, p2

    mul-float v2, v2, p2

    int-to-float p2, v0

    mul-float p1, p1, p2

    add-float/2addr p1, v2

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    .line 36
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-object v1
.end method
