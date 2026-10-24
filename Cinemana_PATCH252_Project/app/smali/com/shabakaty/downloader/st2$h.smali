.class public final Lcom/shabakaty/downloader/st2$h;
.super Ljava/lang/Object;
.source "MiscBindingAdapter.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/st2;->i(Landroidx/appcompat/widget/SearchView;Lcom/shabakaty/downloader/b73;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/lo3<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/shabakaty/downloader/b73;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Landroid/os/Handler;Lcom/shabakaty/downloader/b73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lo3<",
            "Ljava/lang/Runnable;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/shabakaty/downloader/b73;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/st2$h;->a:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/downloader/st2$h;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/shabakaty/downloader/st2$h;->c:Lcom/shabakaty/downloader/b73;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/st2$h;->a:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/st2$h;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/st2$h;->a:Lcom/shabakaty/downloader/lo3;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/st2$h;->c:Lcom/shabakaty/downloader/b73;

    new-instance v2, Lcom/shabakaty/downloader/pr;

    invoke-direct {v2, v1, p1, v0}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/shabakaty/downloader/b73;Ljava/lang/String;Lcom/shabakaty/downloader/lo3;)V

    .line 5
    iput-object v2, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/st2$h;->b:Landroid/os/Handler;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/st2$h;->a:Lcom/shabakaty/downloader/lo3;

    iget-object v0, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/st2$h;->b:Landroid/os/Handler;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/st2$h;->c:Lcom/shabakaty/downloader/b73;

    check-cast v0, Lcom/shabakaty/downloader/gk1$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/gk1$a;->a:Lcom/shabakaty/downloader/dz3;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/dz3;->l1(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
