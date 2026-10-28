.class public final Lcom/shabakaty/cinemana/local/AccountUi;
.super Ljava/lang/Object;
.source "AccountUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/AccountUi$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static action(Landroid/widget/LinearLayout;Ljava/lang/String;IZLjava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xe

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, -0xcfcdca

    const/16 v4, 0xc

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/local/AccountUi;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p2, -0x1

    if-eqz p3, :cond_37

    const v4, -0x979e

    goto :goto_38

    :cond_37
    const/4 v4, -0x1

    :goto_38
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x18

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_5b

    const p1, -0x8890

    goto :goto_5c

    :cond_5b
    const/4 p1, -0x1

    :goto_5c
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v3, p1, v5, p3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x36

    invoke-static {v0, p3}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x8

    invoke-static {v0, p2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda3;

    invoke-direct {p0, p4}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static actions(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/16 v3, 0x12

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v7, 0x18

    invoke-static {p0, v7}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v1, v4, v6, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v3, -0xdbd9d7

    const/16 v4, 0x14

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/local/AccountUi;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u062e\u064a\u0627\u0631\u0627\u062a \u0627\u0644\u0639\u0645\u0644"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41980000    # 19.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {p0, v8}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {p0, v6}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v3, v7, v8, v6, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    const-string p1, "\u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u0639\u0645\u0644"

    const v3, 0x1080041

    const/4 v5, 0x0

    invoke-static {v1, p1, v3, v5, p0}, Lcom/shabakaty/cinemana/local/AccountUi;->action(Landroid/widget/LinearLayout;Ljava/lang/String;IZLjava/lang/Runnable;)V

    new-instance p0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, p2}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    const-string p1, "\u062d\u0630\u0641 \u0645\u0646 \u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    const p2, 0x108003c

    invoke-static {v1, p1, p2, v2, p0}, Lcom/shabakaty/cinemana/local/AccountUi;->action(Landroid/widget/LinearLayout;Ljava/lang/String;IZLjava/lang/Runnable;)V

    new-instance p0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    const-string p1, "\u0625\u063a\u0644\u0627\u0642"

    const p2, 0x1080038

    invoke-static {v1, p1, p2, v5, p0}, Lcom/shabakaty/cinemana/local/AccountUi;->action(Landroid/widget/LinearLayout;Ljava/lang/String;IZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x2

    if-eqz p0, :cond_a6

    const p2, 0x106000d

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, v4, p1}, Landroid/view/Window;->setLayout(II)V

    const/16 p2, 0x50

    invoke-virtual {p0, p2}, Landroid/view/Window;->setGravity(I)V

    :cond_a6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    if-eqz p0, :cond_ae

    invoke-virtual {p0, v4, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_ae
    return-void
.end method

.method public static button(Landroid/widget/Button;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    if-eqz p1, :cond_3d

    const p1, -0x3aedf4

    goto :goto_40

    :cond_3d
    const p1, -0xcfcdca

    :goto_40
    const/16 v1, 0xc

    invoke-static {v0, p1, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static colors(Landroid/view/View;)V
    .locals 3

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    const v1, -0x4a4743

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    :goto_1d
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_30

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/AccountUi;->colors(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_30
    return-void
.end method

.method public static dp(Landroid/content/Context;I)I
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static drawIcon(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$action$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$actions$0(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$actions$1(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$actions$2(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$drawIcon$5(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_60

    :catch_5a
    move-exception p0

    const-string p1, "overlay_icon"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    return-void
.end method

.method static synthetic lambda$watched$4(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ic_watched"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/local/AccountUi;->drawIcon(Landroid/view/View;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public static resume(Ljava/lang/Object;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p1, :cond_23

    return-void

    :cond_23
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u0623\u0643\u0645\u0644"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p0, "ic_btn_play"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/AccountUi;->drawIcon(Landroid/view/View;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception p0

    const-string p1, "resume_overlay"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3f
    return-void
.end method

.method public static shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/local/AccountUi;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static style(Landroid/app/AlertDialog;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0xdbd9d7

    const/16 v3, 0x12

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/local/AccountUi;->shape(Landroid/content/Context;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/AccountUi;->colors(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Lcom/shabakaty/cinemana/local/AccountUi$1;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/AccountUi$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_2c
    const/4 v0, -0x2

    const/4 v1, -0x3

    const/4 v2, -0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_35
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4b

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_48

    if-ne v4, v2, :cond_44

    const/4 v4, 0x1

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    invoke-static {v5, v4}, Lcom/shabakaty/cinemana/local/AccountUi;->button(Landroid/widget/Button;Z)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_4b
    return-void
.end method

.method public static watched(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    new-instance v0, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/local/AccountUi$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception p0

    const-string v0, "watched_overlay"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method
