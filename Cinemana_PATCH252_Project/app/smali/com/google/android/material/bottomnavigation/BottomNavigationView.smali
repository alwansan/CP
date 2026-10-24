.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lcom/shabakaty/downloader/px2;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f1302cf

    const v1, 0x7f04007e

    .line 1
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/shabakaty/downloader/px2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    sget-object v4, Lcom/shabakaty/downloader/yl3;->d:[I

    const/4 p1, 0x0

    new-array v7, p1, [I

    const v6, 0x7f1302cf

    const v5, 0x7f04007e

    move-object v3, p2

    .line 4
    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/om4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lcom/shabakaty/downloader/wn4;

    move-result-object p2

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/wn4;->a(IZ)Z

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 7
    iget-object p1, p2, Lcom/shabakaty/downloader/wn4;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/px2;->getMenuView()Landroidx/appcompat/view/menu/j;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kn;

    .line 2
    iget-boolean v1, v0, Lcom/shabakaty/downloader/kn;->R:Z

    if-eq v1, p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/kn;->setItemHorizontalTranslationEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/px2;->getPresenter()Lcom/shabakaty/downloader/ox2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ox2;->d(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/px2;->setOnItemReselectedListener(Lcom/shabakaty/downloader/px2$b;)V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/px2;->setOnItemSelectedListener(Lcom/shabakaty/downloader/px2$c;)V

    return-void
.end method
