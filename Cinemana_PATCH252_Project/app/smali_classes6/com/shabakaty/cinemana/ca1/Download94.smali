.class public final Lcom/shabakaty/cinemana/ca1/Download94;
.super Ljava/lang/Object;
.source "Download94.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Download94$State;,
        Lcom/shabakaty/cinemana/ca1/Download94$Fast;,
        Lcom/shabakaty/cinemana/ca1/Download94$PaintView;
    }
.end annotation


# static fields
.field static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/shabakaty/cinemana/ca1/Download94$State;",
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

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Download94;->states:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bg(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 5
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p0, 0x41600000    # 14.0f

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p0, 0x1

    const v1, -0xc7b9b0

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->legacy(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static dp(Landroid/content/Context;F)I
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object p0

    :catch_0
    move-exception v0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/Download94;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static install(Landroid/view/View;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Download94$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/shabakaty/cinemana/ca1/Download94$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$install$0(Landroid/view/View;)V
    .locals 4

    .line 7
    :try_start_0
    const-string v0, "downloads_recycler"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "collections_recycler"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Download94;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Download94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/Download94$State;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->header()V

    return-void

    :cond_2
    new-instance v2, Lcom/shabakaty/cinemana/ca1/Download94$State;

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/cinemana/ca1/Download94$State;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/shabakaty/cinemana/ca1/Download94$State;->header()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloads_install_failed"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
