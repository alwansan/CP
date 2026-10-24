.class public Lcom/shabakaty/downloader/aa;
.super Lcom/shabakaty/downloader/z9;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/aa$b;,
        Lcom/shabakaty/downloader/aa$f;,
        Lcom/shabakaty/downloader/aa$h;,
        Lcom/shabakaty/downloader/aa$g;,
        Lcom/shabakaty/downloader/aa$e;,
        Lcom/shabakaty/downloader/aa$i;,
        Lcom/shabakaty/downloader/aa$j;,
        Lcom/shabakaty/downloader/aa$c;,
        Lcom/shabakaty/downloader/aa$k;,
        Lcom/shabakaty/downloader/aa$d;
    }
.end annotation


# static fields
.field public static final q0:Lcom/shabakaty/downloader/m64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m64<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final r0:[I

.field public static final s0:Z

.field public static final t0:Z


# instance fields
.field public A:Landroid/view/MenuInflater;

.field public B:Ljava/lang/CharSequence;

.field public C:Lcom/shabakaty/downloader/dn0;

.field public D:Lcom/shabakaty/downloader/aa$c;

.field public E:Lcom/shabakaty/downloader/aa$k;

.field public F:Lcom/shabakaty/downloader/p2;

.field public G:Landroidx/appcompat/widget/ActionBarContextView;

.field public H:Landroid/widget/PopupWindow;

.field public I:Ljava/lang/Runnable;

.field public J:Lcom/shabakaty/downloader/b45;

.field public K:Z

.field public L:Landroid/view/ViewGroup;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/view/View;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:[Lcom/shabakaty/downloader/aa$j;

.field public X:Lcom/shabakaty/downloader/aa$j;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:I

.field public e0:I

.field public f0:Z

.field public g0:Z

.field public h0:Lcom/shabakaty/downloader/aa$g;

.field public i0:Lcom/shabakaty/downloader/aa$g;

.field public j0:Z

.field public k0:I

.field public final l0:Ljava/lang/Runnable;

.field public m0:Z

.field public n0:Landroid/graphics/Rect;

.field public o0:Landroid/graphics/Rect;

.field public p0:Lcom/shabakaty/downloader/bb;

.field public final u:Ljava/lang/Object;

.field public final v:Landroid/content/Context;

.field public w:Landroid/view/Window;

.field public x:Lcom/shabakaty/downloader/aa$e;

.field public final y:Lcom/shabakaty/downloader/v9;

.field public z:Lcom/shabakaty/downloader/k2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m64;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m64;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/aa;->q0:Lcom/shabakaty/downloader/m64;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/aa;->r0:[I

    .line 3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Lcom/shabakaty/downloader/aa;->s0:Z

    .line 5
    sput-boolean v0, Lcom/shabakaty/downloader/aa;->t0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/shabakaty/downloader/v9;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/z9;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    const/16 v1, -0x64

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/aa;->d0:I

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/aa$a;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/aa$a;-><init>(Lcom/shabakaty/downloader/aa;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/aa;->l0:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/aa;->y:Lcom/shabakaty/downloader/v9;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    .line 8
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    instance-of p3, p1, Lcom/shabakaty/downloader/r9;

    if-eqz p3, :cond_0

    .line 10
    check-cast p1, Lcom/shabakaty/downloader/r9;

    goto :goto_1

    .line 11
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 12
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/r9;->getDelegate()Lcom/shabakaty/downloader/z9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z9;->h()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/aa;->d0:I

    .line 14
    :cond_2
    iget p1, p0, Lcom/shabakaty/downloader/aa;->d0:I

    if-ne p1, v1, :cond_3

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/aa;->q0:Lcom/shabakaty/downloader/m64;

    iget-object p3, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1, p3, v0}, Lcom/shabakaty/downloader/m64;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/shabakaty/downloader/aa;->d0:I

    .line 19
    iget-object p3, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/m64;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/aa;->F(Landroid/view/Window;)V

    .line 21
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/ha;->e()V

    return-void
.end method


# virtual methods
.method public A(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/u65;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->A:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k2;->h()V

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/eo4;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 9
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->B:Ljava/lang/CharSequence;

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    invoke-direct {v0, p1, v1, v2}, Lcom/shabakaty/downloader/eo4;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/eo4;->c:Landroid/view/Window$Callback;

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    .line 16
    :cond_3
    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->l()V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/aa;->e0:I

    return-void
.end method

.method public final C(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->B:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/dn0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k2;->r(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->M:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Lcom/shabakaty/downloader/p2$a;)Lcom/shabakaty/downloader/p2;
    .locals 7

    if-eqz p1, :cond_11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/p2;->c()V

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/aa$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/aa$d;-><init>(Lcom/shabakaty/downloader/aa;Lcom/shabakaty/downloader/p2$a;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k2;->s(Lcom/shabakaty/downloader/p2$a;)Lcom/shabakaty/downloader/p2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->y:Lcom/shabakaty/downloader/v9;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/v9;->onSupportActionModeStarted(Lcom/shabakaty/downloader/p2;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-nez p1, :cond_10

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->M()V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/p2;->c()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->y:Lcom/shabakaty/downloader/v9;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v2, :cond_3

    .line 14
    :try_start_0
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/v9;->onWindowStartingSupportActionMode(Lcom/shabakaty/downloader/p2$a;)Lcom/shabakaty/downloader/p2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    goto/16 :goto_6

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_9

    .line 17
    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->T:Z

    if-eqz p1, :cond_6

    .line 18
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 19
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04000c

    .line 20
    invoke-virtual {v4, v5, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    .line 22
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 24
    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 25
    new-instance v4, Lcom/shabakaty/downloader/sd0;

    iget-object v6, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-direct {v4, v6, v3}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v4}, Lcom/shabakaty/downloader/sd0;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 27
    :cond_5
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 28
    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 29
    invoke-direct {v5, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v5, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x7f04001c

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 32
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/ge3;->b(Landroid/widget/PopupWindow;I)V

    .line 33
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f040006

    invoke-virtual {v5, v6, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 38
    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 39
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    new-instance p1, Lcom/shabakaty/downloader/da;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/da;-><init>(Lcom/shabakaty/downloader/aa;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->I:Ljava/lang/Runnable;

    goto :goto_3

    .line 42
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    const v4, 0x7f0a0047

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_9

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 44
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v4, :cond_7

    .line 45
    invoke-virtual {v4}, Lcom/shabakaty/downloader/k2;->e()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_8

    .line 46
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 47
    :cond_8
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    .line 49
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_e

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->M()V

    .line 51
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 52
    new-instance p1, Lcom/shabakaty/downloader/pb4;

    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-direct {p1, v4, v5, v0, v2}, Lcom/shabakaty/downloader/pb4;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lcom/shabakaty/downloader/p2$a;Z)V

    .line 53
    iget-object v2, p1, Lcom/shabakaty/downloader/pb4;->y:Landroidx/appcompat/view/menu/e;

    .line 54
    iget-object v0, v0, Lcom/shabakaty/downloader/aa$d;->a:Lcom/shabakaty/downloader/p2$a;

    invoke-interface {v0, p1, v2}, Lcom/shabakaty/downloader/p2$a;->b(Lcom/shabakaty/downloader/p2;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pb4;->i()V

    .line 56
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lcom/shabakaty/downloader/p2;)V

    .line 57
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    .line 58
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->Z()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_b

    .line 59
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 60
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/shabakaty/downloader/c35;->b(Landroid/view/View;)Lcom/shabakaty/downloader/b45;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/b45;->a(F)Lcom/shabakaty/downloader/b45;

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    .line 61
    new-instance v0, Lcom/shabakaty/downloader/ea;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ea;-><init>(Lcom/shabakaty/downloader/aa;)V

    .line 62
    iget-object v1, p1, Lcom/shabakaty/downloader/b45;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_c

    .line 63
    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/b45;->e(Landroid/view/View;Lcom/shabakaty/downloader/d45;)V

    goto :goto_5

    .line 64
    :cond_b
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 65
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 67
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_c

    .line 68
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 70
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->H:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_e

    .line 71
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 72
    :cond_d
    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    .line 73
    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->y:Lcom/shabakaty/downloader/v9;

    if-eqz v0, :cond_f

    .line 74
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/v9;->onSupportActionModeStarted(Lcom/shabakaty/downloader/p2;)V

    .line 75
    :cond_f
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    .line 76
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    .line 77
    :cond_10
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    return-object p1

    .line 78
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(Z)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/aa;->d0:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget v0, Lcom/shabakaty/downloader/z9;->r:I

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/shabakaty/downloader/aa;->V(Landroid/content/Context;I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v3, v2, v4}, Lcom/shabakaty/downloader/aa;->J(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 7
    iget-boolean v5, p0, Lcom/shabakaty/downloader/aa;->g0:Z

    const/16 v6, 0x18

    const/4 v7, 0x1

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_4

    .line 9
    :cond_2
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_3

    const/high16 v8, 0x100c0000

    goto :goto_1

    :cond_3
    if-lt v8, v6, :cond_4

    const/high16 v8, 0xc0000

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 10
    :goto_1
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    iget-object v11, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    .line 11
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 13
    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/shabakaty/downloader/aa;->f0:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string v8, "AppCompatDelegate"

    const-string v9, "Exception while getting ActivityInfo"

    .line 14
    invoke-static {v8, v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    iput-boolean v1, p0, Lcom/shabakaty/downloader/aa;->f0:Z

    .line 16
    :cond_6
    :goto_3
    iput-boolean v7, p0, Lcom/shabakaty/downloader/aa;->g0:Z

    .line 17
    iget-boolean v5, p0, Lcom/shabakaty/downloader/aa;->f0:Z

    .line 18
    :goto_4
    iget-object v8, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    .line 19
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v9, 0x1c

    const/16 v10, 0x17

    if-eq v8, v3, :cond_b

    if-eqz p1, :cond_b

    if-nez v5, :cond_b

    .line 20
    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->Z:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/shabakaty/downloader/aa;->s0:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->a0:Z

    if-eqz p1, :cond_b

    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v11, p1, Landroid/app/Activity;

    if-eqz v11, :cond_b

    check-cast p1, Landroid/app/Activity;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_b

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    sget v11, Lcom/shabakaty/downloader/s2;->c:I

    .line 23
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_8

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_5

    :cond_8
    if-gt v11, v10, :cond_9

    .line 25
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance v12, Lcom/shabakaty/downloader/t2;

    invoke-direct {v12, p1}, Lcom/shabakaty/downloader/t2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 27
    :cond_9
    invoke-static {p1}, Lcom/shabakaty/downloader/k3;->b(Landroid/app/Activity;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_a
    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_1c

    if-eq v8, v3, :cond_1c

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    new-instance v8, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, -0x31

    or-int/2addr v3, v11

    iput v3, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 32
    invoke-virtual {p1, v8, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-ge v3, v11, :cond_18

    if-lt v3, v9, :cond_c

    goto/16 :goto_f

    :cond_c
    const-string v9, "mDrawableCache"

    const-string v11, "ResourcesFlusher"

    if-lt v3, v6, :cond_12

    .line 34
    sget-boolean v3, Lcom/shabakaty/downloader/ts3;->h:Z

    if-nez v3, :cond_d

    .line 35
    :try_start_1
    const-class v3, Landroid/content/res/Resources;

    const-string v6, "mResourcesImpl"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/ts3;->g:Ljava/lang/reflect/Field;

    .line 36
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v3

    const-string v6, "Could not retrieve Resources#mResourcesImpl field"

    .line 37
    invoke-static {v11, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_7
    sput-boolean v7, Lcom/shabakaty/downloader/ts3;->h:Z

    .line 39
    :cond_d
    sget-object v3, Lcom/shabakaty/downloader/ts3;->g:Ljava/lang/reflect/Field;

    if-nez v3, :cond_e

    goto/16 :goto_f

    .line 40
    :cond_e
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    const-string v3, "Could not retrieve value from Resources#mResourcesImpl"

    .line 41
    invoke-static {v11, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v4

    :goto_8
    if-nez p1, :cond_f

    goto/16 :goto_f

    .line 42
    :cond_f
    sget-boolean v3, Lcom/shabakaty/downloader/ts3;->b:Z

    if-nez v3, :cond_10

    .line 43
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    .line 44
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v3

    const-string v6, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 45
    invoke-static {v11, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_9
    sput-boolean v7, Lcom/shabakaty/downloader/ts3;->b:Z

    .line 47
    :cond_10
    sget-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_11

    .line 48
    :try_start_4
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception p1

    const-string v3, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 49
    invoke-static {v11, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_a
    if-eqz v4, :cond_18

    .line 50
    invoke-static {v4}, Lcom/shabakaty/downloader/ts3;->a(Ljava/lang/Object;)V

    goto :goto_f

    :cond_12
    const-string v6, "Could not retrieve Resources#mDrawableCache field"

    const-string v12, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v3, v10, :cond_16

    .line 51
    sget-boolean v3, Lcom/shabakaty/downloader/ts3;->b:Z

    if-nez v3, :cond_13

    .line 52
    :try_start_5
    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    .line 53
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v3

    .line 54
    invoke-static {v11, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_b
    sput-boolean v7, Lcom/shabakaty/downloader/ts3;->b:Z

    .line 56
    :cond_13
    sget-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_14

    .line 57
    :try_start_6
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_c

    :catch_6
    move-exception p1

    .line 58
    invoke-static {v11, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_c
    if-nez v4, :cond_15

    goto :goto_f

    .line 59
    :cond_15
    invoke-static {v4}, Lcom/shabakaty/downloader/ts3;->a(Ljava/lang/Object;)V

    goto :goto_f

    .line 60
    :cond_16
    sget-boolean v3, Lcom/shabakaty/downloader/ts3;->b:Z

    if-nez v3, :cond_17

    .line 61
    :try_start_7
    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    .line 62
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception v3

    .line 63
    invoke-static {v11, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_d
    sput-boolean v7, Lcom/shabakaty/downloader/ts3;->b:Z

    .line 65
    :cond_17
    sget-object v3, Lcom/shabakaty/downloader/ts3;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_18

    .line 66
    :try_start_8
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v4, p1

    goto :goto_e

    :catch_8
    move-exception p1

    .line 67
    invoke-static {v11, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    if-eqz v4, :cond_18

    .line 68
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 69
    :cond_18
    :goto_f
    iget p1, p0, Lcom/shabakaty/downloader/aa;->e0:I

    if-eqz p1, :cond_19

    .line 70
    iget-object v3, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->setTheme(I)V

    .line 71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v10, :cond_19

    .line 72
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v3, p0, Lcom/shabakaty/downloader/aa;->e0:I

    invoke-virtual {p1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_19
    if-eqz v5, :cond_1d

    .line 73
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1d

    .line 74
    check-cast p1, Landroid/app/Activity;

    .line 75
    instance-of v3, p1, Lcom/shabakaty/downloader/rh2;

    if-eqz v3, :cond_1b

    .line 76
    move-object v3, p1

    check-cast v3, Lcom/shabakaty/downloader/rh2;

    invoke-interface {v3}, Lcom/shabakaty/downloader/rh2;->getLifecycle()Landroidx/lifecycle/e;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroidx/lifecycle/e;->b()Landroidx/lifecycle/e$c;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/e$c;->u:Landroidx/lifecycle/e$c;

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    if-eqz v1, :cond_1d

    .line 79
    invoke-virtual {p1, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    .line 80
    :cond_1b
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->b0:Z

    if-eqz v1, :cond_1d

    .line 81
    invoke-virtual {p1, v8}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    :cond_1c
    move v7, p1

    :cond_1d
    :goto_10
    if-eqz v7, :cond_1e

    .line 82
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, p1, Lcom/shabakaty/downloader/r9;

    if-eqz v1, :cond_1e

    .line 83
    check-cast p1, Lcom/shabakaty/downloader/r9;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/r9;->onNightModeChanged(I)V

    :cond_1e
    if-nez v0, :cond_1f

    .line 84
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->Q(Landroid/content/Context;)Lcom/shabakaty/downloader/aa$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->e()V

    goto :goto_11

    .line 85
    :cond_1f
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->h0:Lcom/shabakaty/downloader/aa$g;

    if-eqz p1, :cond_20

    .line 86
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->a()V

    :cond_20
    :goto_11
    const/4 p1, 0x3

    if-ne v0, p1, :cond_22

    .line 87
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    if-nez v0, :cond_21

    .line 89
    new-instance v0, Lcom/shabakaty/downloader/aa$f;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/aa$f;-><init>(Lcom/shabakaty/downloader/aa;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    .line 90
    :cond_21
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    .line 91
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->e()V

    goto :goto_12

    .line 92
    :cond_22
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    if-eqz p1, :cond_23

    .line 93
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->a()V

    :cond_23
    :goto_12
    return v7
.end method

.method public final F(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lcom/shabakaty/downloader/aa$e;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/aa$e;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/aa$e;-><init>(Lcom/shabakaty/downloader/aa;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/shabakaty/downloader/aa;->r0:[I

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/wn4;->q(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/shabakaty/downloader/wn4;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/wn4;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G(ILcom/shabakaty/downloader/aa$j;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p2, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    .line 2
    :cond_0
    iget-boolean p2, p2, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 5
    iget-object p2, p2, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public H(Landroidx/appcompat/view/menu/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->V:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/dn0;->j()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/aa;->V:Z

    return-void
.end method

.method public I(Lcom/shabakaty/downloader/aa$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/dn0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->H(Landroidx/appcompat/view/menu/e;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p1, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 7
    iget p2, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lcom/shabakaty/downloader/aa;->G(ILcom/shabakaty/downloader/aa$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/shabakaty/downloader/aa$j;->k:Z

    .line 9
    iput-boolean p2, p1, Lcom/shabakaty/downloader/aa$j;->l:Z

    .line 10
    iput-boolean p2, p1, Lcom/shabakaty/downloader/aa$j;->m:Z

    .line 11
    iput-object v1, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Lcom/shabakaty/downloader/aa$j;->n:Z

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->X:Lcom/shabakaty/downloader/aa$j;

    if-ne p2, p1, :cond_2

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->X:Lcom/shabakaty/downloader/aa$j;

    :cond_2
    return-void
.end method

.method public final J(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 3
    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public K(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Lcom/shabakaty/downloader/ud2$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/shabakaty/downloader/fa;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/ud2;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    .line 11
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 12
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-nez v1, :cond_16

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/shabakaty/downloader/aa;->Y:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 16
    :cond_a
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v1, :cond_c

    .line 18
    invoke-interface {v1}, Lcom/shabakaty/downloader/dn0;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/dn0;->c()Z

    move-result v1

    if-nez v1, :cond_b

    .line 21
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 22
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dn0;->h()Z

    move-result p1

    goto :goto_5

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dn0;->g()Z

    move-result p1

    goto :goto_5

    .line 24
    :cond_c
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Lcom/shabakaty/downloader/aa$j;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    .line 25
    :cond_d
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->k:Z

    if-eqz v1, :cond_f

    .line 26
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->o:Z

    if-eqz v1, :cond_e

    .line 27
    iput-boolean v4, v0, Lcom/shabakaty/downloader/aa$j;->k:Z

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/aa;->W(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 30
    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_16

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 33
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 35
    :cond_12
    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->Y:Z

    .line 36
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->Y:Z

    .line 37
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 38
    iget-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    .line 39
    invoke-virtual {p0, v0, v2}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    goto :goto_8

    .line 40
    :cond_13
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->F:Lcom/shabakaty/downloader/p2;

    if-eqz p1, :cond_14

    .line 41
    invoke-virtual {p1}, Lcom/shabakaty/downloader/p2;->c()V

    goto :goto_6

    .line 42
    :cond_14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 43
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz p1, :cond_15

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k2;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public L(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/e;->v(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/aa$j;->p:Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->y()V

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->o:Z

    .line 10
    iput-boolean v1, v0, Lcom/shabakaty/downloader/aa$j;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 13
    iput-boolean p1, v0, Lcom/shabakaty/downloader/aa$j;->k:Z

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->J:Lcom/shabakaty/downloader/b45;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b45;->b()V

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->K:Z

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    sget-object v1, Lcom/shabakaty/downloader/zl3;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x75

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x7e

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/aa;->v(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/aa;->v(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x76

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/aa;->v(I)Z

    :cond_2
    const/16 v1, 0x77

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/aa;->v(I)Z

    .line 12
    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/shabakaty/downloader/aa;->T:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->O()V

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->U:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 18
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->T:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0d000c

    .line 19
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-boolean v3, p0, Lcom/shabakaty/downloader/aa;->R:Z

    iput-boolean v3, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    if-eqz v0, :cond_8

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f04000c

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/sd0;

    iget-object v7, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 27
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0017

    .line 28
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a012c

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dn0;

    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    .line 30
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/shabakaty/downloader/dn0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 31
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->R:Z

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/dn0;->i(I)V

    .line 33
    :cond_6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->O:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/dn0;->i(I)V

    .line 35
    :cond_7
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->P:Z

    if-eqz v1, :cond_b

    .line 36
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/dn0;->i(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    .line 37
    :cond_9
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->S:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0d0016

    .line 38
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0d0015

    .line 39
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_19

    .line 40
    new-instance v1, Lcom/shabakaty/downloader/ba;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ba;-><init>(Lcom/shabakaty/downloader/aa;)V

    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 41
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/c35$c;->d(Landroid/view/View;Lcom/shabakaty/downloader/d63;)V

    .line 42
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-nez v1, :cond_c

    const v1, 0x7f0a04bc

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->M:Landroid/widget/TextView;

    .line 44
    :cond_c
    sget-object v1, Lcom/shabakaty/downloader/j45;->a:Ljava/lang/reflect/Method;

    const-string v1, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v2, "ViewUtils"

    .line 45
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "makeOptionalFitsSystemWindows"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 46
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_d

    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_d
    new-array v8, v3, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    .line 49
    invoke-static {v2, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v7

    .line 50
    invoke-static {v2, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    const-string v1, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 51
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const v1, 0x7f0a003a

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 53
    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 54
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    .line 55
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 56
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 57
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v8, -0x1

    .line 58
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 59
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 60
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    .line 61
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_f
    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 63
    new-instance v2, Lcom/shabakaty/downloader/ca;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ca;-><init>(Lcom/shabakaty/downloader/aa;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 64
    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    .line 65
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 66
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 67
    :cond_10
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->B:Ljava/lang/CharSequence;

    .line 68
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 69
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v1, :cond_11

    .line 70
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/dn0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 71
    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v1, :cond_12

    .line 72
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/k2;->r(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 73
    :cond_12
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->M:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 76
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 80
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->x:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 83
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 84
    :cond_14
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    sget-object v2, Lcom/shabakaty/downloader/zl3;->j:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x7c

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7d

    .line 86
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7a

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 89
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v2, 0x7b

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 92
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v2, 0x78

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 95
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x79

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 97
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 98
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 99
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 101
    iput-boolean v5, p0, Lcom/shabakaty/downloader/aa;->K:Z

    .line 102
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 103
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_1b

    .line 104
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/aa;->U(I)V

    goto :goto_7

    .line 105
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->R:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->T:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->S:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->U:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_7
    return-void
.end method

.method public final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/aa;->F(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P(Landroid/view/Menu;)Lcom/shabakaty/downloader/aa$j;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->W:[Lcom/shabakaty/downloader/aa$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v3, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final Q(Landroid/content/Context;)Lcom/shabakaty/downloader/aa$g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->h0:Lcom/shabakaty/downloader/aa$g;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/aa$h;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/rr4;->d:Lcom/shabakaty/downloader/rr4;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/rr4;

    const-string v2, "location"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/rr4;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lcom/shabakaty/downloader/rr4;->d:Lcom/shabakaty/downloader/rr4;

    .line 7
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/rr4;->d:Lcom/shabakaty/downloader/rr4;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/aa$h;-><init>(Lcom/shabakaty/downloader/aa;Lcom/shabakaty/downloader/rr4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->h0:Lcom/shabakaty/downloader/aa$g;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->h0:Lcom/shabakaty/downloader/aa$g;

    return-object p1
.end method

.method public R(I)Lcom/shabakaty/downloader/aa$j;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->W:[Lcom/shabakaty/downloader/aa$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Lcom/shabakaty/downloader/aa$j;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->W:[Lcom/shabakaty/downloader/aa$j;

    move-object v0, v1

    .line 5
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/aa$j;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/aa$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final S()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final T()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/u65;

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->R:Z

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/u65;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/u65;

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u65;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->m0:Z

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k2;->l(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final U(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/aa;->k0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/aa;->k0:I

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->j0:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->l0:Ljava/lang/Runnable;

    sget-object v2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/aa;->j0:Z

    :cond_0
    return-void
.end method

.method public V(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/aa$f;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/aa$f;-><init>(Lcom/shabakaty/downloader/aa;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->c()I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 9
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->Q(Landroid/content/Context;)Lcom/shabakaty/downloader/aa$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/aa$g;->c()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final W(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/aa$j;->m:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Lcom/shabakaty/downloader/aa$j;->n:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    if-eqz p2, :cond_1b

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1b

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz p2, :cond_8

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/k2;->e()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 18
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040005

    .line 21
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    .line 23
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    const v6, 0x7f040368

    .line 24
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 25
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    .line 26
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_b
    const v4, 0x7f1301fc

    .line 27
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 28
    :goto_3
    new-instance v4, Lcom/shabakaty/downloader/sd0;

    invoke-direct {v4, p2, v2}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {v4}, Lcom/shabakaty/downloader/sd0;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 30
    iput-object v4, p1, Lcom/shabakaty/downloader/aa$j;->j:Landroid/content/Context;

    .line 31
    sget-object p2, Lcom/shabakaty/downloader/zl3;->j:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x56

    .line 32
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lcom/shabakaty/downloader/aa$j;->b:I

    .line 33
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lcom/shabakaty/downloader/aa$j;->d:I

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    new-instance p2, Lcom/shabakaty/downloader/aa$i;

    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Lcom/shabakaty/downloader/aa$i;-><init>(Lcom/shabakaty/downloader/aa;Landroid/content/Context;)V

    iput-object p2, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 36
    iput p2, p1, Lcom/shabakaty/downloader/aa$j;->c:I

    goto :goto_4

    .line 37
    :cond_c
    iget-boolean v4, p1, Lcom/shabakaty/downloader/aa$j;->n:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    .line 38
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    :cond_d
    :goto_4
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 40
    iput-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    goto :goto_5

    .line 41
    :cond_e
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-nez p2, :cond_f

    goto :goto_6

    .line 42
    :cond_f
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->E:Lcom/shabakaty/downloader/aa$k;

    if-nez p2, :cond_10

    .line 43
    new-instance p2, Lcom/shabakaty/downloader/aa$k;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/aa$k;-><init>(Lcom/shabakaty/downloader/aa;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/aa;->E:Lcom/shabakaty/downloader/aa$k;

    .line 44
    :cond_10
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->E:Lcom/shabakaty/downloader/aa$k;

    .line 45
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->i:Landroidx/appcompat/view/menu/c;

    if-nez v4, :cond_11

    .line 46
    new-instance v4, Landroidx/appcompat/view/menu/c;

    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->j:Landroid/content/Context;

    const v6, 0x7f0d0010

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Lcom/shabakaty/downloader/aa$j;->i:Landroidx/appcompat/view/menu/c;

    .line 47
    iput-object p2, v4, Landroidx/appcompat/view/menu/c;->v:Landroidx/appcompat/view/menu/i$a;

    .line 48
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    .line 49
    iget-object v5, p2, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/i;Landroid/content/Context;)V

    .line 50
    :cond_11
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->i:Landroidx/appcompat/view/menu/c;

    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    .line 51
    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->u:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    .line 52
    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->s:Landroid/view/LayoutInflater;

    const v6, 0x7f0d000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Landroidx/appcompat/view/menu/c;->u:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 53
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->w:Landroidx/appcompat/view/menu/c$a;

    if-nez v4, :cond_12

    .line 54
    new-instance v4, Landroidx/appcompat/view/menu/c$a;

    invoke-direct {v4, p2}, Landroidx/appcompat/view/menu/c$a;-><init>(Landroidx/appcompat/view/menu/c;)V

    iput-object v4, p2, Landroidx/appcompat/view/menu/c;->w:Landroidx/appcompat/view/menu/c$a;

    .line 55
    :cond_12
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->u:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->w:Landroidx/appcompat/view/menu/c$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->u:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    :cond_13
    iget-object p2, p2, Landroidx/appcompat/view/menu/c;->u:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 58
    iput-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1c

    .line 59
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    .line 60
    :cond_15
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_8

    .line 61
    :cond_16
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->i:Landroidx/appcompat/view/menu/c;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/c;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/c$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/c$a;->getCount()I

    move-result p2

    if-lez p2, :cond_17

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_17
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    .line 62
    :cond_18
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_19

    .line 63
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 64
    :cond_19
    iget v4, p1, Lcom/shabakaty/downloader/aa$j;->b:I

    .line 65
    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 66
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 67
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    .line 68
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    :cond_1a
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 71
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1b
    const/4 v5, -0x2

    .line 72
    :goto_b
    iput-boolean v2, p1, Lcom/shabakaty/downloader/aa$j;->l:Z

    .line 73
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 74
    iget v2, p1, Lcom/shabakaty/downloader/aa$j;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    iget v2, p1, Lcom/shabakaty/downloader/aa$j;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 76
    iget-object v2, p1, Lcom/shabakaty/downloader/aa$j;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iput-boolean v1, p1, Lcom/shabakaty/downloader/aa$j;->m:Z

    return-void

    .line 78
    :cond_1c
    :goto_c
    iput-boolean v1, p1, Lcom/shabakaty/downloader/aa$j;->n:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public final X(Lcom/shabakaty/downloader/aa$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/shabakaty/downloader/aa$j;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/aa;->Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-nez p3, :cond_3

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    :cond_3
    return v1
.end method

.method public final Y(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/shabakaty/downloader/aa$j;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->X:Lcom/shabakaty/downloader/aa$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    .line 7
    :cond_3
    iget v3, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 8
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v5}, Lcom/shabakaty/downloader/dn0;->d()V

    .line 10
    :cond_6
    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 11
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    .line 12
    instance-of v5, v5, Lcom/shabakaty/downloader/eo4;

    if-nez v5, :cond_19

    .line 13
    :cond_7
    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Lcom/shabakaty/downloader/aa$j;->o:Z

    if-eqz v7, :cond_13

    :cond_8
    if-nez v5, :cond_e

    .line 14
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 15
    iget v7, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v4, :cond_d

    .line 16
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f04000c

    .line 18
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000d

    if-eqz v8, :cond_a

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 22
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 23
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 24
    :cond_a
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 25
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 27
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    .line 29
    new-instance v4, Lcom/shabakaty/downloader/sd0;

    invoke-direct {v4, v5, v1}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {v4}, Lcom/shabakaty/downloader/sd0;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    .line 31
    :cond_d
    new-instance v4, Landroidx/appcompat/view/menu/e;

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p0, v4, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    .line 33
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/aa$j;->a(Landroidx/appcompat/view/menu/e;)V

    .line 34
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    .line 35
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz v4, :cond_10

    .line 36
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->D:Lcom/shabakaty/downloader/aa$c;

    if-nez v5, :cond_f

    .line 37
    new-instance v5, Lcom/shabakaty/downloader/aa$c;

    invoke-direct {v5, p0}, Lcom/shabakaty/downloader/aa$c;-><init>(Lcom/shabakaty/downloader/aa;)V

    iput-object v5, p0, Lcom/shabakaty/downloader/aa;->D:Lcom/shabakaty/downloader/aa$c;

    .line 38
    :cond_f
    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    iget-object v7, p0, Lcom/shabakaty/downloader/aa;->D:Lcom/shabakaty/downloader/aa$c;

    invoke-interface {v4, v5, v7}, Lcom/shabakaty/downloader/dn0;->b(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    .line 39
    :cond_10
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->y()V

    .line 40
    iget v4, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 41
    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/aa$j;->a(Landroidx/appcompat/view/menu/e;)V

    if-eqz v3, :cond_11

    .line 42
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz p1, :cond_11

    .line 43
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->D:Lcom/shabakaty/downloader/aa$c;

    invoke-interface {p1, v6, p2}, Lcom/shabakaty/downloader/dn0;->b(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    :cond_11
    return v1

    .line 44
    :cond_12
    iput-boolean v1, p1, Lcom/shabakaty/downloader/aa$j;->o:Z

    .line 45
    :cond_13
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->y()V

    .line 46
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    .line 47
    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/e;->u(Landroid/os/Bundle;)V

    .line 48
    iput-object v6, p1, Lcom/shabakaty/downloader/aa$j;->p:Landroid/os/Bundle;

    .line 49
    :cond_14
    iget-object v4, p1, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    iget-object v5, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    .line 50
    iget-object p2, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    if-eqz p2, :cond_15

    .line 51
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->D:Lcom/shabakaty/downloader/aa$c;

    invoke-interface {p2, v6, v0}, Lcom/shabakaty/downloader/dn0;->b(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    .line 52
    :cond_15
    iget-object p1, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->x()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    .line 54
    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_4

    :cond_18
    const/4 p2, 0x0

    .line 56
    :goto_4
    iget-object v0, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/e;->setQwertyMode(Z)V

    .line 57
    iget-object p2, p1, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/e;->x()V

    .line 58
    :cond_19
    iput-boolean v2, p1, Lcom/shabakaty/downloader/aa$j;->k:Z

    .line 59
    iput-boolean v1, p1, Lcom/shabakaty/downloader/aa$j;->l:Z

    .line 60
    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->X:Lcom/shabakaty/downloader/aa$j;

    return v2
.end method

.method public final Z()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->P(Landroid/view/Menu;)Lcom/shabakaty/downloader/aa$j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/aa$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->K:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/shabakaty/downloader/dn0;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/dn0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->S()Landroid/view/Window$Callback;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {v2}, Lcom/shabakaty/downloader/dn0;->c()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/dn0;->g()Z

    .line 7
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 10
    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    if-nez v2, :cond_4

    .line 11
    iget-boolean v2, p0, Lcom/shabakaty/downloader/aa;->j0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/shabakaty/downloader/aa;->k0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/aa;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->l0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object v0

    .line 15
    iget-object v2, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lcom/shabakaty/downloader/aa$j;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/shabakaty/downloader/aa$j;->g:Landroid/view/View;

    .line 16
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/aa$j;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->C:Lcom/shabakaty/downloader/dn0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/dn0;->h()Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/aa;->R(I)Lcom/shabakaty/downloader/aa$j;

    move-result-object p1

    .line 20
    iput-boolean v0, p1, Lcom/shabakaty/downloader/aa$j;->n:Z

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/aa;->I(Lcom/shabakaty/downloader/aa$j;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/aa;->W(Lcom/shabakaty/downloader/aa$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final b0(Lcom/shabakaty/downloader/x65;Landroid/graphics/Rect;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->e()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_10

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/aa;->n0:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/aa;->n0:Landroid/graphics/Rect;

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/aa;->o0:Landroid/graphics/Rect;

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/aa;->n0:Landroid/graphics/Rect;

    .line 11
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->o0:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->c()I

    move-result v6

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->e()I

    move-result v7

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->d()I

    move-result v8

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->b()I

    move-result p1

    .line 16
    invoke-virtual {v3, v6, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    invoke-static {p1, v3, v5}, Lcom/shabakaty/downloader/j45;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 18
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 19
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 20
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 21
    iget-object v6, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    sget-object v7, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 22
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_1

    .line 23
    invoke-static {v6}, Lcom/shabakaty/downloader/c35$d;->a(Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object v6

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v6}, Lcom/shabakaty/downloader/c35$c;->c(Landroid/view/View;)Lcom/shabakaty/downloader/x65;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v6}, Lcom/shabakaty/downloader/x65;->c()I

    move-result v7

    :goto_1
    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {v6}, Lcom/shabakaty/downloader/x65;->d()I

    move-result v6

    .line 27
    :goto_2
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v5, :cond_5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 28
    :cond_5
    :goto_3
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 30
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v3, 0x1

    :goto_4
    if-lez p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    if-nez p1, :cond_6

    .line 32
    new-instance p1, Landroid/view/View;

    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-direct {p1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 35
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 36
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 37
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    invoke-virtual {v5, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 40
    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v5, v8, :cond_7

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, v7, :cond_7

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v5, v6, :cond_8

    .line 41
    :cond_7
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 42
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 43
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    iget-object v5, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_c

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    .line 47
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_a

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_b

    .line 49
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const v6, 0x7f060006

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result v4

    goto :goto_8

    .line 50
    :cond_b
    iget-object v4, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    const v6, 0x7f060005

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result v4

    .line 51
    :goto_8
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    :cond_c
    iget-boolean p1, p0, Lcom/shabakaty/downloader/aa;->S:Z

    if-nez p1, :cond_d

    if-eqz v5, :cond_d

    const/4 p2, 0x0

    :cond_d
    move v4, v3

    goto :goto_a

    .line 53
    :cond_e
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_f

    .line 54
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x0

    :goto_a
    if-eqz v4, :cond_11

    .line 55
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->G:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    .line 56
    :cond_11
    :goto_b
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->N:Landroid/view/View;

    if-eqz p1, :cond_13

    if-eqz v5, :cond_12

    const/4 v1, 0x0

    .line 57
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return p2
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/aa;->E(Z)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->Z:Z

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/aa;->d0:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lcom/shabakaty/downloader/z9;->r:I

    .line 4
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/shabakaty/downloader/aa;->V(Landroid/content/Context;I)I

    move-result v1

    .line 5
    sget-boolean v2, Lcom/shabakaty/downloader/aa;->t0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0, p1, v1, v3}, Lcom/shabakaty/downloader/aa;->J(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 7
    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    .line 8
    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/shabakaty/downloader/sd0;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0, p1, v1, v3}, Lcom/shabakaty/downloader/aa;->J(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 11
    :try_start_1
    move-object v4, p1

    check-cast v4, Lcom/shabakaty/downloader/sd0;

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/sd0;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    .line 12
    :cond_2
    sget-boolean v2, Lcom/shabakaty/downloader/aa;->s0:Z

    if-nez v2, :cond_3

    return-object p1

    .line 13
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, -0x1

    .line 15
    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    .line 16
    iput v5, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 17
    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 20
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 21
    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 22
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 23
    iput v5, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 24
    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 25
    :cond_4
    iget v5, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    .line 26
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 27
    :cond_5
    iget v5, v4, Landroid/content/res/Configuration;->mcc:I

    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v5, v8, :cond_6

    .line 28
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 29
    :cond_6
    iget v5, v4, Landroid/content/res/Configuration;->mnc:I

    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v5, v8, :cond_7

    .line 30
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v5, 0x18

    if-lt v2, v5, :cond_8

    .line 31
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 32
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    .line 33
    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 34
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 35
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 36
    :cond_8
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 37
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 38
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 39
    :cond_9
    :goto_1
    iget v5, v4, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v5, v8, :cond_a

    .line 40
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 41
    :cond_a
    iget v5, v4, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v8, :cond_b

    .line 42
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 43
    :cond_b
    iget v5, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v5, v8, :cond_c

    .line 44
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 45
    :cond_c
    iget v5, v4, Landroid/content/res/Configuration;->navigation:I

    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v5, v8, :cond_d

    .line 46
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 47
    :cond_d
    iget v5, v4, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v5, v8, :cond_e

    .line 48
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 49
    :cond_e
    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v8, :cond_f

    .line 50
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 51
    :cond_f
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_10

    .line 52
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 53
    :cond_10
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v5, v8, :cond_11

    .line 54
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 55
    :cond_11
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_12

    .line 56
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 57
    :cond_12
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v5, v8, :cond_13

    .line 58
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v5, 0x1a

    if-lt v2, v5, :cond_15

    .line 59
    iget v2, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v5, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    if-eq v2, v5, :cond_14

    .line 60
    iget v2, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 61
    :cond_14
    iget v2, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v5, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    if-eq v2, v5, :cond_15

    .line 62
    iget v2, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 63
    :cond_15
    iget v2, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    iget v5, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    if-eq v2, v5, :cond_16

    .line 64
    iget v2, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 65
    :cond_16
    iget v2, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    iget v5, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    if-eq v2, v5, :cond_17

    .line 66
    iget v2, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 67
    :cond_17
    iget v2, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v5, :cond_18

    .line 68
    iput v5, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 69
    :cond_18
    iget v2, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v5, :cond_19

    .line 70
    iput v5, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 71
    :cond_19
    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v5, :cond_1a

    .line 72
    iput v5, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 73
    :cond_1a
    iget v2, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1c

    .line 74
    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v7, v3

    .line 75
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v1, v7}, Lcom/shabakaty/downloader/aa;->J(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/shabakaty/downloader/sd0;

    const v4, 0x7f130208

    invoke-direct {v2, p1, v4}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    .line 77
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/sd0;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    .line 78
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_3

    :catch_2
    :cond_1d
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_21

    .line 79
    invoke-virtual {v2}, Lcom/shabakaty/downloader/sd0;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    .line 81
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x17

    if-lt v4, v5, :cond_21

    .line 82
    sget-object v4, Lcom/shabakaty/downloader/ss3;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 83
    :try_start_3
    sget-boolean v5, Lcom/shabakaty/downloader/ss3;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1f

    .line 84
    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/shabakaty/downloader/ss3;->b:Ljava/lang/reflect/Method;

    .line 85
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    .line 86
    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_4
    sput-boolean v0, Lcom/shabakaty/downloader/ss3;->c:Z

    .line 88
    :cond_1f
    sget-object v0, Lcom/shabakaty/downloader/ss3;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_20

    :try_start_6
    new-array v1, v1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    :try_start_7
    const-string v0, "ResourcesCompat"

    const-string v1, "Failed to invoke rebase() method via reflection"

    .line 90
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    sput-object v3, Lcom/shabakaty/downloader/ss3;->b:Ljava/lang/reflect/Method;

    .line 92
    :cond_20
    :goto_6
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_21
    :goto_7
    return-object v2
.end method

.method public f(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/shabakaty/downloader/m2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/aa$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/aa$b;-><init>(Lcom/shabakaty/downloader/aa;)V

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/aa;->d0:I

    return v0
.end method

.method public i()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->A:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/wh4;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k2;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/wh4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/aa;->A:Landroid/view/MenuInflater;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->A:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public j()Lcom/shabakaty/downloader/k2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/aa;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k2;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/aa;->U(I)V

    return-void
.end method

.method public m(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->K:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k2;->g(Landroid/content/res/Configuration;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/ha;->a()Lcom/shabakaty/downloader/ha;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ha;->a:Lcom/shabakaty/downloader/qs3;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, v1, Lcom/shabakaty/downloader/qs3;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/jl2;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/jl2;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p1

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/aa;->E(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/aa;->Z:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/aa;->E(Z)Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->O()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/ex2;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-nez v0, :cond_0

    .line 9
    iput-boolean p1, p0, Lcom/shabakaty/downloader/aa;->m0:Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k2;->l(Z)V

    .line 11
    :cond_1
    :goto_1
    sget-object v0, Lcom/shabakaty/downloader/z9;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    invoke-static {p0}, Lcom/shabakaty/downloader/z9;->u(Lcom/shabakaty/downloader/z9;)V

    .line 13
    sget-object v1, Lcom/shabakaty/downloader/z9;->s:Lcom/shabakaty/downloader/dd;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/dd;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 15
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/aa;->a0:Z

    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z9;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/downloader/z9;->u(Lcom/shabakaty/downloader/z9;)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->j0:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->b0:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->c0:Z

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/aa;->d0:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/aa;->q0:Lcom/shabakaty/downloader/m64;

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/aa;->d0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/aa;->q0:Lcom/shabakaty/downloader/m64;

    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->u:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/m64;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k2;->h()V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->h0:Lcom/shabakaty/downloader/aa$g;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/aa$g;->a()V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->i0:Lcom/shabakaty/downloader/aa$g;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/aa$g;->a()V

    :cond_5
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->p0:Lcom/shabakaty/downloader/bb;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    sget-object v1, Lcom/shabakaty/downloader/zl3;->j:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0x74

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/bb;

    invoke-direct {p1}, Lcom/shabakaty/downloader/bb;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->p0:Lcom/shabakaty/downloader/bb;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/bb;

    iput-object v1, p0, Lcom/shabakaty/downloader/aa;->p0:Lcom/shabakaty/downloader/bb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/bb;

    invoke-direct {p1}, Lcom/shabakaty/downloader/bb;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/aa;->p0:Lcom/shabakaty/downloader/bb;

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->p0:Lcom/shabakaty/downloader/bb;

    .line 11
    sget v1, Lcom/shabakaty/downloader/d05;->a:I

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/zl3;->z:[I

    invoke-virtual {p3, p4, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "AppCompatViewInflater"

    const-string v5, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 15
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_4

    .line 17
    instance-of v2, p3, Lcom/shabakaty/downloader/sd0;

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Lcom/shabakaty/downloader/sd0;

    .line 18
    iget v2, v2, Lcom/shabakaty/downloader/sd0;->a:I

    if-eq v2, v3, :cond_4

    .line 19
    :cond_3
    new-instance v2, Lcom/shabakaty/downloader/sd0;

    invoke-direct {v2, p3, v3}, Lcom/shabakaty/downloader/sd0;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v2, p3

    .line 20
    :goto_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "ImageView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_8
    const-string v1, "SeekBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_b
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_d
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    :goto_2
    const/4 v1, -0x1

    :cond_12
    :goto_3
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    goto :goto_4

    .line 21
    :pswitch_0
    invoke-virtual {p1, v2, p4}, Lcom/shabakaty/downloader/bb;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/u9;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/bb;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :pswitch_1
    new-instance v1, Lcom/shabakaty/downloader/ia;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/ia;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 24
    :pswitch_2
    invoke-virtual {p1, v2, p4}, Lcom/shabakaty/downloader/bb;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/w9;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/bb;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :pswitch_3
    invoke-virtual {p1, v2, p4}, Lcom/shabakaty/downloader/bb;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/s9;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/bb;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 29
    :pswitch_5
    new-instance v1, Lcom/shabakaty/downloader/ab;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/ab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 30
    :pswitch_6
    invoke-virtual {p1, v2, p4}, Lcom/shabakaty/downloader/bb;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/shabakaty/downloader/oa;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/bb;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 32
    :pswitch_7
    new-instance v1, Lcom/shabakaty/downloader/va;

    const v6, 0x7f040425

    .line 33
    invoke-direct {v1, v2, p4, v6}, Lcom/shabakaty/downloader/va;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 34
    :pswitch_8
    new-instance v1, Lcom/shabakaty/downloader/sa;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/sa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 35
    :pswitch_9
    new-instance v1, Lcom/shabakaty/downloader/ja;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/ja;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 36
    :pswitch_a
    invoke-virtual {p1, v2, p4}, Lcom/shabakaty/downloader/bb;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    .line 37
    invoke-virtual {p1, v1, p2}, Lcom/shabakaty/downloader/bb;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :pswitch_b
    new-instance v1, Lcom/shabakaty/downloader/la;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/la;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 39
    :pswitch_c
    new-instance v1, Lcom/shabakaty/downloader/x9;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/x9;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 40
    :pswitch_d
    new-instance v1, Lcom/shabakaty/downloader/pa;

    invoke-direct {v1, v2, p4}, Lcom/shabakaty/downloader/pa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_17

    if-eq p3, v2, :cond_17

    const-string p3, "view"

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-string p2, "class"

    .line 42
    invoke-interface {p4, v3, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    :cond_13
    :try_start_1
    iget-object p3, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v2, p3, v0

    .line 44
    aput-object p4, p3, v5

    const/16 p3, 0x2e

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v4, p3, :cond_16

    const/4 p3, 0x0

    .line 46
    :goto_5
    sget-object v1, Lcom/shabakaty/downloader/bb;->d:[Ljava/lang/String;

    array-length v4, v1

    if-ge p3, v4, :cond_15

    .line 47
    aget-object v1, v1, p3

    invoke-virtual {p1, v2, p2, v1}, Lcom/shabakaty/downloader/bb;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_14

    .line 48
    iget-object p1, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 49
    aput-object v3, p1, v5

    move-object v3, v1

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 50
    :cond_15
    iget-object p1, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 51
    aput-object v3, p1, v5

    goto :goto_6

    .line 52
    :cond_16
    :try_start_2
    invoke-virtual {p1, v2, p2, v3}, Lcom/shabakaty/downloader/bb;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    iget-object p1, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 54
    aput-object v3, p1, v5

    move-object v3, p2

    goto :goto_6

    :catchall_1
    move-exception p2

    .line 55
    iget-object p1, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 56
    aput-object v3, p1, v5

    .line 57
    throw p2

    .line 58
    :catch_0
    iget-object p1, p1, Lcom/shabakaty/downloader/bb;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 59
    aput-object v3, p1, v5

    :goto_6
    move-object v1, v3

    :cond_17
    if-eqz v1, :cond_1a

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 61
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_1a

    .line 62
    sget-object p2, Lcom/shabakaty/downloader/c35;->a:Ljava/util/WeakHashMap;

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_7

    .line 64
    :cond_18
    sget-object p2, Lcom/shabakaty/downloader/bb;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 66
    new-instance p3, Lcom/shabakaty/downloader/bb$a;

    invoke-direct {p3, v1, p2}, Lcom/shabakaty/downloader/bb$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1a
    :goto_7
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/shabakaty/downloader/aa;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/k2;->o(Z)V

    :cond_0
    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->b0:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->d()Z

    return-void
.end method

.method public t()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/aa;->b0:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->T()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->z:Lcom/shabakaty/downloader/k2;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/k2;->o(Z)V

    :cond_0
    return-void
.end method

.method public v(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->U:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->w:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 8
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->R:Z

    return v4

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 10
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->Q:Z

    return v4

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 12
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->S:Z

    return v4

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 14
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->P:Z

    return v4

    .line 15
    :cond_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 16
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->O:Z

    return v4

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->a0()V

    .line 18
    iput-boolean v4, p0, Lcom/shabakaty/downloader/aa;->U:Z

    return v4
.end method

.method public w(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/aa;->v:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public y(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/aa;->N()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa;->L:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/aa;->x:Lcom/shabakaty/downloader/aa$e;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/s65;->r:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method
