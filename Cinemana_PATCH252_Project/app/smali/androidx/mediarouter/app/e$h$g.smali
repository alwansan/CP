.class public Landroidx/mediarouter/app/e$h$g;
.super Landroidx/mediarouter/app/e$f;
.source "MediaRouteDynamicControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/e$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ProgressBar;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/RelativeLayout;

.field public final j:Landroid/widget/CheckBox;

.field public final k:F

.field public final l:I

.field public final m:Landroid/view/View$OnClickListener;

.field public final synthetic n:Landroidx/mediarouter/app/e$h;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/e$h;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    .line 2
    iget-object v0, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    const v1, 0x7f0a02bc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0a02c2

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 4
    invoke-direct {p0, v0, p2, v1, v2}, Landroidx/mediarouter/app/e$f;-><init>(Landroidx/mediarouter/app/e;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/mediarouter/app/MediaRouteVolumeSlider;)V

    .line 5
    new-instance v0, Landroidx/mediarouter/app/e$h$g$a;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/e$h$g$a;-><init>(Landroidx/mediarouter/app/e$h$g;)V

    iput-object v0, p0, Landroidx/mediarouter/app/e$h$g;->m:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/e$h$g;->e:Landroid/view/View;

    const v0, 0x7f0a02bd

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/mediarouter/app/e$h$g;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a02bf

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/mediarouter/app/e$h$g;->g:Landroid/widget/ProgressBar;

    const v1, 0x7f0a02be

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/mediarouter/app/e$h$g;->h:Landroid/widget/TextView;

    const v1, 0x7f0a02c1

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Landroidx/mediarouter/app/e$h$g;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a02af

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    .line 12
    iget-object v1, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v1, v1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    const v2, 0x7f080275

    .line 13
    invoke-static {v1, v2}, Landroidx/mediarouter/app/h;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 14
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p2, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p2, p2, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-static {p2, v0}, Landroidx/mediarouter/app/h;->l(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 16
    iget-object p2, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p2, p2, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-static {p2}, Landroidx/mediarouter/app/h;->d(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Landroidx/mediarouter/app/e$h$g;->k:F

    .line 17
    iget-object p1, p1, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object p1, p1, Landroidx/mediarouter/app/e;->z:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 19
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f070135

    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 21
    invoke-virtual {v0, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/mediarouter/app/e$h$g;->l:I

    return-void
.end method


# virtual methods
.method public c(Landroidx/mediarouter/media/g$h;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/mediarouter/media/g$h;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v0, v0, Landroidx/mediarouter/app/e$h;->j:Landroidx/mediarouter/app/e;

    iget-object v0, v0, Landroidx/mediarouter/app/e;->u:Landroidx/mediarouter/media/g$h;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/g$h;->b(Landroidx/mediarouter/media/g$h;)Landroidx/mediarouter/media/g$h$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Landroidx/mediarouter/media/g$h$a;->a:Landroidx/mediarouter/media/c$b$a;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p1, Landroidx/mediarouter/media/c$b$a;->b:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public d(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->f:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Landroidx/mediarouter/app/e$h$g;->n:Landroidx/mediarouter/app/e$h;

    iget-object v0, p0, Landroidx/mediarouter/app/e$h$g;->i:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p0, Landroidx/mediarouter/app/e$h$g;->l:I

    .line 8
    :cond_1
    invoke-virtual {p2, v0, v1}, Landroidx/mediarouter/app/e$h;->f(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
