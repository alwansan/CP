.class public final Lcom/shabakaty/downloader/bw5;
.super Lcom/shabakaty/downloader/fu5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final c:Landroid/widget/RelativeLayout;

.field public final d:Landroid/widget/TextView;

.field public final e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public final f:Lcom/shabakaty/downloader/de5;


# direct methods
.method public constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/shabakaty/downloader/de5;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fu5;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bw5;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a04c4

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/bw5;->f:Lcom/shabakaty/downloader/de5;

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/shabakaty/downloader/xl3;->a:[I

    const/4 v0, 0x0

    const v1, 0x7f0400c0

    const v2, 0x7f1300f1

    .line 7
    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x16

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 12
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bw5;->h()V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/xw;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/vu4;->d(Lcom/shabakaty/downloader/xw;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bw5;->h()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bw5;->h()V

    return-void
.end method

.method public final f(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bw5;->h()V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/fu5;->b:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bw5;->h()V

    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vu4;->a:Lcom/shabakaty/downloader/br3;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/fu5;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bw5;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shabakaty/downloader/bw5;->f:Lcom/shabakaty/downloader/de5;

    iget-object v3, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v3

    int-to-long v3, v3

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/de5;->g()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 8
    invoke-virtual {v2, v5, v6}, Lcom/shabakaty/downloader/de5;->m(J)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, -0x80000000

    .line 12
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 16
    iget-object v5, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, v3

    iget-object v3, p0, Lcom/shabakaty/downloader/bw5;->e:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getMaxProgress()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v5, v3

    int-to-double v3, v0

    mul-double v5, v5, v3

    double-to-int v3, v5

    .line 18
    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 22
    iget-object v0, p0, Lcom/shabakaty/downloader/bw5;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bw5;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
