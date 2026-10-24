.class public final Lcom/shabakaty/downloader/ew0;
.super Lcom/shabakaty/downloader/hj;
.source "DownloadCollectionsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/vj;
.implements Lcom/shabakaty/downloader/aw0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/hj<",
        "Lcom/shabakaty/downloader/cj1;",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/jz0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0d0070

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    const p1, 0x7f0d0070

    .line 2
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Z1()Lcom/shabakaty/downloader/vj;
    .locals 0

    return-object p0
.end method

.method public d2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/jz0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/downloader/jz0;

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/hj;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/ez0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/jz0;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/ez0;-><init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/jz0;)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/hj;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    check-cast p2, Lcom/shabakaty/downloader/cj1;

    iget-object p2, p2, Lcom/shabakaty/downloader/cj1;->M:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vj$a;->a(Lcom/shabakaty/downloader/vj;I)V

    return-void
.end method

.method public s(Lcom/shabakaty/downloader/gz0;)V
    .locals 10

    const-string v0, "downloadsCollectionItem"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/pl4;

    const v1, 0x7f120212

    .line 1
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(R.string.rename_txt)"

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "text"

    .line 2
    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 3
    new-instance v5, Lcom/shabakaty/downloader/cw0;

    invoke-direct {v5, p0, p1}, Lcom/shabakaty/downloader/cw0;-><init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V

    .line 4
    new-instance v8, Lcom/shabakaty/downloader/pl4;

    const/4 v3, 0x0

    const-string v6, ""

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    aput-object v8, v0, v2

    const/4 v2, 0x1

    const v3, 0x7f1200d1

    .line 5
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "getString(R.string.delete_txt)"

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v6, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 7
    new-instance v7, Lcom/shabakaty/downloader/bw0;

    invoke-direct {v7, p0, p1}, Lcom/shabakaty/downloader/bw0;-><init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/pl4;

    const/4 v5, 0x0

    const-string v8, ""

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/pl4;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;Ljava/lang/String;Z)V

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/on;

    invoke-direct {v1}, Lcom/shabakaty/downloader/on;-><init>()V

    const-string v2, "items"

    .line 11
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/gz0;->s:Ljava/lang/String;

    const-string v2, "title"

    .line 13
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fragmentManager"

    .line 15
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, v1, Lcom/shabakaty/downloader/on;->O:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->z0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 18
    iput-object p1, v1, Lcom/shabakaty/downloader/on;->N:Ljava/util/List;

    const-string p1, "listBottomSheet"

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/shabakaty/downloader/on;->c2(Landroidx/fragment/app/q;Ljava/lang/String;)V

    return-void
.end method

.method public w1(Lcom/shabakaty/downloader/gz0;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/gz0;->u:Ljava/util/List;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_3

    new-array v1, v3, [Lcom/shabakaty/downloader/x93;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/x93;

    const-string v4, "COLLECTION_ARG"

    invoke-direct {v3, v4, p1}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/ml3;->a([Lcom/shabakaty/downloader/x93;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "$this$findNavController"

    .line 5
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment;->X1(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    const-string v2, "NavHostFragment.findNavController(this)"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1bbe

    .line 7
    invoke-virtual {v1, v2, p1, v0, v0}, Landroidx/navigation/NavController;->i(ILandroid/os/Bundle;Landroidx/navigation/g;Landroidx/navigation/h$a;)V

    goto :goto_3

    :cond_3
    const p1, 0x7f12008c

    .line 8
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ew0;->q(I)V

    :goto_3
    return-void
.end method
