.class final Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.field final screen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
.field final items:Ljava/util/List;
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;Ljava/util/List;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;->screen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;->items:Ljava/util/List;
    return-void
.end method
.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;->screen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->showFailed()V
    return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;->screen:Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->closed:Z
    if-nez v1, :done
    iget-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->busy:Z
    if-nez v1, :done
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen$FailedClick;->items:Ljava/util/List;
    if-eqz v1, :done
    if-ltz p2, :done
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-ge p2, v2, :done
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;
    iget-boolean v2, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->selected:Z
    if-eqz v2, :done
    iget-boolean v2, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->submitted:Z
    if-nez v2, :done
    iget-boolean v2, v1, Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;->existing:Z
    if-nez v2, :done
    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/ca1/BatchDownload$Screen;->quality(Lcom/shabakaty/cinemana/ca1/BatchDownload$Episode;)V
    :done
    return-void
.end method
