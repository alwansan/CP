.class public final Lcom/shabakaty/downloader/zy3;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "FragmentsPagerAdapters.kt"


# instance fields
.field public i:Lcom/shabakaty/downloader/az3;

.field public j:Lcom/shabakaty/downloader/az3;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3

    const-string v1, "MEDIA_TYPE_ARG"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/az3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/az3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    :cond_0
    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/az3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/az3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    .line 9
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Lcom/shabakaty/downloader/uy3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/uy3;-><init>()V

    :goto_0
    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ll1;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/zy3;->i:Lcom/shabakaty/downloader/az3;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/zy3;->j:Lcom/shabakaty/downloader/az3;

    :goto_0
    return-void
.end method
