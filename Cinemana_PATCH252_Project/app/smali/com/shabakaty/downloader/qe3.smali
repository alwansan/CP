.class public final Lcom/shabakaty/downloader/qe3;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/qe3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qe3;->r:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget v0, Lcom/skydoves/powerspinner/PowerSpinnerView;->V:I

    .line 2
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p1, Lcom/skydoves/powerspinner/PowerSpinnerView;->t:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/se3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/shabakaty/downloader/se3;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-wide v3, p1, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:J

    sub-long v3, v1, v3

    iget-wide v5, p1, Lcom/skydoves/powerspinner/PowerSpinnerView;->z:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 7
    iput-wide v1, p1, Lcom/skydoves/powerspinner/PowerSpinnerView;->B:J

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/se3;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->f()V

    :cond_1
    :goto_0
    return-void
.end method
