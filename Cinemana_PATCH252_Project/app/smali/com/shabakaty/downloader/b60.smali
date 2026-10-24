.class public Lcom/shabakaty/downloader/b60;
.super Landroidx/appcompat/app/b$a;
.source "ColorPickerDialog.java"


# instance fields
.field public c:Lcom/shabakaty/downloader/lq;

.field public d:Lcom/skydoves/colorpickerview/ColorPickerView;

.field public e:Z

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/b60;->e:Z

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/b60;->f:Z

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/b$a;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j96;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/b60;->g:I

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/b$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0053

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0071

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    if-eqz v0, :cond_2

    const p2, 0x7f0a0072

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    const p2, 0x7f0a00ad

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    if-eqz v5, :cond_2

    const p2, 0x7f0a00ae

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    const p2, 0x7f0a00fd

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/skydoves/colorpickerview/ColorPickerView;

    if-eqz v10, :cond_2

    const p2, 0x7f0a00fe

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_2

    const p2, 0x7f0a0446

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Space;

    if-eqz v9, :cond_2

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/lq;

    move-object v2, p1

    check-cast v2, Landroid/widget/ScrollView;

    move-object v1, p2

    move-object v3, v0

    move-object v7, v10

    invoke-direct/range {v1 .. v9}, Lcom/shabakaty/downloader/lq;-><init>(Landroid/widget/ScrollView;Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;Landroid/widget/FrameLayout;Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;Landroid/widget/FrameLayout;Lcom/skydoves/colorpickerview/ColorPickerView;Landroid/widget/FrameLayout;Landroid/widget/Space;)V

    .line 15
    iput-object p2, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    .line 16
    iput-object v10, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 17
    iput-object v0, v10, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    .line 18
    iput-object v10, v0, Lcom/shabakaty/downloader/e1;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 19
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->d()V

    .line 20
    invoke-virtual {v10}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v10}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    iget-object p2, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object p2, p2, Lcom/shabakaty/downloader/lq;->d:Ljava/lang/Object;

    check-cast p2, Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    .line 23
    iput-object p2, p1, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    .line 24
    iput-object p1, p2, Lcom/shabakaty/downloader/e1;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/e1;->d()V

    .line 26
    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    new-instance p2, Lcom/shabakaty/downloader/z50;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/z50;-><init>(Lcom/shabakaty/downloader/b60;)V

    invoke-virtual {p1, p2}, Lcom/skydoves/colorpickerview/ColorPickerView;->setColorListener(Lcom/shabakaty/downloader/f60;)V

    .line 29
    iget-object p1, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/lq;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ScrollView;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/b$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;

    return-void

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(I)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/b$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public create()Landroidx/appcompat/app/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->g:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->g:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 7
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getAlphaSlideBar()Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/shabakaty/downloader/b60;->e:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v1, v1, Lcom/shabakaty/downloader/lq;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v1, v1, Lcom/shabakaty/downloader/lq;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 12
    iput-object v0, v1, Lcom/skydoves/colorpickerview/ColorPickerView;->z:Lcom/skydoves/colorpickerview/sliders/AlphaSlideBar;

    .line 13
    iput-object v1, v0, Lcom/shabakaty/downloader/e1;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->d()V

    .line 15
    invoke-virtual {v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 19
    invoke-virtual {v0}, Lcom/skydoves/colorpickerview/ColorPickerView;->getBrightnessSlider()Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    move-result-object v0

    .line 20
    iget-boolean v1, p0, Lcom/shabakaty/downloader/b60;->f:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 21
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v1, v1, Lcom/shabakaty/downloader/lq;->e:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v1, v1, Lcom/shabakaty/downloader/lq;->e:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v1, p0, Lcom/shabakaty/downloader/b60;->d:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 24
    iput-object v0, v1, Lcom/skydoves/colorpickerview/ColorPickerView;->A:Lcom/skydoves/colorpickerview/sliders/BrightnessSlideBar;

    .line 25
    iput-object v1, v0, Lcom/shabakaty/downloader/e1;->r:Lcom/skydoves/colorpickerview/ColorPickerView;

    .line 26
    invoke-virtual {v0}, Lcom/shabakaty/downloader/e1;->d()V

    .line 27
    invoke-virtual {v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v1}, Lcom/skydoves/colorpickerview/ColorPickerView;->getPreferenceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e1;->setPreferenceName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 30
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b60;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/shabakaty/downloader/b60;->f:Z

    if-nez v0, :cond_4

    .line 31
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->h:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_2

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->h:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Space;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->h:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/b60;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/b60;->c:Lcom/shabakaty/downloader/lq;

    .line 35
    iget-object v0, v0, Lcom/shabakaty/downloader/lq;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ScrollView;

    .line 36
    invoke-super {p0, v0}, Landroidx/appcompat/app/b$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;

    .line 37
    invoke-super {p0}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public g(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->v:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->u:Z

    return-object p0
.end method

.method public h(I)Landroidx/appcompat/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i(I)Landroidx/appcompat/app/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/app/AlertController$b;->t:Landroid/view/View;

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->s:I

    return-object p0
.end method

.method public k(I)Lcom/shabakaty/downloader/b60;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/b$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j96;->c(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/b60;->g:I

    return-object p0
.end method

.method public l(ILandroid/content/DialogInterface$OnClickListener;)Lcom/shabakaty/downloader/b60;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method

.method public m(ILcom/shabakaty/downloader/f60;)Lcom/shabakaty/downloader/b60;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a60;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/a60;-><init>(Lcom/shabakaty/downloader/b60;Lcom/shabakaty/downloader/f60;)V

    .line 2
    invoke-super {p0, p1, v0}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method

.method public n(I)Lcom/shabakaty/downloader/b60;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/b$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/b$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/b$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/b$a;

    return-object p0
.end method
