.class public final Lcom/shabakaty/downloader/au3;
.super Lcom/shabakaty/downloader/ek;
.source "RootCategoriesFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/downloader/au3;",
        "Lcom/shabakaty/downloader/ek;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ek;-><init>()V

    return-void
.end method


# virtual methods
.method public X1()I
    .locals 1

    const v0, 0x7f0d0069

    return v0
.end method

.method public Y1()I
    .locals 1

    const v0, 0x7f0a00d4

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ek;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ek;->w:Landroidx/navigation/fragment/NavHostFragment;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/fragment/NavHostFragment;->Y1()Landroidx/navigation/NavController;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext()"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    const-string v1, "navigatorProvider"

    .line 6
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/ax2;

    const v2, 0x7f0a00d4

    const/16 v3, 0x835

    invoke-direct {v1, v0, v2, v3}, Lcom/shabakaty/downloader/ax2;-><init>(Landroidx/navigation/i;II)V

    .line 8
    const-class v0, Landroidx/navigation/fragment/a;

    iget-object v2, v1, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 9
    invoke-virtual {v2, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v2

    check-cast v2, Landroidx/navigation/fragment/a;

    .line 10
    const-class v4, Lcom/shabakaty/downloader/bx;

    invoke-static {v4}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/shabakaty/downloader/dt0;

    invoke-direct {v5, v2, v3, v4}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v2, 0x7f120024

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v5, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/fx;->r:Lcom/shabakaty/downloader/fx;

    const/16 v4, 0x899

    invoke-virtual {v5, v4, v3}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    const-string v3, "Categories Fragment"

    .line 15
    invoke-static {v5, v3}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 17
    iget-object v3, v1, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 18
    invoke-virtual {v3, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 19
    const-class v3, Lcom/shabakaty/downloader/ox;

    invoke-static {v3}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    .line 20
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x836

    invoke-direct {v4, v0, v5, v3}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 21
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    iput-object v0, v4, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 23
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/uo1;->i(Lcom/shabakaty/downloader/dt0;I)V

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/dx;->r:Lcom/shabakaty/downloader/dx;

    const-string v2, "CATEGORY_ITEM_ARG"

    invoke-virtual {v4, v2, v0}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v0, "Category Details Fragment"

    .line 25
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 27
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/uo1;->j(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 28
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object p2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
