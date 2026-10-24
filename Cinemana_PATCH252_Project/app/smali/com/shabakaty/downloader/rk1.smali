.class public Lcom/shabakaty/downloader/rk1;
.super Landroidx/fragment/app/q$k;
.source "FragmentStateAdapter.java"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rk1;->c:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lcom/shabakaty/downloader/rk1;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/shabakaty/downloader/rk1;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/q$k;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/shabakaty/downloader/rk1;->a:Landroidx/fragment/app/Fragment;

    if-ne p2, p4, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/fragment/app/q;->m0(Landroidx/fragment/app/q$k;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/rk1;->c:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object p2, p0, Lcom/shabakaty/downloader/rk1;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->f(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
