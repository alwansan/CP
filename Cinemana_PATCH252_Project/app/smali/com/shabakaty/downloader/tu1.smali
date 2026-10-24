.class public final Lcom/shabakaty/downloader/tu1;
.super Lcom/shabakaty/downloader/cl2;
.source "HomePageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/cl2<",
        "Lcom/shabakaty/downloader/wt1;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lcom/shabakaty/downloader/ou1;

.field public final i:Lcom/shabakaty/downloader/ox4;

.field public final j:Lcom/shabakaty/downloader/ff3;

.field public final k:Lcom/shabakaty/downloader/n24;

.field public l:Z

.field public m:Lcom/shabakaty/downloader/xv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xv2<",
            "Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ou1;Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/ff3;Lcom/shabakaty/downloader/n24;Lcom/shabakaty/downloader/al2;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "homePageUseCases"

    invoke-static {v1, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "userActionsUseCases"

    invoke-static {v2, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "prefsManager"

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "settings"

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "loginStateObserver"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v0, v5}, Lcom/shabakaty/downloader/cl2;-><init>(Lcom/shabakaty/downloader/al2;)V

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/tu1;->h:Lcom/shabakaty/downloader/ou1;

    .line 3
    iput-object v2, v0, Lcom/shabakaty/downloader/tu1;->i:Lcom/shabakaty/downloader/ox4;

    .line 4
    iput-object v3, v0, Lcom/shabakaty/downloader/tu1;->j:Lcom/shabakaty/downloader/ff3;

    .line 5
    iput-object v4, v0, Lcom/shabakaty/downloader/tu1;->k:Lcom/shabakaty/downloader/n24;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/xv2;

    new-instance v12, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;Ljava/util/List;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;I)V

    invoke-direct {v1, v12}, Lcom/shabakaty/downloader/xv2;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/downloader/hl3;->e(Lcom/shabakaty/downloader/o35;)Lcom/shabakaty/downloader/se0;

    move-result-object v13

    new-instance v1, Lcom/shabakaty/downloader/ru1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/ru1;-><init>(Lcom/shabakaty/downloader/tu1;Lcom/shabakaty/downloader/ud0;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v13 .. v18}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void
.end method


