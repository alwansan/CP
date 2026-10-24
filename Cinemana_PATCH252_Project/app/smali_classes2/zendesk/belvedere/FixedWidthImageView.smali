.class public Lzendesk/belvedere/FixedWidthImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FixedWidthImageView.java"

# interfaces
.implements Lcom/squareup/picasso/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/FixedWidthImageView$b;,
        Lzendesk/belvedere/FixedWidthImageView$c;
    }
.end annotation


# instance fields
.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Landroid/net/Uri;

.field public w:Lcom/squareup/picasso/k;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public y:Lzendesk/belvedere/FixedWidthImageView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    .line 3
    iput p1, p0, Lzendesk/belvedere/FixedWidthImageView;->s:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lzendesk/belvedere/FixedWidthImageView;->v:Landroid/net/Uri;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lzendesk/belvedere/FixedWidthImageView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070059

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FixedWidthImageView;->s:I

    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/picasso/k;IILandroid/net/Uri;)V
    .locals 7

    .line 1
    iput p3, p0, Lzendesk/belvedere/FixedWidthImageView;->s:I

    .line 2
    new-instance v0, Lzendesk/belvedere/FixedWidthImageView$a;

    invoke-direct {v0, p0}, Lzendesk/belvedere/FixedWidthImageView$a;-><init>(Lzendesk/belvedere/FixedWidthImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lzendesk/belvedere/FixedWidthImageView;->y:Lzendesk/belvedere/FixedWidthImageView$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v2, Lzendesk/belvedere/FixedWidthImageView$b;

    iget v3, p0, Lzendesk/belvedere/FixedWidthImageView;->u:I

    iget v4, p0, Lzendesk/belvedere/FixedWidthImageView;->t:I

    iget v5, p0, Lzendesk/belvedere/FixedWidthImageView;->s:I

    iget v6, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    invoke-direct {v2, v3, v4, v5, v6}, Lzendesk/belvedere/FixedWidthImageView$b;-><init>(IIII)V

    check-cast v0, Lzendesk/belvedere/g$a;

    .line 5
    iget-object v0, v0, Lzendesk/belvedere/g$a;->a:Lzendesk/belvedere/g;

    .line 6
    iput-object v2, v0, Lzendesk/belvedere/g;->g:Lzendesk/belvedere/FixedWidthImageView$b;

    .line 7
    iput-object v1, p0, Lzendesk/belvedere/FixedWidthImageView;->y:Lzendesk/belvedere/FixedWidthImageView$c;

    .line 8
    :cond_0
    invoke-virtual {p1, p4}, Lcom/squareup/picasso/k;->g(Landroid/net/Uri;)Lcom/squareup/picasso/n;

    move-result-object p1

    .line 9
    iget-object p4, p1, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/m$b;

    invoke-virtual {p4, p2, p3}, Lcom/squareup/picasso/m$b;->a(II)Lcom/squareup/picasso/m$b;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f07005b

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/cz4$a;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Lcom/shabakaty/downloader/cz4$a;-><init>(II)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/n;->f(Lcom/shabakaty/downloader/up4;)Lcom/squareup/picasso/n;

    .line 14
    invoke-virtual {p1, p0, v1}, Lcom/squareup/picasso/n;->c(Landroid/widget/ImageView;Lcom/shabakaty/downloader/yq;)V

    return-void
.end method

.method public final d(III)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    int-to-float v0, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    int-to-float p2, p3

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/squareup/picasso/k;Landroid/net/Uri;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start loading image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FixedWidthImageView"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/ye2;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4, p5}, Lzendesk/belvedere/FixedWidthImageView;->d(III)Landroid/util/Pair;

    move-result-object p3

    .line 3
    iget-object p4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p4, p3, p2}, Lzendesk/belvedere/FixedWidthImageView;->b(Lcom/squareup/picasso/k;IILandroid/net/Uri;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/k;->g(Landroid/net/Uri;)Lcom/squareup/picasso/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/squareup/picasso/n;->d(Lcom/squareup/picasso/q;)V

    :goto_0
    return-void
.end method

.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/k$d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lzendesk/belvedere/FixedWidthImageView;->u:I

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FixedWidthImageView;->t:I

    .line 3
    iget p2, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    iget v0, p0, Lzendesk/belvedere/FixedWidthImageView;->u:I

    invoke-virtual {p0, p2, p1, v0}, Lzendesk/belvedere/FixedWidthImageView;->d(III)Landroid/util/Pair;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lzendesk/belvedere/FixedWidthImageView;->w:Lcom/squareup/picasso/k;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lzendesk/belvedere/FixedWidthImageView;->v:Landroid/net/Uri;

    invoke-virtual {p0, p2, v0, p1, v1}, Lzendesk/belvedere/FixedWidthImageView;->b(Lcom/squareup/picasso/k;IILandroid/net/Uri;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 2
    iget v0, p0, Lzendesk/belvedere/FixedWidthImageView;->s:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3
    iget v2, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4
    iput p2, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    .line 5
    :cond_0
    iget p2, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    if-lez p2, :cond_1

    .line 6
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 7
    iget-object p2, p0, Lzendesk/belvedere/FixedWidthImageView;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object v2, p0, Lzendesk/belvedere/FixedWidthImageView;->w:Lcom/squareup/picasso/k;

    iget-object v3, p0, Lzendesk/belvedere/FixedWidthImageView;->v:Landroid/net/Uri;

    iget v4, p0, Lzendesk/belvedere/FixedWidthImageView;->r:I

    iget v5, p0, Lzendesk/belvedere/FixedWidthImageView;->t:I

    iget v6, p0, Lzendesk/belvedere/FixedWidthImageView;->u:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lzendesk/belvedere/FixedWidthImageView;->e(Lcom/squareup/picasso/k;Landroid/net/Uri;III)V

    .line 9
    :cond_1
    invoke-super {p0, p1, v0}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
