.class public Lcom/shabakaty/downloader/w45;
.super Lcom/shabakaty/downloader/gq4;
.source "Visibility.java"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/shabakaty/downloader/x45;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/x45;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/w45;->d:Lcom/shabakaty/downloader/x45;

    iput-object p2, p0, Lcom/shabakaty/downloader/w45;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/shabakaty/downloader/w45;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/shabakaty/downloader/w45;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w45;->c:Landroid/view/View;

    const v1, 0x7f0a03d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/w45;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/w45;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method

.method public onTransitionPause(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/w45;->a:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/w45;->b:Landroid/view/View;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onTransitionResume(Lcom/shabakaty/downloader/dq4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/w45;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/w45;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/w45;->b:Landroid/view/View;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/w45;->d:Lcom/shabakaty/downloader/x45;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/dq4;->cancel()V

    :goto_0
    return-void
.end method
