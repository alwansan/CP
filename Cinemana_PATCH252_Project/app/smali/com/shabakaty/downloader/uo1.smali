.class public final Lcom/shabakaty/downloader/uo1;
.super Ljava/lang/Object;
.source "GeneralNavigationExtensions.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroidx/navigation/c;",
            ">(",
            "Lcom/shabakaty/downloader/zw2<",
            "+TD;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uo1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/uo1$a;-><init>(Ljava/lang/String;)V

    const-string p1, "debugLabel"

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public static final b(Lcom/shabakaty/downloader/ax2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 2
    const-class v1, Landroidx/navigation/fragment/a;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/bx0;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/dt0;

    const/16 v3, 0x1bbe

    invoke-direct {v2, v0, v3, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/to1;->r:Lcom/shabakaty/downloader/to1;

    const-string v1, "COLLECTION_ARG"

    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v0, "Download Items Fragment"

    .line 7
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    return-void
.end method

.method public static final c(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 2
    const-class v1, Landroidx/navigation/fragment/a;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/pz0;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/dt0;

    const/16 v3, 0x1bbd

    invoke-direct {v2, v0, v3, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    const v0, 0x7f1200df

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, v2, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    const-string p1, "Downloads Fragment"

    .line 8
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    return-void
.end method

.method public static final d(Landroidx/navigation/NavController;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/x93;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/x93;

    const-string v2, "ShowMoreDataType"

    invoke-direct {v1, v2, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x1fa5

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1, v1}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void
.end method

.method public static final e(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simpleDraweeView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModel"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VideoModelArg"

    .line 1
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/uo1$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/uo1$b;-><init>(Landroidx/navigation/NavController;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/ol3;->f(Lcom/shabakaty/downloader/tm1;)Landroidx/navigation/g;

    move-result-object v0

    .line 3
    iget-object v1, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shabakaty/downloader/x93;

    const/4 v2, 0x0

    .line 5
    iget-object p2, p2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    new-instance v3, Lcom/shabakaty/downloader/x93;

    invoke-direct {v3, p1, p2}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/hl3;->a([Lcom/shabakaty/downloader/x93;)Landroidx/navigation/fragment/a$b;

    move-result-object p1

    const/16 p2, 0x13ed

    .line 8
    invoke-virtual {p0, p2, p3, v0, p1}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    return-void
.end method

.method public static synthetic f(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/shabakaty/downloader/x93;

    .line 1
    invoke-static {p3}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/uo1;->e(Landroidx/navigation/NavController;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final g(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const-string v0, "NavHostFragment.findNavController(this)"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/navigation/NavController;->h()Lcom/shabakaty/downloader/vw2;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vw2;->a()Lcom/shabakaty/downloader/fx3;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/fx3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final h(Lcom/shabakaty/downloader/ax2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 2
    const-class v1, Landroidx/navigation/fragment/a;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/a;

    .line 4
    const-class v1, Lcom/shabakaty/downloader/n54;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/dt0;

    const/16 v3, 0x1fa5

    invoke-direct {v2, v0, v3, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/wo1;->r:Lcom/shabakaty/downloader/wo1;

    const-string v1, "ShowMoreDataType"

    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v0, "Show More Fragment"

    .line 7
    invoke-static {v2, v0}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    return-void
.end method

.method public static final i(Lcom/shabakaty/downloader/dt0;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uo1$c;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/uo1$c;-><init>(I)V

    const/16 p1, 0x1451

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public static final j(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V
    .locals 7

    const-class v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    const-class v1, Landroidx/navigation/fragment/a;

    const-string v2, "context"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/uo1;->c(Lcom/shabakaty/downloader/ax2;Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/uo1;->b(Lcom/shabakaty/downloader/ax2;)V

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 4
    invoke-virtual {v2, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v2

    check-cast v2, Landroidx/navigation/fragment/a;

    .line 5
    const-class v3, Lcom/shabakaty/downloader/d15;

    invoke-static {v3}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x13ed

    invoke-direct {v4, v2, v5, v3}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/mp1;->r:Lcom/shabakaty/downloader/mp1;

    const-string v3, "VideoIDArg"

    invoke-virtual {v4, v3, v2}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v2, "Video Info Fragment"

    .line 8
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/zo1;->r:Lcom/shabakaty/downloader/zo1;

    const/16 v6, 0x1452

    invoke-virtual {v4, v6, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/jp1;->r:Lcom/shabakaty/downloader/jp1;

    const/16 v6, 0x1453

    invoke-virtual {v4, v6, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/dp1;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/dp1;-><init>(I)V

    const/16 v6, 0x1c21

    invoke-virtual {v4, v6, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/bp1;->r:Lcom/shabakaty/downloader/bp1;

    const/16 v6, 0x1c22

    invoke-virtual {v4, v6, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/hp1;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/hp1;-><init>(I)V

    const/16 v5, 0x2009

    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/fp1;->r:Lcom/shabakaty/downloader/fp1;

    const/16 v5, 0x1456

    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/zw2;->a(ILcom/shabakaty/downloader/tm1;)V

    .line 15
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 17
    invoke-virtual {v2, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v2

    check-cast v2, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 18
    const-class v4, Lcom/shabakaty/downloader/u60;

    invoke-static {v4}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v4

    .line 19
    new-instance v5, Lcom/shabakaty/downloader/dt0;

    const/16 v6, 0x13ee

    invoke-direct {v5, v2, v6, v4}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;ILcom/shabakaty/downloader/gc2;)V

    const v2, 0x7f1200a8

    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    iput-object p1, v5, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 22
    sget-object p1, Lcom/shabakaty/downloader/lp1;->r:Lcom/shabakaty/downloader/lp1;

    invoke-virtual {v5, v3, p1}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v2, "Comments Dialog"

    .line 23
    invoke-static {v5, v2}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 25
    iget-object v2, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 26
    invoke-virtual {v2, v1}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v1

    check-cast v1, Landroidx/navigation/fragment/a;

    .line 27
    const-class v2, Lcom/shabakaty/downloader/hb4;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    .line 28
    new-instance v4, Lcom/shabakaty/downloader/dt0;

    const/16 v5, 0x13ef

    invoke-direct {v4, v1, v5, v2}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/a;ILcom/shabakaty/downloader/gc2;)V

    .line 29
    sget-object v1, Lcom/shabakaty/downloader/xo1;->r:Lcom/shabakaty/downloader/xo1;

    const-string v2, "ACTOR_INFO_ARGUMENT"

    invoke-virtual {v4, v2, v1}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string v1, "Staff Info Fragment"

    .line 30
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    .line 32
    invoke-static {p0}, Lcom/shabakaty/downloader/uo1;->h(Lcom/shabakaty/downloader/ax2;)V

    .line 33
    iget-object v1, p0, Lcom/shabakaty/downloader/ax2;->h:Landroidx/navigation/i;

    .line 34
    invoke-virtual {v1, v0}, Landroidx/navigation/i;->c(Ljava/lang/Class;)Landroidx/navigation/h;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 35
    const-class v1, Lcom/shabakaty/downloader/f91;

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/shabakaty/downloader/dt0;

    const/16 v4, 0x13f2

    invoke-direct {v2, v0, v4, v1}, Lcom/shabakaty/downloader/dt0;-><init>(Landroidx/navigation/fragment/DialogFragmentNavigator;ILcom/shabakaty/downloader/gc2;)V

    const-string v0, ""

    .line 37
    iput-object v0, v2, Lcom/shabakaty/downloader/zw2;->a:Ljava/lang/CharSequence;

    .line 38
    invoke-virtual {v2, v3, p1}, Lcom/shabakaty/downloader/zw2;->b(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;)V

    const-string p1, "External Seasons Dialog"

    .line 39
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/uo1;->a(Lcom/shabakaty/downloader/zw2;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/ax2;->e(Lcom/shabakaty/downloader/zw2;)V

    return-void
.end method
