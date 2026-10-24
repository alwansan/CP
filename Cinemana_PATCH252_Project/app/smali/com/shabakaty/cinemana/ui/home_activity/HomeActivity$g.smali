.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/px2;->setSelectedItemId(I)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$g;->r:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/xi;->t:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/y2;

    iget-object v0, v0, Lcom/shabakaty/downloader/y2;->O:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
