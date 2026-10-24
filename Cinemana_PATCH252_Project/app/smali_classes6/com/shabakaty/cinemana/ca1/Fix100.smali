.class public final Lcom/shabakaty/cinemana/ca1/Fix100;
.super Ljava/lang/Object;
.source "Fix100.java"


# static fields
.field private static final headers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Fix100;->headers:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 1

    .line 42
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-object v0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static hide(Ljava/lang/Object;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Fix100;->headers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static nearestToolbar(Landroid/view/View;I)Landroid/view/View;
    .locals 6

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloads_toolbar"

    const-string v4, "id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fragment_container"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 32
    move-object v2, p0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_6

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v0, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 35
    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    return-object v4

    .line 36
    :cond_2
    if-nez p1, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 37
    :goto_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    return-object v4

    .line 32
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_0

    .line 39
    :cond_6
    :goto_3
    return-object v3
.end method

.method public static show(Ljava/lang/Object;)V
    .locals 12

    .line 8
    const-string v0, "ca1_download_actions100"

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Fix100;->hide(Ljava/lang/Object;)V

    .line 9
    const-string v1, "getView"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "main_nav_toolbar"

    const-string v6, "id"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 12
    invoke-static {v1, v4}, Lcom/shabakaty/cinemana/ca1/Fix100;->nearestToolbar(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    return-void

    .line 13
    :cond_1
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_2
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/I18n161;->applyDir(Landroid/view/View;)V

    .line 16
    const-string v0, "\u0641\u0631\u0632 \u0627\u0644\u062a\u0646\u0632\u064a\u0644\u0627\u062a"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shabakaty/cinemana/ca1/Fix100;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v0

    const v7, 0x108009d

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v7, -0x1

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 17
    new-instance v7, Lcom/shabakaty/cinemana/ca1/Fix100$1;

    invoke-direct {v7, v3}, Lcom/shabakaty/cinemana/ca1/Fix100$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-string v7, "\u062d\u0630\u0641 \u0645\u062a\u0639\u062f\u062f"

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/ca1/Fix100;->button(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v7

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Native98$Trash;

    invoke-direct {v8}, Lcom/shabakaty/cinemana/ca1/Native98$Trash;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/shabakaty/cinemana/ca1/Fix100$2;

    invoke-direct {v8, v3}, Lcom/shabakaty/cinemana/ca1/Fix100$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x30

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-direct {v0, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    const-string v0, "androidx.appcompat.widget.Toolbar$e"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v10, v8, v11

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v10, 0x60

    invoke-static {v3, v10}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v3, v9}, Lcom/shabakaty/cinemana/ca1/Fix100;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    const-string v7, "a"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/16 v7, 0x13

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 22
    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Fix100;->headers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Fix100$3;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Fix100$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 24
    const-string p0, "Cinemana101"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloads actions host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Cinemana100"

    const-string v1, "downloads actions"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_0
    return-void
.end method
