.class public final Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FranchisesRecyclerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/bm1;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001d\u0010\u000b\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nRK\u0010\u0016\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0018\u00010\u000c2\u0016\u0010\u000f\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0018\u00010\u000c8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015RW\u0010\u001d\u001a\u0018\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0\u000c\u0018\u00010\u00172\u001c\u0010\u000f\u001a\u0018\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0\u000c\u0018\u00010\u00178F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/shabakaty/downloader/bm1;",
        "listener",
        "Lcom/shabakaty/downloader/qv4;",
        "setFranchisesListener",
        "Lcom/shabakaty/downloader/xt1;",
        "homeFranchisesAdapter$delegate",
        "Lcom/shabakaty/downloader/kf2;",
        "getHomeFranchisesAdapter",
        "()Lcom/shabakaty/downloader/xt1;",
        "homeFranchisesAdapter",
        "Lcom/shabakaty/downloader/tj;",
        "",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        "<set-?>",
        "franchises$delegate",
        "Lcom/shabakaty/downloader/hn3;",
        "getFranchises",
        "()Lcom/shabakaty/downloader/tj;",
        "setFranchises",
        "(Lcom/shabakaty/downloader/tj;)V",
        "franchises",
        "Landroidx/lifecycle/LiveData;",
        "franchisesLive$delegate",
        "getFranchisesLive",
        "()Landroidx/lifecycle/LiveData;",
        "setFranchisesLive",
        "(Landroidx/lifecycle/LiveData;)V",
        "franchisesLive",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic d1:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Y0:Lcom/shabakaty/downloader/kf2;

.field public Z0:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public a1:Lcom/shabakaty/downloader/bm1;

.field public final b1:Lcom/shabakaty/downloader/hn3;

.field public final c1:Lcom/shabakaty/downloader/hn3;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    const-class v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const-string v2, "franchises"

    const-string v3, "getFranchises()Lcom/shabakaty/cinemana/data/base/BaseModel;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2
    const-class v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const-string v2, "franchisesLive"

    const-string v3, "getFranchisesLive()Landroidx/lifecycle/LiveData;"

    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/downloader/a41;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcom/shabakaty/downloader/xc2;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/gm1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/gm1;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Y0:Lcom/shabakaty/downloader/kf2;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/fm1;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/fm1;-><init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Z0:Lcom/shabakaty/downloader/tm1;

    const/4 v4, 0x0

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 6
    sget-object v3, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/hm1;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/hm1;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V

    .line 9
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->b1:Lcom/shabakaty/downloader/hn3;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/im1;

    invoke-direct {p1, v1, p0}, Lcom/shabakaty/downloader/im1;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->c1:Lcom/shabakaty/downloader/hn3;

    .line 12
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->getHomeFranchisesAdapter()Lcom/shabakaty/downloader/xt1;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public static final synthetic A0(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;Lcom/shabakaty/downloader/tj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->setFranchises(Lcom/shabakaty/downloader/tj;)V

    return-void
.end method

.method private final getFranchises()Lcom/shabakaty/downloader/tj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->b1:Lcom/shabakaty/downloader/hn3;

    sget-object v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tj;

    return-object v0
.end method

.method private final getHomeFranchisesAdapter()Lcom/shabakaty/downloader/xt1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->Y0:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xt1;

    return-object v0
.end method

.method private final setFranchises(Lcom/shabakaty/downloader/tj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->b1:Lcom/shabakaty/downloader/hn3;

    sget-object v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public V0(Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;)V
    .locals 1

    const-string v0, "franchiseItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->a1:Lcom/shabakaty/downloader/bm1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/bm1;->V0(Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;)V

    :goto_0
    return-void
.end method

.method public final getFranchisesLive()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->c1:Lcom/shabakaty/downloader/hn3;

    sget-object v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/hn3;->a(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setFranchisesListener(Lcom/shabakaty/downloader/bm1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->a1:Lcom/shabakaty/downloader/bm1;

    return-void
.end method

.method public final setFranchisesLive(Landroidx/lifecycle/LiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/shabakaty/downloader/tj<",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->c1:Lcom/shabakaty/downloader/hn3;

    sget-object v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->d1:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lcom/shabakaty/downloader/hn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/jd2;Ljava/lang/Object;)V

    return-void
.end method
