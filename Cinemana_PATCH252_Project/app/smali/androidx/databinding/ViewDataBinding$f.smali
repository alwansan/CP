.class public Landroidx/databinding/ViewDataBinding$f;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Lcom/shabakaty/downloader/r53;
.implements Lcom/shabakaty/downloader/h53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/r53;",
        "Lcom/shabakaty/downloader/h53<",
        "Landroidx/lifecycle/LiveData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/r55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/r55<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/rh2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->b:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/r55;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/shabakaty/downloader/r55;-><init>(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/h53;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->a:Lcom/shabakaty/downloader/r55;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/rh2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rh2;

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$f;->a:Lcom/shabakaty/downloader/r55;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/r55;->c:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v1, p1, p0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public addListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rh2;

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/r53;)V

    :cond_1
    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding$f;->a:Lcom/shabakaty/downloader/r55;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r55;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$f;->a:Lcom/shabakaty/downloader/r55;

    iget v1, v0, Lcom/shabakaty/downloader/r55;->b:I

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/r55;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v0, v2}, Landroidx/databinding/ViewDataBinding;->m(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Lcom/shabakaty/downloader/r53;)V

    return-void
.end method
