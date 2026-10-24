.class public final Lcom/shabakaty/downloader/fn;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "BottomListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/shabakaty/downloader/fn$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/gn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/gn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fn;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gn;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/pl4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/aj4;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    instance-of p1, p1, Lcom/shabakaty/downloader/kc3;

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fn$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/fn$a;->a:Landroidx/databinding/ViewDataBinding;

    const/16 v0, 0xb

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/fn;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/databinding/ViewDataBinding;->D(ILjava/lang/Object;)Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 6

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0092

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "inflater"

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    if-eq p2, v5, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    .line 3
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v3, v2}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0d0091

    invoke-static {v0, p2, p1, v3, v2}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0d002f

    invoke-static {v0, p2, p1, v3, v2}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1, v3, v2}, Lcom/shabakaty/downloader/vd5;->n(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZI)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    .line 7
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/fn$a;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/fn$a;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method
