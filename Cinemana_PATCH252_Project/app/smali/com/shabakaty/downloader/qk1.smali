.class public Lcom/shabakaty/downloader/qk1;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic r:Landroid/widget/FrameLayout;

.field public final synthetic s:Lcom/shabakaty/downloader/ll1;

.field public final synthetic t:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroid/widget/FrameLayout;Lcom/shabakaty/downloader/ll1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qk1;->t:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lcom/shabakaty/downloader/qk1;->r:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/shabakaty/downloader/qk1;->s:Lcom/shabakaty/downloader/ll1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/qk1;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/qk1;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/qk1;->t:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object p2, p0, Lcom/shabakaty/downloader/qk1;->s:Lcom/shabakaty/downloader/ll1;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->l(Lcom/shabakaty/downloader/ll1;)V

    :cond_0
    return-void
.end method
