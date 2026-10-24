.class public final Lcom/shabakaty/downloader/bu3;
.super Lcom/shabakaty/downloader/ek;
.source "RootHomeFragment.kt"


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
        "Lcom/shabakaty/downloader/bu3;",
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

    const v0, 0x7f0d0078

    return v0
.end method

.method public Y1()I
    .locals 1

    const v0, 0x7f0a0205

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

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

    const-string v1, "context"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Landroidx/navigation/NavController;->k:Landroidx/navigation/i;

    const-string v3, "navigatorProvider"

    .line 6
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/ax2;

    const v4, 0x7f0a0205

    const/16 v5, 0x44d

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/ax2;-><init>(Landroidx/navigation/i;II)V

    .line 8
    const-class v2, Landroidx/navigation/fragment/a;

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v4, v3, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 11
    invoke-virtual {v4, v2}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v4

    check-cast v4, Landroidx/navigation/fragment/a;

    .line 12
    const-class v6, Lcom/shabakaty/downloader/vt1;

    invoke-static {v6}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    .line 13
    new-instance v7, Lcom/shabakaty/downloader/dt0;

    invoke-direct {v7, v4, v5, v6}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v4, 0x7f120024

    .line 14
    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    iput-object v4, v7, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 16
    invoke-static {v7, v5}, Lcom/shabakaty/downloader/uo1;->i(Lcom/shabakaty/downloader/dt0;I)V

    .line 17
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/hp1;

    invoke-direct {v4, v5}, Lcom/shabakaty/downloader/hp1;-><init>(I)V

    const/16 v5, 0x2009

    invoke-virtual {v7, v5, v4}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 19
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v4, Lcom/shabakaty/downloader/du1;->r:Lcom/shabakaty/downloader/du1;

    const/16 v5, 0x4b1

    invoke-virtual {v7, v5, v4}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    const-string v4, "Home Fragment"

    .line 21
    invoke-static {v7, v4}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 23
    invoke-static {v3}, Lcom/shabakaty/downloader/uo1;->h(Lcom/shabakaty/downloader/ax2;)V

    .line 24
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, v3, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 26
    invoke-virtual {v1, v2}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/a;

    .line 27
    const-class v2, Lcom/shabakaty/downloader/cm1;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    .line 28
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x44f

    invoke-direct {v4, v1, v5, v2}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v1, 0x7f12008d

    .line 29
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    iput-object v1, v4, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 31
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/shabakaty/downloader/bu1;->r:Lcom/shabakaty/downloader/bu1;

    const-string v1, "COLLECTIONS_ARG"

    invoke-virtual {v4, v1, v0}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v0, "Collections Fragment"

    .line 33
    invoke-static {v4, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 35
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/uo1;->j(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 36
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ax2;->d()Landroidx/navigation/d;

    move-result-object p2

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p2, v0}, Landroidx/navigation/NavController;->p(Landroidx/navigation/d;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
