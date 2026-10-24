.class public final Lcom/shabakaty/downloader/zv0;
.super Lcom/shabakaty/downloader/ej;
.source "DownloadCollectionImagesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ej<",
        "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;",
        "Lcom/shabakaty/downloader/k52;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/zv0;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/r60;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/shabakaty/downloader/ej;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/dj;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/zv0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    return v0

    .line 1
    :pswitch_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ej;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/ej;->h(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemViewType(I)I

    move-result p1

    :pswitch_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public i(I)I
    .locals 0

    iget p1, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f0d00a9

    return p1

    :pswitch_0
    const p1, 0x7f0d00a3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lcom/shabakaty/downloader/ej$b;I)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    return-void

    :pswitch_0
    const-string v0, "holder"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ej;->j(Lcom/shabakaty/downloader/ej$b;I)V

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/u52;

    iget-object p2, p0, Lcom/shabakaty/downloader/zv0;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/u52;->G(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zv0;->j(Lcom/shabakaty/downloader/ej$b;I)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zv0;->j(Lcom/shabakaty/downloader/ej$b;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/k52;

    iget-object v0, v0, Lcom/shabakaty/downloader/k52;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/shabakaty/downloader/ck;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ck;-><init>(Lcom/shabakaty/downloader/zv0;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/zv0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Lcom/shabakaty/downloader/ej$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/ej$b;->a:Landroidx/databinding/ViewDataBinding;

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/k52;

    iget-object v0, v0, Lcom/shabakaty/downloader/k52;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
