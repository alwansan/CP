.class public final Lcom/shabakaty/downloader/h35$b;
.super Ljava/lang/Object;
.source "ViewDataBindingKtx.kt"

# interfaces
.implements Lcom/shabakaty/downloader/h53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/h35;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/h53<",
        "Lcom/shabakaty/downloader/te1<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/rh2;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/e92;

.field public final c:Lcom/shabakaty/downloader/r55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/r55<",
            "Lcom/shabakaty/downloader/te1<",
            "Ljava/lang/Object;",
            ">;>;"
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

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/r55;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/shabakaty/downloader/r55;-><init>(Landroidx/databinding/ViewDataBinding;ILcom/shabakaty/downloader/h53;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/h35$b;->c:Lcom/shabakaty/downloader/r55;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/rh2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h35$b;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rh2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/h35$b;->b:Lcom/shabakaty/downloader/e92;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/shabakaty/downloader/e92$a;->a(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/h35$b;->a:Ljava/lang/ref/WeakReference;

    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/h35$b;->a:Ljava/lang/ref/WeakReference;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/h35$b;->c:Lcom/shabakaty/downloader/r55;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/r55;->c:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/te1;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/h35$b;->b(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;)V

    :cond_4
    return-void
.end method

.method public addListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/te1;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/h35$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rh2;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/h35$b;->b(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/shabakaty/downloader/rh2;Lcom/shabakaty/downloader/te1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rh2;",
            "Lcom/shabakaty/downloader/te1<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/h35$b;->b:Lcom/shabakaty/downloader/e92;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/e92;->b(Ljava/util/concurrent/CancellationException;)V

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/h35$b$a;

    invoke-direct {v0, p0, p2, v1}, Lcom/shabakaty/downloader/h35$b$a;-><init>(Lcom/shabakaty/downloader/h35$b;Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ih2;->c(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/h35$b;->b:Lcom/shabakaty/downloader/e92;

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/te1;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/h35$b;->b:Lcom/shabakaty/downloader/e92;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/shabakaty/downloader/e92$a;->a(Lcom/shabakaty/downloader/e92;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/h35$b;->b:Lcom/shabakaty/downloader/e92;

    return-void
.end method
