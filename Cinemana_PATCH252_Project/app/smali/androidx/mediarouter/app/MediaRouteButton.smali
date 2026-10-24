.class public Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteButton$a;,
        Landroidx/mediarouter/app/MediaRouteButton$c;,
        Landroidx/mediarouter/app/MediaRouteButton$b;
    }
.end annotation


# static fields
.field public static G:Landroidx/mediarouter/app/MediaRouteButton$a;

.field public static final H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final I:[I

.field public static final J:[I


# instance fields
.field public A:I

.field public B:Landroid/content/res/ColorStateList;

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public final r:Landroidx/mediarouter/media/g;

.field public final s:Landroidx/mediarouter/app/MediaRouteButton$b;

.field public t:Landroidx/mediarouter/media/f;

.field public u:Lcom/shabakaty/downloader/aq2;

.field public v:Z

.field public w:I

.field public x:Landroidx/mediarouter/app/MediaRouteButton$c;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->H:Landroid/util/SparseArray;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Landroidx/mediarouter/app/MediaRouteButton;->I:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 3
    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->J:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Landroidx/mediarouter/app/h;->g(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f040312

    .line 2
    invoke-static {v0, p1}, Landroidx/mediarouter/app/h;->i(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    const p1, 0x7f040306

    .line 4
    invoke-direct {p0, v0, p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget-object v0, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/aq2;->a:Lcom/shabakaty/downloader/aq2;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->u:Lcom/shabakaty/downloader/aq2;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->w:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/km3;->a:[I

    invoke-virtual {v8, p2, v3, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v7, 0x0

    const v6, 0x7f040306

    move-object v1, p0

    move-object v2, v8

    move-object v4, p2

    move-object v5, p1

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/c35;->t(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    .line 13
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 16
    :cond_1
    invoke-static {v8}, Landroidx/mediarouter/media/g;->d(Landroid/content/Context;)Landroidx/mediarouter/media/g;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    .line 17
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteButton$b;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    .line 18
    sget-object p2, Landroidx/mediarouter/app/MediaRouteButton;->G:Landroidx/mediarouter/app/MediaRouteButton$a;

    if-nez p2, :cond_2

    .line 19
    new-instance p2, Landroidx/mediarouter/app/MediaRouteButton$a;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/mediarouter/app/MediaRouteButton$a;-><init>(Landroid/content/Context;)V

    sput-object p2, Landroidx/mediarouter/app/MediaRouteButton;->G:Landroidx/mediarouter/app/MediaRouteButton$a;

    :cond_2
    const/4 p2, 0x4

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->B:Landroid/content/res/ColorStateList;

    .line 21
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/MediaRouteButton;->C:I

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->D:I

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x2

    .line 24
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    if-eqz p1, :cond_3

    .line 27
    sget-object v2, Landroidx/mediarouter/app/MediaRouteButton;->H:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    .line 31
    sget-object p1, Landroidx/mediarouter/app/MediaRouteButton;->H:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 34
    :cond_4
    new-instance p1, Landroidx/mediarouter/app/MediaRouteButton$c;

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Landroidx/mediarouter/app/MediaRouteButton$c;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->x:Landroidx/mediarouter/app/MediaRouteButton$c;

    .line 36
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 38
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    .line 39
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFragmentManager()Landroidx/fragment/app/q;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/ji1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/ji1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->x:Landroidx/mediarouter/app/MediaRouteButton$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$c;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteButton$c;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->x:Landroidx/mediarouter/app/MediaRouteButton$c;

    .line 6
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    .line 7
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    invoke-virtual {v0}, Landroidx/mediarouter/media/g;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$h;->e()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g$h;->i(Landroidx/mediarouter/media/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v0, v0, Landroidx/mediarouter/media/g$h;->h:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->A:I

    if-eq v1, v0, :cond_2

    .line 5
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->A:I

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_3
    if-ne v0, v3, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 9
    :cond_4
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    if-eqz v4, :cond_7

    .line 10
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->E:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v4, v5, v3}, Landroidx/mediarouter/media/g;->h(Landroidx/mediarouter/media/f;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    :cond_7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    .line 12
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_b

    .line 13
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 14
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    if-eqz v4, :cond_9

    if-nez v1, :cond_8

    if-ne v0, v3, :cond_b

    .line 15
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 19
    :cond_a
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_b
    :goto_3
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->w:I

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->E:Z

    if-nez v1, :cond_0

    sget-object v1, Landroidx/mediarouter/app/MediaRouteButton;->G:Landroidx/mediarouter/app/MediaRouteButton$a;

    .line 2
    iget-boolean v1, v1, Landroidx/mediarouter/app/MediaRouteButton$a;->b:Z

    if-nez v1, :cond_0

    const/4 v0, 0x4

    .line 3
    :cond_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 4
    sget-object v0, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteButton;->e(I)Z

    move-result v0

    return v0
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final e(I)Z
    .locals 11

    .line 1
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteButton;->getFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    invoke-virtual {v1}, Landroidx/mediarouter/media/g;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroidx/mediarouter/media/g$h;->e()Z

    move-result v2

    const-string v3, "This must be called before creating dialog"

    const-string v4, "MediaRouteButton"

    const/4 v5, 0x2

    const-string v6, "selector"

    const-string v7, "selector must not be null"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/g$h;->i(Landroidx/mediarouter/media/f;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string p1, "showDialog(): Route controller dialog already showing!"

    .line 5
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 6
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->u:Lcom/shabakaty/downloader/aq2;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/shabakaty/downloader/zp2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/zp2;-><init>()V

    .line 9
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    if-eqz v4, :cond_8

    .line 10
    iget-object v7, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    if-nez v7, :cond_3

    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object v7

    iput-object v7, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    .line 13
    :cond_2
    iget-object v7, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    if-nez v7, :cond_3

    .line 14
    sget-object v7, Landroidx/mediarouter/media/f;->c:Landroidx/mediarouter/media/f;

    iput-object v7, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    .line 15
    :cond_3
    iget-object v7, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    invoke-virtual {v7, v4}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 16
    iput-object v4, v2, Lcom/shabakaty/downloader/zp2;->J:Landroidx/mediarouter/media/f;

    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_4

    .line 18
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 19
    :cond_4
    iget-object v10, v4, Landroidx/mediarouter/media/f;->a:Landroid/os/Bundle;

    .line 20
    invoke-virtual {v7, v6, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {v2, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    iget-object v6, v2, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    if-eqz v6, :cond_5

    .line 23
    iget-boolean v7, v2, Lcom/shabakaty/downloader/zp2;->H:Z

    if-eqz v7, :cond_5

    .line 24
    check-cast v6, Landroidx/mediarouter/app/e;

    invoke-virtual {v6, v4}, Landroidx/mediarouter/app/e;->f(Landroidx/mediarouter/media/f;)V

    :cond_5
    if-ne p1, v5, :cond_7

    .line 25
    iget-object p1, v2, Lcom/shabakaty/downloader/zp2;->I:Landroid/app/Dialog;

    if-nez p1, :cond_6

    .line 26
    iput-boolean v9, v2, Lcom/shabakaty/downloader/zp2;->H:Z

    goto :goto_0

    .line 27
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_7
    :goto_0
    new-instance p1, Landroidx/fragment/app/a;

    invoke-direct {p1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 29
    invoke-virtual {p1, v8, v2, v1, v9}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/a;->i()I

    goto :goto_4

    .line 31
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_1
    const-string v1, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 32
    invoke-virtual {v0, v1}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string p1, "showDialog(): Route chooser dialog already showing!"

    .line 33
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 34
    :cond_a
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->u:Lcom/shabakaty/downloader/aq2;

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v2, Lcom/shabakaty/downloader/wp2;

    invoke-direct {v2}, Lcom/shabakaty/downloader/wp2;-><init>()V

    .line 37
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    if-eqz v4, :cond_10

    .line 38
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wp2;->d2()V

    .line 39
    iget-object v7, v2, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    invoke-virtual {v7, v4}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 40
    iput-object v4, v2, Lcom/shabakaty/downloader/wp2;->J:Landroidx/mediarouter/media/f;

    .line 41
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_b

    .line 42
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 43
    :cond_b
    iget-object v10, v4, Landroidx/mediarouter/media/f;->a:Landroid/os/Bundle;

    .line 44
    invoke-virtual {v7, v6, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {v2, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    iget-object v6, v2, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    if-eqz v6, :cond_d

    .line 47
    iget-boolean v7, v2, Lcom/shabakaty/downloader/wp2;->H:Z

    if-eqz v7, :cond_c

    .line 48
    check-cast v6, Lcom/shabakaty/downloader/dq2;

    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/dq2;->b(Landroidx/mediarouter/media/f;)V

    goto :goto_2

    .line 49
    :cond_c
    check-cast v6, Lcom/shabakaty/downloader/vp2;

    invoke-virtual {v6, v4}, Lcom/shabakaty/downloader/vp2;->b(Landroidx/mediarouter/media/f;)V

    :cond_d
    :goto_2
    if-ne p1, v5, :cond_f

    .line 50
    iget-object p1, v2, Lcom/shabakaty/downloader/wp2;->I:Landroid/app/Dialog;

    if-nez p1, :cond_e

    .line 51
    iput-boolean v9, v2, Lcom/shabakaty/downloader/wp2;->H:Z

    goto :goto_3

    .line 52
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_f
    :goto_3
    new-instance p1, Landroidx/fragment/app/a;

    invoke-direct {p1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 54
    invoke-virtual {p1, v8, v2, v1, v9}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/a;->i()I

    :goto_4
    return v9

    .line 56
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The activity must be a subclass of FragmentActivity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->A:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0x7f12018e

    goto :goto_0

    :cond_0
    const v0, 0x7f12018c

    goto :goto_0

    :cond_1
    const v0, 0x7f12018d

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->F:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/ho4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDialogFactory()Lcom/shabakaty/downloader/aq2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->u:Lcom/shabakaty/downloader/aq2;

    return-object v0
.end method

.method public getRouteSelector()Landroidx/mediarouter/media/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/g;->a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    .line 8
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->G:Landroidx/mediarouter/app/MediaRouteButton$a;

    .line 9
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    :cond_2
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    if-nez v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 4
    sget-object v1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->A:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->I:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->J:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    .line 5
    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->G:Landroidx/mediarouter/app/MediaRouteButton$a;

    .line 6
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 7
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 8
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 9
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    .line 10
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 11
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v1

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 5
    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->C:I

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->D:I

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v5

    .line 10
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->a()V

    .line 4
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->d()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setAlwaysVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->E:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->E:Z

    .line 3
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->c()V

    .line 4
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    :cond_0
    return-void
.end method

.method public setCheatSheetEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->F:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->F:Z

    .line 3
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->f()V

    :cond_0
    return-void
.end method

.method public setDialogFactory(Lcom/shabakaty/downloader/aq2;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->u:Lcom/shabakaty/downloader/aq2;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->z:I

    .line 2
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->x:Landroidx/mediarouter/app/MediaRouteButton$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 6
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->B:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/g01;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->B:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 13
    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 15
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->A:I

    if-ne v1, v0, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/f;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->v:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    invoke-virtual {v0}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->r:Landroidx/mediarouter/media/g;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->s:Landroidx/mediarouter/app/MediaRouteButton$b;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/g;->a(Landroidx/mediarouter/media/f;Landroidx/mediarouter/media/g$b;I)V

    .line 8
    :cond_1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->t:Landroidx/mediarouter/media/f;

    .line 9
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->b()V

    :cond_2
    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->w:I

    .line 2
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->c()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->y:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
