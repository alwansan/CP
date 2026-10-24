.class final Lcom/shabakaty/cinemana/ca1/Player94$State;
.super Ljava/lang/Object;
.source "Player94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Player94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field blocked:Z

.field box:Landroid/widget/LinearLayout;

.field c:Landroid/content/Context;

.field final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field captured:Z

.field displayedBucket:J

.field down:J

.field drag:Z

.field dx:F

.field dy:F

.field volatile frameProcess:Ljava/lang/Process;

.field volatile generation:I

.field final h:Landroid/os/Handler;

.field identity:Ljava/lang/String;

.field image:Landroid/widget/ImageView;

.field latest:J

.field listener:Ljava/lang/Object;

.field volatile live:Z

.field final load:Ljava/lang/Runnable;

.field loading:Z

.field multi:Z

.field readerPath:Ljava/lang/String;

.field requestedSecond:J

.field retriever:Landroid/media/MediaMetadataRetriever;

.field scrubBar:Landroid/widget/SeekBar;

.field scrubCancelled:Z

.field scrubbing:Z

.field source:Ljava/lang/String;

.field start:J

.field target:J

.field time:Landroid/widget/TextView;

.field timeBar:Ljava/lang/Object;

.field view:Landroid/widget/FrameLayout;

.field final warm:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    iput-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->identity:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->displayedBucket:J

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->readerPath:Ljava/lang/String;

    iput-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->requestedSecond:J

    .line 31
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Player94$State$2;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->warm:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda4;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    const v2, -0x19ebded5

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Download94;->bg(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v5, 0x43400000    # 192.0f

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v6, 0x42d80000    # 108.0f

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v2, 0x31

    invoke-direct {p1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Player94$State$1;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Player94$State$1;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic lambda$ffmpeg$3(Ljava/lang/Process;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-void
.end method


# virtual methods
.method anchor(J)V
    .locals 13

    .line 20
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v5, 0x43500000    # 208.0f

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v6, 0x430e0000    # 142.0f

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v5

    :goto_0
    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/2addr v6, v1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v5

    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v1, v7

    const/4 v7, 0x0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v8, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/widget/SeekBar;->isShown()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->getLocationOnScreen([I)V

    const-string v1, "X"

    invoke-virtual {p0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    long-to-float p1, p1

    long-to-float p2, v8

    div-float/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    sub-float v6, v1, v6

    :cond_2
    aget p1, v3, v7

    aget v1, v2, v7

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    iget-object v8, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v1, v8

    iget-object v8, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    mul-float v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr p1, v1

    div-int/lit8 v1, v4, 0x2

    sub-int v6, p1, v1

    aget p1, v3, p2

    aget p2, v2, p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p2, v1}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result p2

    sub-int v1, p1, p2

    :cond_3
    const/16 p1, 0x33

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result p1

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result p2

    sub-int/2addr v2, p2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method

.method closeReader()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->readerPath:Ljava/lang/String;

    return-void
.end method

.method controls(Landroid/view/View;FF)Z
    .locals 9

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    sub-float v6, p3, v6

    const/4 v7, 0x0

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_1

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    invoke-virtual {p0, v4, v5, v6}, Lcom/shabakaty/cinemana/ca1/Player94$State;->controls(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    instance-of p2, p1, Landroid/widget/SeekBar;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/widget/Button;

    if-nez p2, :cond_3

    instance-of p2, p1, Landroid/widget/ImageButton;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    if-eq p1, p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p3, v0}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result p3

    if-ge p2, p3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method ffmpeg(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 17

    .line 34
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v5, "libffmpeg.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v4, :cond_0

    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    return-object v2

    :cond_0
    :try_start_1
    const-string v4, "ca1_preview95_"

    const-string v5, ".jpg"

    iget-object v6, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const-string v3, "-nostdin"

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const-string v3, "-loglevel"

    const/4 v10, 0x2

    aput-object v3, v7, v10

    const-string v3, "error"

    const/4 v11, 0x3

    aput-object v3, v7, v11

    const-string v3, "-y"

    const/4 v12, 0x4

    aput-object v3, v7, v12

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "-rw_timeout"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "3000000"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v7, "-ss"

    aput-object v7, v3, v8

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "%.3f"

    new-array v14, v9, [Ljava/lang/Object;

    move-wide/from16 v11, p2

    long-to-double v11, v11

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v14, v8

    invoke-static {v7, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    const-string v7, "-i"

    aput-object v7, v3, v10

    const/4 v7, 0x3

    aput-object v0, v3, v7

    const-string v0, "-frames:v"

    const/4 v7, 0x4

    aput-object v0, v3, v7

    const-string v0, "1"

    aput-object v0, v3, v6

    const-string v0, "-vf"

    const/4 v6, 0x6

    aput-object v0, v3, v6

    const-string v0, "scale=240:135:force_original_aspect_ratio=decrease"

    const/4 v6, 0x7

    aput-object v0, v3, v6

    const-string v0, "-f"

    const/16 v6, 0x8

    aput-object v0, v3, v6

    const-string v0, "image2"

    const/16 v6, 0x9

    aput-object v0, v3, v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    aput-object v0, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, v5}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iput-object v3, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3}, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x6

    invoke-interface {v5, v0, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_4
    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_8
    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_9
    if-eqz v4, :cond_d

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_a

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_1
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v5, v2

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v5, v3

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_2
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_b
    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->frameProcess:Ljava/lang/Process;

    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_c
    if-eqz v4, :cond_d

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_d
    return-object v2
.end method

.method findType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->findType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method hide()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method hook()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const-string v1, "player_playback_seek_bar"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Download94;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    if-eq v0, v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda3;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method label(J)Ljava/lang/String;
    .locals 4

    .line 26
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "%02d:%02d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$hook$0$com-shabakaty-cinemana-ca1-Player94$State(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubCancelled:Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubCancelled:Z

    :cond_1
    return v0
.end method

.method synthetic lambda$new$4$com-shabakaty-cinemana-ca1-Player94$State()V
    .locals 4

    .line 35
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->displayedBucket:J

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepareNeighbours(J)V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepare(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$prepare$1$com-shabakaty-cinemana-ca1-Player94$State(Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)V
    .locals 3

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    invoke-virtual/range {p0 .. p5}, Lcom/shabakaty/cinemana/ca1/Player94$State;->storeFrame(Ljava/lang/String;JLandroid/graphics/Bitmap;I)V

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    if-eq p5, v1, :cond_2

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    if-nez p6, :cond_4

    iget-object p5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second="

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v1

    invoke-virtual {p6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, " frame="

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, " network="

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p6, "preview_result"

    invoke-static {p5, p6, p1}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-wide p5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {p5, p6}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p5

    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p1

    cmp-long p3, p5, p1

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    goto :goto_0

    :cond_6
    const-string p1, "C"

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepareNeighbours(J)V

    :cond_7
    :goto_1
    return-void
.end method

.method synthetic lambda$prepare$2$com-shabakaty-cinemana-ca1-Player94$State(Ljava/lang/String;JIZ)V
    .locals 9

    .line 32
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->source()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v2, p1

    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/shabakaty/cinemana/ca1/Player94$State;->readFrame(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)V

    invoke-virtual {p1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method player()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getPlayer"

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method pos(Ljava/lang/String;)J
    .locals 2

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->player()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method prefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const-string v1, "ca1_94"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method prepare(JZ)V
    .locals 9

    .line 32
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepareNeighbours(J)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    iget v6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->frames:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda2;

    move-object v1, v8

    move-object v2, p0

    move-wide v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda2;-><init>(Lcom/shabakaty/cinemana/ca1/Player94$State;Ljava/lang/String;JIZ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method prepareNeighbours(J)V
    .locals 11

    .line 33
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "X"

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    filled-new-array {v4, v5, v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    aget v5, v2, v3

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v5, p1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0, v5, v6, v4}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepare(JZ)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method readFrame(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Remote98;->frame(Ljava/lang/Object;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->readerPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->closeReader()V

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->readerPath:Ljava/lang/String;

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    const-wide/16 v3, 0x3e8

    if-lt v1, v2, :cond_3

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    mul-long v6, p2, v3

    const/4 v8, 0x3

    const/16 v9, 0xf0

    const/16 v10, 0x87

    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->retriever:Landroid/media/MediaMetadataRetriever;

    mul-long v3, v3, p2

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v4, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const/16 v2, 0x87

    const/4 v3, 0x1

    const/16 v4, 0xf0

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->closeReader()V

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    if-ne p4, v1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Player94$State;->ffmpeg(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method show(J)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->syncIdentity()V

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->label(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->anchor(J)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->displayedBucket:J

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->label(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u062c\u0627\u0631\u064d \u062a\u062c\u0647\u064a\u0632 \u0645\u0639\u0627\u064a\u0646\u0629 "

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->label(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->requestedSecond:J

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->requestedSecond:J

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->load:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method source()Ljava/lang/String;
    .locals 8

    .line 23
    const-string v0, "https://"

    const-string v1, "url"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const-string v4, "getVideoModel"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    const-string v3, "nb"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "h"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "readCombinedById"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const/4 v4, 0x1

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Delete94;->ex(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "cinemanaDownloadItem"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "path"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Delete94;->resolve(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    :cond_2
    :try_start_1
    const-string v3, "wantedQuality"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "http://"

    if-nez v4, :cond_3

    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_5

    :cond_4
    return-object v3

    :catch_1
    move-exception v0

    :cond_5
    const-string v0, ""

    return-object v0
.end method

.method storeFrame(Ljava/lang/String;JLandroid/graphics/Bitmap;I)V
    .locals 4

    .line 30
    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    if-nez p4, :cond_1

    return-void

    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, ":"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p5, p1, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    if-eq p1, p4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->latest:J

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->displayedBucket:J

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/cinemana/ca1/Player94$State;->label(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->time:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/cinemana/ca1/Player94$State;->label(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/cinemana/ca1/Player94$State;->anchor(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 p2, 0x30

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-void
.end method

.method syncIdentity()V
    .locals 3

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const-string v1, "getVideoModel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nb"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->identity:Ljava/lang/String;

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->generation:I

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->source:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->requestedSecond:J

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->displayedBucket:J

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void
.end method

.method touch(Landroid/view/MotionEvent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    const-string v0, "a"

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Drawer105;->visible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->captured:Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hide()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "swipe"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dy:F

    const-string v0, "C"

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->start:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->down:J

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->multi:Z

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->captured:Z

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dx:F

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dy:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->controls(Landroid/view/View;FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->blocked:Z

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v4, :cond_4

    iput-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->multi:Z

    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hide()V

    :cond_3
    return v1

    :cond_4
    iget-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->multi:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->blocked:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubbing:Z

    if-eqz v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x2

    const/4 v5, 0x3

    if-ne v2, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dx:F

    sub-float v8, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->dy:F

    sub-float/2addr v2, v3

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    if-nez v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v9, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->down:J

    sub-long/2addr v6, v9

    const-wide/16 v9, 0x4b0

    cmp-long v3, v6, v9

    if-gtz v3, :cond_7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Download94;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v2, v2, v6

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    iput-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->captured:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const-string v3, "r"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    const-string v2, "restoreSpeedIfNeeded"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    throw v0

    :cond_7
    :goto_0
    return v1

    :cond_8
    :goto_1
    const-string p1, "X"

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide v11

    iget-wide v6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->start:J

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->view:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "sensitivity"

    const/16 v1, 0x3c

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static/range {v6 .. v12}, Lcom/shabakaty/cinemana/ca1/SeekGesture95;->target(JFIIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->target:J

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->show(J)V

    return v4

    :cond_9
    if-eq v2, v4, :cond_a

    if-ne v2, v5, :cond_c

    :cond_a
    iget-boolean p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->drag:Z

    if-ne v2, v4, :cond_b

    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->player()Ljava/lang/Object;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->target:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "q"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->target:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "player_gesture_seek"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hide()V

    return v4

    :cond_c
    :goto_2
    return v1
.end method
