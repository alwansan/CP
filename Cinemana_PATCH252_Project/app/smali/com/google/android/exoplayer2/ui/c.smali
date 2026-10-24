.class public Lcom/google/android/exoplayer2/ui/c;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/c$b;,
        Lcom/google/android/exoplayer2/ui/c$c;,
        Lcom/google/android/exoplayer2/ui/c$d;,
        Lcom/google/android/exoplayer2/ui/c$e;
    }
.end annotation


# instance fields
.field public final A:Landroid/widget/ImageView;

.field public final B:Landroid/view/View;

.field public final C:Landroid/widget/TextView;

.field public final D:Landroid/widget/TextView;

.field public final E:Lcom/google/android/exoplayer2/ui/e;

.field public final F:Ljava/lang/StringBuilder;

.field public final G:Ljava/util/Formatter;

.field public final H:Lcom/shabakaty/downloader/nn4$b;

.field public final I:Lcom/shabakaty/downloader/nn4$c;

.field public final J:Ljava/lang/Runnable;

.field public final K:Ljava/lang/Runnable;

.field public final L:Landroid/graphics/drawable/Drawable;

.field public final M:Landroid/graphics/drawable/Drawable;

.field public final N:Landroid/graphics/drawable/Drawable;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/lang/String;

.field public final R:Landroid/graphics/drawable/Drawable;

.field public final S:Landroid/graphics/drawable/Drawable;

.field public final T:F

.field public final U:F

.field public final V:Ljava/lang/String;

.field public final W:Ljava/lang/String;

.field public a0:Lcom/shabakaty/downloader/bd3;

.field public b0:Lcom/shabakaty/downloader/be0;

.field public c0:Lcom/google/android/exoplayer2/ui/c$d;

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:J

