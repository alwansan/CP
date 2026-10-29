.class public final Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;
.super Ljava/lang/Object;
.source "NuvioPosterUpdateCallback.java"
.implements Lcom/shabakaty/downloader/ni2;

.field private final a:Lcom/shabakaty/downloader/jj;

.method public constructor <init>(Lcom/shabakaty/downloader/jj;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    return-void
.end method

.method private sync()V
    .locals 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    iget-object v1, v0, Lcom/shabakaty/downloader/jj;->d:Landroidx/recyclerview/widget/e;
    iget-object v1, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, v0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->sync()V
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(IILjava/lang/Object;)V
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->sync()V
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->sync()V
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemMoved(II)V
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->sync()V
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterUpdateCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V
    return-void
.end method
