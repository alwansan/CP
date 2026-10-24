.class public final Lcom/shabakaty/downloader/c32$c;
.super Ljava/lang/Object;
.source "InternalSeasonFragment.kt"

# interfaces
.implements Landroidx/navigation/NavController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/c32;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/c32;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c32;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/c32$c;->r:Lcom/shabakaty/downloader/c32;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Landroidx/navigation/NavController;Landroidx/navigation/c;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "destination"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Landroidx/navigation/c;->t:I

    const/16 p2, 0x13ed

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/c32$c;->r:Lcom/shabakaty/downloader/c32;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c32;->h2()Lcom/shabakaty/downloader/d41;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/c32$c;->r:Lcom/shabakaty/downloader/c32;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    const-string p2, "NavHostFragment.findNavController(this)"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
