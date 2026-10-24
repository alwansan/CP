.class public final Lcom/shabakaty/downloader/jm1;
.super Lcom/shabakaty/downloader/af2;
.source "FranchisesView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/km1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jm1;->r:Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;

    sget v1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->M:I

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "from(context)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0d0089

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/shabakaty/downloader/vd5;->m(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/km1;

    return-object v0
.end method
