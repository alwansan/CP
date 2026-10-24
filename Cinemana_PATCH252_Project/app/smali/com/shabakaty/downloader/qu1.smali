.class public final synthetic Lcom/shabakaty/downloader/qu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/tu1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu1;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/qu1;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lcom/shabakaty/downloader/qu1;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "it"

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/tu1;->l:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/StatusInfo$StatusComponent;->serviceStatus:Lcom/shabakaty/downloader/q14;

    if-nez p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v1, p1, Lcom/shabakaty/downloader/q14$a;

    if-eqz v1, :cond_3

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/q14$a;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->j:Lcom/shabakaty/downloader/ff3;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_service_is_down"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wt1;->W0(Lcom/shabakaty/downloader/q14;)V

    goto :goto_0

    .line 11
    :cond_3
    instance-of v1, p1, Lcom/shabakaty/downloader/q14$b$b;

    if-eqz v1, :cond_4

    .line 12
    check-cast p1, Lcom/shabakaty/downloader/q14$b$b;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/wt1;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wt1;->W1(Lcom/shabakaty/downloader/q14$b$b;)V

    :cond_4
    :goto_0
    return-void

    .line 14
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    check-cast p1, Ljava/lang/Throwable;

    .line 15
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 17
    iget-boolean p1, v0, Lcom/shabakaty/downloader/tu1;->l:Z

    if-nez p1, :cond_5

    .line 18
    iput-boolean v2, v0, Lcom/shabakaty/downloader/tu1;->l:Z

    .line 19
    iget-object p1, v0, Lcom/shabakaty/downloader/tu1;->h:Lcom/shabakaty/downloader/ou1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ou1;->a()Lcom/shabakaty/downloader/f74;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    new-instance v1, Lcom/shabakaty/downloader/qu1;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/qu1;-><init>(Lcom/shabakaty/downloader/tu1;I)V

    new-instance v2, Lcom/shabakaty/downloader/qu1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/shabakaty/downloader/qu1;-><init>(Lcom/shabakaty/downloader/tu1;I)V

    .line 20
    new-instance v3, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 21
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 22
    iget-object p1, v0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 23
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 24
    :cond_5
    iget-object p1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 25
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->g(Lcom/shabakaty/downloader/xv2;)V

    return-void

    .line 26
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 27
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 29
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem;

    .line 30
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    .line 31
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->sliderItem:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;

    goto/16 :goto_1

    .line 32
    :cond_7
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_8

    goto/16 :goto_1

    .line 33
    :cond_8
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;

    .line 34
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->featuredMovies:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;

    goto/16 :goto_1

    .line 35
    :cond_9
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    .line 36
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->ad:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;

    goto/16 :goto_1

    .line 37
    :cond_b
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_c

    goto/16 :goto_1

    .line 38
    :cond_c
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;

    .line 39
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->featuredTvShows:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;

    goto :goto_1

    .line 40
    :cond_d
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_e

    goto :goto_1

    .line 41
    :cond_e
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;

    .line 42
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->recentlyAdded:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;

    goto :goto_1

    .line 43
    :cond_f
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_10

    goto :goto_1

    .line 44
    :cond_10
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$SecondGroupsSlice;

    const-string v2, "homeItem"

    .line 45
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v2, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->secondGroupSlice:Ljava/util/List;

    if-nez v2, :cond_11

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->secondGroupSlice:Ljava/util/List;

    .line 48
    :cond_11
    iget-object v1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->secondGroupSlice:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_12
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_13

    goto :goto_1

    :cond_13
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    .line 50
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->franchises:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;

    goto :goto_1

    .line 51
    :cond_14
    instance-of v1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    if-nez v1, :cond_15

    goto :goto_1

    :cond_15
    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    .line 52
    iput-object p1, v1, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;->bottomGroups:Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;

    .line 53
    :cond_16
    :goto_1
    iget-object p1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->f(Lcom/shabakaty/downloader/xv2;)V

    return-void

    .line 54
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    check-cast p1, Lcom/shabakaty/downloader/lf4;

    .line 55
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, v0, Lcom/shabakaty/downloader/tu1;->m:Lcom/shabakaty/downloader/xv2;

    .line 57
    new-instance v10, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/cinemana/ui/home_fragment/HomeItems;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Slider;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedMovies;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Ad;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$FeaturedTvShows;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Horizontal$RecentlyAdded;Ljava/util/List;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$Franchises;Lcom/shabakaty/cinemana/ui/home_fragment/HomeItem$BottomGroups;I)V

    invoke-virtual {p1, v10}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void

    .line 58
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/qu1;->s:Lcom/shabakaty/downloader/tu1;

    check-cast p1, Ljava/lang/Throwable;

    .line 59
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-boolean v1, v0, Lcom/shabakaty/downloader/tu1;->l:Z

    .line 61
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