.field public q0:[J

.field public final r:Lcom/google/android/exoplayer2/ui/c$c;

.field public r0:[Z

.field public final s:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/c$e;",
            ">;"
        }
    .end annotation
.end field

.field public s0:[J

.field public final t:Landroid/view/View;

.field public t0:[Z

.field public final u:Landroid/view/View;

.field public u0:J

.field public final v:Landroid/view/View;

.field public v0:J

.field public final w:Landroid/view/View;

.field public w0:J

.field public final x:Landroid/view/View;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 5

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    const/16 v1, 0xc8

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/ui/c;->i0:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/c;->p0:J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->k0:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->l0:Z

    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->m0:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->n0:Z

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    const v2, 0x7f0d005b

    if-eqz p4, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/vl3;->c:[I

    .line 12
    invoke-virtual {v3, p4, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/16 v3, 0x13

    .line 13
    :try_start_0
    iget v4, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    const/4 v3, 0x5

    .line 14
    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 15
    iget v3, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    const/16 v4, 0x8

    .line 16
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 17
    iput v3, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    const/16 v3, 0x11

    .line 18
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/c;->k0:Z

    .line 19
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/c;->k0:Z

    const/16 v3, 0xe

    .line 20
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/c;->l0:Z

    .line 21
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/c;->l0:Z

    const/16 v3, 0x10

    .line 22
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/c;->m0:Z

    .line 23
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/c;->m0:Z

    const/16 v3, 0xf

    .line 24
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/c;->n0:Z

    .line 25
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/c;->n0:Z

    const/16 v3, 0x12

    .line 26
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    .line 27
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    const/16 v3, 0x14

    .line 28
    iget v4, p0, Lcom/google/android/exoplayer2/ui/c;->i0:I

    .line 29
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 30
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/ui/c;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p1

    .line 33
    :cond_0
    :goto_0
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance p3, Lcom/shabakaty/downloader/nn4$b;

    invoke-direct {p3}, Lcom/shabakaty/downloader/nn4$b;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    .line 35
    new-instance p3, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {p3}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->I:Lcom/shabakaty/downloader/nn4$c;

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->F:Ljava/lang/StringBuilder;

    .line 37
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->G:Ljava/util/Formatter;

    new-array p3, v0, [J

    .line 38
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    new-array p3, v0, [Z

    .line 39
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    new-array p3, v0, [J

    .line 40
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->s0:[J

    new-array p3, v0, [Z

    .line 41
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->t0:[Z

    .line 42
    new-instance p3, Lcom/google/android/exoplayer2/ui/c$c;

    invoke-direct {p3, p0, p2}, Lcom/google/android/exoplayer2/ui/c$c;-><init>(Lcom/google/android/exoplayer2/ui/c;Lcom/google/android/exoplayer2/ui/c$a;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/c;->r:Lcom/google/android/exoplayer2/ui/c$c;

    .line 43
    new-instance v3, Lcom/shabakaty/downloader/pn0;

    invoke-direct {v3}, Lcom/shabakaty/downloader/pn0;-><init>()V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    .line 44
    new-instance v3, Lcom/shabakaty/downloader/td3;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/td3;-><init>(Lcom/google/android/exoplayer2/ui/c;I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    .line 45
    new-instance v3, Lcom/shabakaty/downloader/td3;

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/downloader/td3;-><init>(Lcom/google/android/exoplayer2/ui/c;I)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v1, 0x40000

    .line 47
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    const v1, 0x7f0a01a5

    .line 48
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/e;

    const v3, 0x7f0a01a6

    .line 49
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 50
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 51
    new-instance v2, Lcom/google/android/exoplayer2/ui/b;

    invoke-direct {v2, p1, p2, v0, p4}, Lcom/google/android/exoplayer2/ui/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    .line 56
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p2, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 58
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    goto :goto_1

    .line 59
    :cond_2
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    :goto_1
    const p2, 0x7f0a018f

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->C:Landroid/widget/TextView;

    const p2, 0x7f0a01a3

    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->D:Landroid/widget/TextView;

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    if-eqz p2, :cond_3

    .line 63
    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/ui/e;->b(Lcom/google/android/exoplayer2/ui/e$a;)V

    :cond_3
    const p2, 0x7f0a019f

    .line 64
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p2, 0x7f0a019e

    .line 66
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const p2, 0x7f0a01a4

    .line 68
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->t:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const p2, 0x7f0a019a

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->u:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const p2, 0x7f0a01a8

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->y:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 73
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const p2, 0x7f0a0193

    .line 74
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->x:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const p2, 0x7f0a01a7

    .line 76
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 77
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const p2, 0x7f0a01ac

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const p2, 0x7f0a01b4

    .line 80
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->B:Landroid/view/View;

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/c;->setShowVrButton(Z)V

    .line 82
    invoke-virtual {p0, v0, v0, p2}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b000f

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/c;->T:F

    const p2, 0x7f0b000e

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/c;->U:F

    const p2, 0x7f0800ee

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->L:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800ef

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->M:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800ed

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->N:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800f2

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->R:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0800f1

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->S:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f1200fe

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->O:Ljava/lang/String;

    const p2, 0x7f1200ff

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->P:Ljava/lang/String;

    const p2, 0x7f1200fd

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->Q:Ljava/lang/String;

    const p2, 0x7f120105

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/c;->V:Ljava/lang/String;

    const p2, 0x7f120104

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/16 v3, 0x58

    const/16 v4, 0x57

    const/16 v5, 0x7f

    const/16 v6, 0x7e

    const/16 v7, 0x4f

    const/16 v8, 0x55

    const/16 v9, 0x59

    const/16 v10, 0x5a

    const/4 v11, 0x1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    if-nez v12, :cond_2

    goto/16 :goto_4

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x4

    if-ne v0, v10, :cond_3

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result p1

    if-eq p1, v12, :cond_c

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->Q()V

    goto/16 :goto_3

    :cond_3
    if-ne v0, v9, :cond_4

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->T()V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_c

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/bd3;->z(Z)V

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/c;->b(Lcom/shabakaty/downloader/bd3;)V

    goto :goto_3

    .line 13
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->x()V

    goto :goto_3

    .line 15
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->P()V

    goto :goto_3

    .line 17
    :cond_9
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result p1

    if-eq p1, v11, :cond_b

    if-eq p1, v12, :cond_b

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->f()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/bd3;->z(Z)V

    goto :goto_3

    .line 21
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/c;->b(Lcom/shabakaty/downloader/bd3;)V

    :cond_c
    :goto_3
    return v11

    :cond_d
    :goto_4
    return v2
.end method

.method public final b(Lcom/shabakaty/downloader/bd3;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast v0, Lcom/shabakaty/downloader/pn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->g()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast v4, Lcom/shabakaty/downloader/pn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1, v0, v2, v3}, Lcom/shabakaty/downloader/bd3;->d(IJ)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    check-cast v0, Lcom/shabakaty/downloader/pn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/bd3;->z(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/c$e;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/c$e;->e(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/c;->p0:J

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/c;->p0:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/c;->p0:J

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->d()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->h()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getPlayer()Lcom/shabakaty/downloader/bd3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->l()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->n()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->o()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->p()V

    return-void
.end method

.method public final j(ZZLandroid/view/View;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Lcom/google/android/exoplayer2/ui/c;->T:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/ui/c;->U:F

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 3
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 3
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/bd3;->G(I)Z

    move-result v2

    const/4 v3, 0x6

    .line 4
    invoke-interface {v0, v3}, Lcom/shabakaty/downloader/bd3;->G(I)Z

    move-result v3

    const/16 v4, 0xa

    .line 5
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/bd3;->G(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0xb

    .line 6
    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/bd3;->G(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_2
    const/16 v5, 0x8

    .line 8
    invoke-interface {v0, v5}, Lcom/shabakaty/downloader/bd3;->G(I)Z

    move-result v0

    move v7, v2

    move v2, v0

    move v0, v1

    move v1, v3

    move v3, v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ui/c;->m0:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->t:Landroid/view/View;

    invoke-virtual {p0, v5, v1, v6}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 10
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->k0:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/c;->y:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 11
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c;->l0:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/c;->x:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 12
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->n0:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->u:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/ui/e;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->h()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    const/16 v2, 0x8

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v5

    .line 5
    sget v6, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v6, v3, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    invoke-static {v6}, Lcom/google/android/exoplayer2/ui/c$b;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v6, v5

    .line 7
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/c;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v8, 0x8

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    if-eqz v7, :cond_a

    if-nez v0, :cond_6

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    or-int/2addr v1, v7

    .line 10
    sget v7, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v7, v3, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/c$b;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    or-int/2addr v6, v4

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->w:Landroid/view/View;

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v1, :cond_b

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->g()V

    :cond_b
    if-eqz v6, :cond_c

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->f()V

    :cond_c
    :goto_6
    return-void
.end method

.method public final m()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/c;->u0:J

    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->C()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/c;->u0:J

    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->O()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-wide v5, p0, Lcom/google/android/exoplayer2/ui/c;->v0:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v1, v5

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 6
    :goto_1
    iget-wide v9, p0, Lcom/google/android/exoplayer2/ui/c;->w0:J

    cmp-long v6, v3, v9

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    .line 7
    :cond_3
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ui/c;->v0:J

    .line 8
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ui/c;->w0:J

    .line 9
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->D:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ui/c;->g0:Z

    if-nez v9, :cond_4

    if-eqz v5, :cond_4

    .line 10
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/c;->F:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ui/c;->G:Ljava/util/Formatter;

    invoke-static {v9, v10, v1, v2}, Lcom/shabakaty/downloader/sy4;->A(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    if-eqz v6, :cond_5

    .line 12
    invoke-interface {v6, v1, v2}, Lcom/google/android/exoplayer2/ui/e;->setPosition(J)V

    .line 13
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    invoke-interface {v6, v3, v4}, Lcom/google/android/exoplayer2/ui/e;->setBufferedPosition(J)V

    .line 14
    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c;->c0:Lcom/google/android/exoplayer2/ui/c$d;

    if-eqz v6, :cond_7

    if-nez v5, :cond_6

    if-eqz v7, :cond_7

    .line 15
    :cond_6
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/c$d;->a(JJ)V

    .line 16
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    .line 17
    :cond_8
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->h()I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_b

    .line 18
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->D()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/e;->getPreferredUpdateDelay()J

    move-result-wide v6

    goto :goto_3

    :cond_9
    move-wide v6, v4

    .line 20
    :goto_3
    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    .line 21
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 22
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->c()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    iget v0, v0, Lcom/shabakaty/downloader/ad3;->a:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_a

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v4, v1

    :cond_a
    move-wide v6, v4

    .line 23
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c;->i0:I

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    invoke-static/range {v6 .. v11}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_b
    const/4 v0, 0x4

    if-eq v3, v0, :cond_c

    if-eq v3, v8, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->w()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v2, v2, v0}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->N()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->R:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->S:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->A:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->V:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->W:Ljava/lang/String;

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/c;->p0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->c()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->d()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->i()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c;->d0:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/c;->e0:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/c;->I:Lcom/shabakaty/downloader/nn4$c;

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 6
    invoke-virtual {v2, v9, v7}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object v10

    iget-wide v10, v10, Lcom/shabakaty/downloader/nn4$c;->n:J

    cmp-long v12, v10, v3

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/c;->f0:Z

    const-wide/16 v7, 0x0

    .line 8
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ui/c;->u0:J

    .line 9
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->L()Lcom/shabakaty/downloader/nn4;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->q()Z

    move-result v9

    if-nez v9, :cond_11

    .line 11
    invoke-interface {v1}, Lcom/shabakaty/downloader/bd3;->t()I

    move-result v1

    .line 12
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/ui/c;->f0:Z

    if-eqz v9, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/nn4;->p()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_5

    :cond_6
    move v9, v1

    :goto_5
    move-wide v11, v7

    const/4 v13, 0x0

    :goto_6
    if-gt v10, v9, :cond_10

    if-ne v10, v1, :cond_7

    .line 14
    invoke-static {v11, v12}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/ui/c;->u0:J

    .line 15
    :cond_7
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/c;->I:Lcom/shabakaty/downloader/nn4$c;

    invoke-virtual {v2, v10, v14}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    .line 16
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/c;->I:Lcom/shabakaty/downloader/nn4$c;

    iget-wide v7, v14, Lcom/shabakaty/downloader/nn4$c;->n:J

    cmp-long v17, v7, v3

    if-nez v17, :cond_8

    .line 17
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/c;->f0:Z

    xor-int/2addr v1, v6

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    goto/16 :goto_c

    .line 18
    :cond_8
    iget v7, v14, Lcom/shabakaty/downloader/nn4$c;->o:I

    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/c;->I:Lcom/shabakaty/downloader/nn4$c;

    iget v14, v8, Lcom/shabakaty/downloader/nn4$c;->p:I

    if-gt v7, v14, :cond_f

    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v2, v7, v8}, Lcom/shabakaty/downloader/nn4;->f(ILcom/shabakaty/downloader/nn4$b;)Lcom/shabakaty/downloader/nn4$b;

    .line 20
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    .line 21
    iget-object v8, v8, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    iget v14, v8, Lcom/shabakaty/downloader/k4;->e:I

    .line 22
    iget v8, v8, Lcom/shabakaty/downloader/k4;->b:I

    :goto_8
    if-ge v14, v8, :cond_e

    .line 23
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    invoke-virtual {v15, v14}, Lcom/shabakaty/downloader/nn4$b;->c(I)J

    move-result-wide v15

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v20, v15, v18

    if-nez v20, :cond_a

    .line 24
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    iget-wide v5, v15, Lcom/shabakaty/downloader/nn4$b;->d:J

    cmp-long v15, v5, v3

    if-nez v15, :cond_9

    const-wide/16 v5, 0x0

    goto :goto_a

    :cond_9
    move-wide v15, v5

    .line 25
    :cond_a
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    .line 26
    iget-wide v5, v5, Lcom/shabakaty/downloader/nn4$b;->e:J

    add-long/2addr v15, v5

    const-wide/16 v5, 0x0

    cmp-long v17, v15, v5

    if-ltz v17, :cond_d

    .line 27
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    array-length v4, v3

    if-ne v13, v4, :cond_c

    .line 28
    array-length v4, v3

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 29
    :goto_9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    .line 30
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    .line 31
    :cond_c
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    add-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v15

    aput-wide v15, v3, v13

    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c;->H:Lcom/shabakaty/downloader/nn4$b;

    .line 33
    iget-object v4, v4, Lcom/shabakaty/downloader/nn4$b;->g:Lcom/shabakaty/downloader/k4;

    invoke-virtual {v4, v14}, Lcom/shabakaty/downloader/k4;->a(I)Lcom/shabakaty/downloader/k4$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/k4$a;->b()Z

    move-result v4

    const/4 v15, 0x1

    xor-int/2addr v4, v15

    .line 34
    aput-boolean v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    goto :goto_8

    :cond_e
    const-wide/16 v5, 0x0

    const/4 v15, 0x1

    add-int/lit8 v7, v7, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_f
    const-wide/16 v5, 0x0

    const/4 v15, 0x1

    .line 35
    iget-wide v3, v8, Lcom/shabakaty/downloader/nn4$c;->n:J

    add-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    move-wide v7, v5

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_10
    :goto_c
    move-wide v7, v11

    goto :goto_d

    :cond_11
    move-wide v5, v7

    const/4 v13, 0x0

    .line 36
    :goto_d
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v1

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->C:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    .line 38
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c;->F:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/c;->G:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/shabakaty/downloader/sy4;->A(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_12
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    if-eqz v3, :cond_14

    .line 40
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/e;->setDuration(J)V

    .line 41
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c;->s0:[J

    array-length v1, v1

    add-int v2, v13, v1

    .line 42
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    array-length v4, v3

    if-le v2, v4, :cond_13

    .line 43
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    .line 44
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    .line 45
    :cond_13
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->s0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->t0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c;->E:Lcom/google/android/exoplayer2/ui/e;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c;->q0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c;->r0:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/e;->a([J[ZI)V

    .line 48
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/c;->m()V

    return-void
.end method

.method public setControlDispatcher(Lcom/shabakaty/downloader/be0;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    :cond_0
    return-void
.end method

.method public setPlayer(Lcom/shabakaty/downloader/bd3;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/bd3;->M()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->r:Lcom/google/android/exoplayer2/ui/c$c;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/bd3;->s(Lcom/shabakaty/downloader/bd3$e;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->r:Lcom/google/android/exoplayer2/ui/c$c;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3;->B(Lcom/shabakaty/downloader/bd3$e;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->i()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->c0:Lcom/google/android/exoplayer2/ui/c$d;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/c;->j0:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->w()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    const/4 v1, 0x0

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/bd3;->v(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/bd3;->v(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c;->b0:Lcom/shabakaty/downloader/be0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->a0:Lcom/shabakaty/downloader/bd3;

    check-cast p1, Lcom/shabakaty/downloader/pn0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/bd3;->v(I)V

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->n()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->l0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->e0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->p()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->n0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->m0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->k0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->k()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c;->o0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->o()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/c;->h0:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->d()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/sy4;->i(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/c;->i0:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c;->getShowVrButton()Z

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c;->B:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/ui/c;->j(ZZLandroid/view/View;)V

    :cond_1
    return-void
.end method
