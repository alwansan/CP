.class public final Lcom/shabakaty/downloader/hm1;
.super Lcom/shabakaty/downloader/g53;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/g53<",
        "Lcom/shabakaty/downloader/tj<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hm1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/hm1;->c:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

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
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/shabakaty/downloader/tj;

    check-cast p2, Lcom/shabakaty/downloader/tj;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 3
    check-cast p2, Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/hm1;->c:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    invoke-static {p1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    goto :goto_5

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/shabakaty/downloader/hm1;->c:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    invoke-static {p2}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/hm1;->c:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    if-nez p3, :cond_4

    move-object v0, p1

    goto :goto_3

    .line 7
    :cond_4
    iget-object v0, p3, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/util/List;

    :goto_3
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p3, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    iget-object p1, p3, Lcom/shabakaty/downloader/tj;->a:Lcom/shabakaty/downloader/tj$a;

    .line 10
    :goto_4
    invoke-static {p2, v0, v1, p1}, Lcom/shabakaty/downloader/fo3;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/lang/Integer;Lcom/shabakaty/downloader/tj$a;)V

    :goto_5
    return-void
.end method
