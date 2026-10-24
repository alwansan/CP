.class public final Lcom/shabakaty/downloader/vg4;
.super Lcom/shabakaty/downloader/hj;
.source "SubtitlesSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ah4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/wk1;",
        "Lcom/shabakaty/downloader/ah4;",
        "Lcom/shabakaty/downloader/ih4;",
        ">;",
        "Lcom/shabakaty/downloader/ah4;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/shabakaty/downloader/vg4;",
        "Lcom/shabakaty/downloader/hj;",
        "Lcom/shabakaty/downloader/wk1;",
        "Lcom/shabakaty/downloader/ah4;",
        "Lcom/shabakaty/downloader/ih4;",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0085

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method

.method public static final h2(Lcom/shabakaty/downloader/vg4;)Lcom/shabakaty/downloader/wk1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/wk1;

    return-object p0
.end method

.method public static final i2(Lcom/shabakaty/downloader/vg4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/wk1;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->p()V

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p0, Lcom/shabakaty/downloader/wk1;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void
.end method

.method public static final j2(Lcom/shabakaty/downloader/vg4;Ljava/lang/Object;Ljava/util/List;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/tm1;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-interface {p4, v2}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    new-array v1, p4, [Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/CharSequence;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {v5, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move p4, v2

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_1

    .line 8
    :cond_3
    :goto_2
    new-instance p1, Lcom/shabakaty/downloader/ib;

    const/4 v1, 0x1

    invoke-direct {p1, p3, p2, v1}, Lcom/shabakaty/downloader/ib;-><init>(Lcom/shabakaty/downloader/hn1;Ljava/util/List;I)V

    .line 9
    iget-object p2, v0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p0, p2, Landroidx/appcompat/app/AlertController$b;->p:[Ljava/lang/CharSequence;

    .line 10
    iput-object p1, p2, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 11
    iput p4, p2, Landroidx/appcompat/app/AlertController$b;->v:I

    .line 12
    iput-boolean v1, p2, Landroidx/appcompat/app/AlertController$b;->u:Z

    .line 13
    invoke-static {v0, v3, v1}, Lcom/shabakaty/downloader/s45;->h(Lcom/shabakaty/downloader/bn2;Lcom/shabakaty/downloader/rm1;I)Lcom/shabakaty/downloader/bn2;

    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bn2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bn2;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120237

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bn2;->q(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/bn2;

    move-result-object v0

    const v1, 0x7f1202a6

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/qg4;->s:Lcom/shabakaty/downloader/qg4;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->m(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    const v1, 0x7f1202bc

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/ph0;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/ph0;-><init>(Lcom/shabakaty/downloader/vg4;)V

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/bn2;->o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/bn2;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    return-void
.end method

.method public J1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yg4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/yg4;-><init>(Lcom/shabakaty/downloader/vg4;)V

    const-string v1, "fontClicked"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object v0, Lcom/shabakaty/downloader/kg4;->J:Lcom/shabakaty/downloader/tm1;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/kg4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kg4;-><init>()V

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/kg4;->J:Lcom/shabakaty/downloader/tm1;

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/kg4;->I:Lcom/shabakaty/downloader/tm1;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ct0;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void
.end method

.method public N()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/vg4$f;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/downloader/vg4$f;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public X()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b60;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300f8

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->dialogStyle(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/b60;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120088

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->n(I)Lcom/shabakaty/downloader/b60;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    const-string v2, "SUB_EDGE_COLOR"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setPreferenceName(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1202a7

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/vg4$c;

    invoke-direct {v3, p0, p0}, Lcom/shabakaty/downloader/vg4$c;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/vg4;)V

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->m(ILcom/shabakaty/downloader/f60;)Lcom/shabakaty/downloader/b60;

    const v1, 0x7f12004e

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/wg4;->r:Lcom/shabakaty/downloader/wg4;

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/b60;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->e:Z

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->f:Z

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->k(I)Lcom/shabakaty/downloader/b60;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 11
    invoke-virtual {v1, p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->setLifecycleOwner(Lcom/shabakaty/downloader/rh2;)V

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/yn;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/yn;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/shabakaty/downloader/wd1;->t:Lcom/shabakaty/downloader/wd1;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/yd1;->setFlagMode(Lcom/shabakaty/downloader/wd1;)V

    invoke-virtual {v1, v3}, Lcom/skydoves/colorpickerview/ColorPickerView;->setFlagView(Lcom/shabakaty/downloader/yd1;)V

    const-string v3, "SUB_TEXT_COLOR"

    .line 13
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "#FFFFFF"

    .line 14
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v2, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#AA000000"

    .line 16
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    :cond_2
    const-string v2, "#00000000"

    .line 17
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public b0()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b60;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300f8

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->dialogStyle(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/b60;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120088

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->n(I)Lcom/shabakaty/downloader/b60;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    const-string v2, "SUB_TEXT_COLOR"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setPreferenceName(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1202a7

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/vg4$g;

    invoke-direct {v3, p0, p0}, Lcom/shabakaty/downloader/vg4$g;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/vg4;)V

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->m(ILcom/shabakaty/downloader/f60;)Lcom/shabakaty/downloader/b60;

    const v1, 0x7f12004e

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/wg4;->r:Lcom/shabakaty/downloader/wg4;

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/b60;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->e:Z

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->f:Z

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->k(I)Lcom/shabakaty/downloader/b60;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 11
    invoke-virtual {v1, p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->setLifecycleOwner(Lcom/shabakaty/downloader/rh2;)V

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/yn;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/yn;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/shabakaty/downloader/wd1;->t:Lcom/shabakaty/downloader/wd1;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/yd1;->setFlagMode(Lcom/shabakaty/downloader/wd1;)V

    invoke-virtual {v1, v3}, Lcom/skydoves/colorpickerview/ColorPickerView;->setFlagView(Lcom/shabakaty/downloader/yd1;)V

    .line 13
    invoke-static {v2, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "#FFFFFF"

    .line 14
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    :cond_1
    const-string v3, "SUB_EDGE_COLOR"

    .line 15
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#AA000000"

    .line 16
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    :cond_2
    const-string v2, "#00000000"

    .line 17
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public ca1OnViewCreatedBase(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v3, "import_subtitle_font_button"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/shabakaty/downloader/FontImportButtonClick;

    invoke-direct {v4, v0}, Lcom/shabakaty/downloader/FontImportButtonClick;-><init>(Lcom/shabakaty/downloader/vg4;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v6, 0x0

    move-object v4, v6

    move-object v5, v6

    const v15, -0x800001

    move v10, v15

    move v7, v15

    move v13, v15

    move v14, v15

    const/high16 v8, -0x80000000

    move/from16 v18, v8

    move v12, v8

    move v9, v8

    move v11, v8

    const/16 v16, 0x0

    const/high16 v17, -0x1000000

    const v1, 0x7f12026c

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vg0;

    move-object v2, v1

    const/16 v20, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/shabakaty/downloader/vg0;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/shabakaty/downloader/vg0$a;)V

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/wk1;

    iget-object v2, v2, Lcom/shabakaty/downloader/wk1;->O:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ih4;

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/ih4;->g:Lcom/shabakaty/downloader/gc4;

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/rg4;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/rg4;-><init>(Lcom/shabakaty/downloader/te1;)V

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/sg4;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/sg4;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    .line 11
    new-instance v3, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;

    invoke-direct {v3, v0, v2, v1}, Lcom/shabakaty/cinemana/utils/extensions/ObserverWhileStartedImpl;-><init>(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V

    return-void
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/ih4;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/ih4;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x536

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/shabakaty/downloader/FontImportWorker;

    invoke-direct {v1, v0, p3}, Lcom/shabakaty/downloader/FontImportWorker;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/vg4;->ca1OnViewCreatedBase(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui8;->subtitlePage(Landroid/view/View;)V

    return-void
.end method

.method public p1()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/vg4$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/shabakaty/downloader/vg4$e;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public y1()V
    .locals 6

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/b60;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1300f8

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->dialogStyle(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/b60;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120088

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->n(I)Lcom/shabakaty/downloader/b60;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    const-string v2, "SUB_BACK_COLOR"

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setPreferenceName(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1202a7

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/vg4$a;

    invoke-direct {v3, p0, p0}, Lcom/shabakaty/downloader/vg4$a;-><init>(Lcom/shabakaty/downloader/vg4;Lcom/shabakaty/downloader/vg4;)V

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->m(ILcom/shabakaty/downloader/f60;)Lcom/shabakaty/downloader/b60;

    const v1, 0x7f12004e

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/wg4;->r:Lcom/shabakaty/downloader/wg4;

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/b60;->l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/b60;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->e:Z

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/b60;->f:Z

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b60;->k(I)Lcom/shabakaty/downloader/b60;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 11
    invoke-virtual {v1, p0}, Lcom/skydoves/colorpickerview/ColorPickerView;->setLifecycleOwner(Lcom/shabakaty/downloader/rh2;)V

    .line 12
    new-instance v3, Lcom/shabakaty/downloader/yn;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/yn;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/shabakaty/downloader/wd1;->t:Lcom/shabakaty/downloader/wd1;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/yd1;->setFlagMode(Lcom/shabakaty/downloader/wd1;)V

    invoke-virtual {v1, v3}, Lcom/skydoves/colorpickerview/ColorPickerView;->setFlagView(Lcom/shabakaty/downloader/yd1;)V

    const-string v3, "SUB_TEXT_COLOR"

    .line 13
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "#FFFFFF"

    .line 14
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    :cond_1
    const-string v3, "SUB_EDGE_COLOR"

    .line 15
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "#AA000000"

    .line 16
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    goto :goto_0

    :cond_2
    const-string v2, "#00000000"

    .line 17
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setInitialColor(I)V

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->j()Landroidx/appcompat/app/b;

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public z2()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x536

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
