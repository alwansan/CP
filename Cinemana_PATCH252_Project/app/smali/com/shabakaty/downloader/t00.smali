.class public final Lcom/shabakaty/downloader/t00;
.super Lcom/shabakaty/downloader/af2;
.source "CinemanaPlayerControllerView.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/p00;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/t00;->r:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/t00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/t00;->r:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(context)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/t00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    const v2, 0x7f0d003a

    const/4 v3, 0x1

    .line 3
    invoke-static {v0, v2, v1, v3}, Lcom/shabakaty/downloader/vd5;->m(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/t00;->s:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    check-cast v0, Lcom/shabakaty/downloader/p00;

    .line 5
    invoke-static {v1}, Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;->y(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)Lcom/shabakaty/downloader/q10;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/p00;->H(Lcom/shabakaty/downloader/q10;)V

    return-object v0
.end method
