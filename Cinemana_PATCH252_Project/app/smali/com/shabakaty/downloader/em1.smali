.class public final synthetic Lcom/shabakaty/downloader/em1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/r53;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/by0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/em1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tm1;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/em1;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/em1;->a:I

    const-string v1, "$tmp0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    sget-object v2, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    sget-object v2, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    sget-object v2, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/em1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/by0;

    check-cast p1, Ljava/util/List;

    const-string v1, "this$0"

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v2

    new-instance v5, Lcom/shabakaty/downloader/yx0;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v0, v1}, Lcom/shabakaty/downloader/yx0;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/by0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/zx0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/zx0;-><init>(Lcom/shabakaty/downloader/by0;)V

    check-cast p1, Lcom/shabakaty/downloader/l92;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
