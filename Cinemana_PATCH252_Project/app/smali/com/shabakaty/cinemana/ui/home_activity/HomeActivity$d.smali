.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;
.super Ljava/lang/Object;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ak1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->E1(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->t:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "navHost"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p2, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d$a;

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->r:Lcom/shabakaty/downloader/lo3;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->s:Lcom/shabakaty/downloader/lo3;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d;->t:Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;

    invoke-direct {p2, v0, v1, v2}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$d$a;-><init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/cinemana/ui/home_fragment/ShowMorePageDataType;)V

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
