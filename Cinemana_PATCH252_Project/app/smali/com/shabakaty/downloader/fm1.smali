.class public final Lcom/shabakaty/downloader/fm1;
.super Lcom/shabakaty/downloader/af2;
.source "FranchisesRecyclerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tj<",
        "Ljava/util/List<",
        "Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;",
        ">;>;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;->A0(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;Lcom/shabakaty/downloader/tj;)V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