# virtual methods
.method public n(Lcom/shabakaty/usermanagement/utils/LoginState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->sliderItem:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tu1;->p()V

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->h:Lcom/shabakaty/downloader/ou1;

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n24;->c()Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/shabakaty/cinemana/data/db/settings/AppSettingsEntity;->language:Lcom/shabakaty/downloader/tx4;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/tx4;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v4, v3, [Lcom/shabakaty/downloader/qf1;

    .line 7
    iget-object v5, v1, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    .line 8
    iget-object v6, v1, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v6

    .line 9
    iget-object v6, v6, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    const-string v7, "cacheable-for-authorized, max-age=900"

    .line 10
    invoke-interface {v5, v6, v7}, Lcom/shabakaty/downloader/k9;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v5

    .line 11
    sget-object v6, Lcom/shabakaty/downloader/hu1;->r:Lcom/shabakaty/downloader/hu1;

    .line 12
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/s74;

    invoke-direct {v8, v5, v6}, Lcom/shabakaty/downloader/s74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    const-wide/16 v5, 0xa

    .line 14
    new-instance v9, Lcom/shabakaty/downloader/yg1;

    invoke-direct {v9, v8, v5, v6}, Lcom/shabakaty/downloader/yg1;-><init>(Lcom/shabakaty/downloader/qf1;J)V

    .line 15
    iget-object v5, v1, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v6, Lcom/shabakaty/downloader/hx;

    const/4 v8, 0x2

    invoke-direct {v6, v5, v8}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-virtual {v9, v6}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/shabakaty/downloader/bh1;

    invoke-direct {v6, v5}, Lcom/shabakaty/downloader/bh1;-><init>(Lcom/shabakaty/downloader/qf1;)V

    .line 17
    sget-object v5, Lcom/shabakaty/downloader/nu1;->y:Lcom/shabakaty/downloader/nu1;

    new-instance v9, Lcom/shabakaty/downloader/ou1$a;

    invoke-direct {v9, v5}, Lcom/shabakaty/downloader/ou1$a;-><init>(Lcom/shabakaty/downloader/tm1;)V

    .line 18
    new-instance v5, Lcom/shabakaty/downloader/v74;

    invoke-direct {v5, v6, v9}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 19
    invoke-virtual {v5}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    const-string v6, "apiServices\n\t\t\t\t.getSlid\u2026Slider)\n\t\t\t\t.toFlowable()"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v5}, Lcom/shabakaty/downloader/uv3;->e(Lcom/shabakaty/downloader/qf1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    .line 21
    sget-object v6, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 22
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 23
    iget-object v5, v1, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    .line 24
    iget-object v10, v1, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v10

    .line 25
    iget-object v10, v10, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 26
    invoke-interface {v5, v10}, Lcom/shabakaty/downloader/k9;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v5

    .line 27
    iget-object v10, v1, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v11, Lcom/shabakaty/downloader/hx;

    const/4 v12, 0x3

    invoke-direct {v11, v10, v12}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v10, Lcom/shabakaty/downloader/v74;

    invoke-direct {v10, v5, v11}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 29
    invoke-virtual {v10}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    const-string v10, "apiServices\n\t\t\t\t.getRece\u2026yAdded)\n\t\t\t\t.toFlowable()"

    invoke-static {v5, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v5}, Lcom/shabakaty/downloader/uv3;->e(Lcom/shabakaty/downloader/qf1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v4, v10

    .line 32
    iget-object v5, v1, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v5

    .line 33
    iget-object v5, v5, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 34
    iget-object v11, v1, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    .line 35
    invoke-interface {v11, v2, v5, v7}, Lcom/shabakaty/downloader/k9;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    sget-object v5, Lcom/shabakaty/downloader/mu1;->s:Lcom/shabakaty/downloader/mu1;

    .line 37
    new-instance v7, Lcom/shabakaty/downloader/v74;

    invoke-direct {v7, v2, v5}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 38
    new-instance v2, Lcom/shabakaty/downloader/gu1;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/gu1;-><init>(Lcom/shabakaty/downloader/ou1;)V

    .line 39
    new-instance v5, Lcom/shabakaty/downloader/v74;

    invoke-direct {v5, v7, v2}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 40
    sget-object v2, Lcom/shabakaty/downloader/ku1;->s:Lcom/shabakaty/downloader/ku1;

    .line 41
    new-instance v7, Lcom/shabakaty/downloader/s74;

    invoke-direct {v7, v5, v2}, Lcom/shabakaty/downloader/s74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 42
    sget-object v2, Lcom/shabakaty/downloader/iu1;->r:Lcom/shabakaty/downloader/iu1;

    invoke-virtual {v7, v2}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v2

    .line 43
    sget-object v5, Lcom/shabakaty/downloader/lu1;->s:Lcom/shabakaty/downloader/lu1;

    invoke-virtual {v2, v5}, Lcom/shabakaty/downloader/qf1;->e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v2

    .line 44
    invoke-static {v2}, Lcom/shabakaty/downloader/uv3;->e(Lcom/shabakaty/downloader/qf1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v2

    aput-object v2, v4, v8

    .line 45
    iget-object v2, v1, Lcom/shabakaty/downloader/ou1;->c:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/n24;->e()Lcom/shabakaty/downloader/ia3;

    move-result-object v2

    .line 46
    iget-object v2, v2, Lcom/shabakaty/downloader/ia3;->a:Ljava/lang/String;

    .line 47
    iget-object v5, v1, Lcom/shabakaty/downloader/ou1;->a:Lcom/shabakaty/downloader/k9;

    const-string v7, "cacheable-for-authorized, max-age=1800"

    .line 48
    invoke-interface {v5, v2, v7}, Lcom/shabakaty/downloader/k9;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 49
    iget-object v1, v1, Lcom/shabakaty/downloader/ou1;->b:Lcom/shabakaty/downloader/qm2;

    new-instance v5, Lcom/shabakaty/downloader/hx;

    invoke-direct {v5, v1, v3}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, v2, v5}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 51
    invoke-virtual {v1}, Lcom/shabakaty/downloader/f74;->n()Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    const-string v2, "apiServices\n\t\t\t\t.getFran\u2026chises)\n\t\t\t\t.toFlowable()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->e(Lcom/shabakaty/downloader/qf1;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    aput-object v1, v4, v12

    .line 54
    new-instance v14, Lcom/shabakaty/downloader/eg1;

    invoke-direct {v14, v4}, Lcom/shabakaty/downloader/eg1;-><init>([Ljava/lang/Object;)V

    .line 55
    sget-object v15, Lcom/shabakaty/downloader/ju1;->s:Lcom/shabakaty/downloader/ju1;

    .line 56
    sget v1, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v2, "maxConcurrency"

    .line 57
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    const-string v2, "bufferSize"

    .line 58
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 59
    instance-of v2, v14, Lcom/shabakaty/downloader/hx3;

    if-eqz v2, :cond_1

    .line 60
    check-cast v14, Lcom/shabakaty/downloader/hx3;

    invoke-interface {v14}, Lcom/shabakaty/downloader/hx3;->call()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/shabakaty/downloader/bg1;->s:Lcom/shabakaty/downloader/qf1;

    goto :goto_1

    .line 62
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/tg1$a;

    invoke-direct {v2, v1, v15}, Lcom/shabakaty/downloader/tg1$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/in1;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/cg1;

    const/16 v16, 0x0

    move-object v13, v2

    move/from16 v17, v1

    move/from16 v18, v1

    invoke-direct/range {v13 .. v18}, Lcom/shabakaty/downloader/cg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;ZII)V

    :goto_0
    move-object v1, v2

    .line 64
    :goto_1
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/qf1;->j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/shabakaty/downloader/n7;->a()Lcom/shabakaty/downloader/wx3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qf1;->f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/shabakaty/downloader/qu1;

    invoke-direct {v2, v0, v9}, Lcom/shabakaty/downloader/qu1;-><init>(Lcom/shabakaty/downloader/tu1;I)V

    .line 67
    sget-object v3, Lcom/shabakaty/downloader/do1;->f:Lcom/shabakaty/downloader/gl2;

    sget-object v4, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    .line 68
    new-instance v5, Lcom/shabakaty/downloader/yf1;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/shabakaty/downloader/yf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/gl2;Lcom/shabakaty/downloader/j2;)V

    .line 69
    new-instance v1, Lcom/shabakaty/downloader/qu1;

    invoke-direct {v1, v0, v10}, Lcom/shabakaty/downloader/qu1;-><init>(Lcom/shabakaty/downloader/tu1;I)V

    .line 70
    sget-object v2, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    invoke-virtual {v5, v1, v2, v4, v4}, Lcom/shabakaty/downloader/qf1;->c(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 71
    new-instance v3, Lcom/shabakaty/downloader/r00;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/r00;-><init>(Lcom/shabakaty/downloader/tu1;)V

    .line 72
    invoke-virtual {v1, v2, v2, v3, v4}, Lcom/shabakaty/downloader/qf1;->c(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 73
    new-instance v3, Lcom/shabakaty/downloader/qu1;

    invoke-direct {v3, v0, v8}, Lcom/shabakaty/downloader/qu1;-><init>(Lcom/shabakaty/downloader/tu1;I)V

    .line 74
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/shabakaty/downloader/qf1;->c(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/qf1;

    move-result-object v1

    .line 75
    sget-object v3, Lcom/shabakaty/downloader/do1;->e:Lcom/shabakaty/downloader/xc0;

    sget-object v5, Lcom/shabakaty/downloader/jg1;->r:Lcom/shabakaty/downloader/jg1;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/shabakaty/downloader/qf1;->g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v1

    .line 76
    iget-object v2, v0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 77
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    return-void
.end method
