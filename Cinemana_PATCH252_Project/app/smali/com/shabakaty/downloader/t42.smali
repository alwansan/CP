.class public abstract Lcom/shabakaty/downloader/t42;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemFranchiseBinding.java"


# instance fields
.field public final M:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final N:Landroid/widget/TextView;

.field public O:Lcom/shabakaty/downloader/bm1;

.field public P:Lcom/shabakaty/cinemana/domain/models/local/home_page/FranchiseItem;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/facebook/drawee/view/SimpleDraweeView;Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/t42;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/t42;->N:Landroid/widget/TextView;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/t42;->M:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/t42;->N:Landroid/widget/TextView;

    return-void
.end method
