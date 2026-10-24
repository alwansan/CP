.class public final Lcom/shabakaty/downloader/re3;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/se3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/se3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v0, v0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v0, v0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v0, v0, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v2, v2, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v1, v1, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v1, v1, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/shabakaty/downloader/re3;->r:Lcom/shabakaty/downloader/se3;

    iget-object v2, v2, Lcom/shabakaty/downloader/se3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 8
    iget-object v2, v2, Lcom/skydoves/powerspinner/PowerSpinnerView;->s:Landroid/widget/PopupWindow;

    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method
