.class public final Lcom/shabakaty/downloader/gm1;
.super Lcom/shabakaty/downloader/af2;
.source "FranchisesRecyclerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xt1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/gm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xt1;

    iget-object v1, p0, Lcom/shabakaty/downloader/gm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesRecyclerView;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/xt1;-><init>(ILcom/shabakaty/downloader/bm1;)V

    return-object v0
.end method
