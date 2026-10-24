.class public final Lcom/shabakaty/downloader/im1;
.super Lcom/shabakaty/downloader/g53;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/g53<",
        "Landroidx/lifecycle/LiveData<",
        "Lcom/shabakaty/downloader/tj<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V
    .locals 0

    iput-object p2, p0, Lcom/shabakaty/downloader/im1;->b:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/g53;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/jd2<",
            "*>;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;>;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    check-cast p3, Landroidx/lifecycle/LiveData;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/im1;->b:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->getFranchisesLive()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/im1;->b:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->getFranchisesLive()Landroidx/lifecycle/LiveData;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Z0:Lcom/shabakaty/downloader/tm1;

    new-instance v0, Lcom/shabakaty/downloader/em1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/shabakaty/downloader/em1;-><init>(Lcom/shabakaty/downloader/tm1;I)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/r9;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->getFranchisesLive()Landroidx/lifecycle/LiveData;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Z0:Lcom/shabakaty/downloader/tm1;

    new-instance v0, Lcom/shabakaty/downloader/em1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/em1;-><init>(Lcom/shabakaty/downloader/tm1;I)V

    invoke-virtual {p3, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    :cond_3
    :goto_1
    return-void
.end method
