.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;
.super Ljava/lang/Object;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ak1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/downloader/lo3;

.field public final synthetic u:Lcom/shabakaty/downloader/hx2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/hx2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->t:Lcom/shabakaty/downloader/lo3;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->u:Lcom/shabakaty/downloader/hx2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "root"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p2, Lcom/shabakaty/downloader/bu3;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->r:Lcom/shabakaty/downloader/lo3;

    check-cast p2, Lcom/shabakaty/downloader/ek;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->s:Lcom/shabakaty/downloader/lo3;

    iget-object p2, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast p2, Lcom/shabakaty/downloader/ak1;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->t:Lcom/shabakaty/downloader/lo3;

    iget-object p2, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ak1;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$i;->u:Lcom/shabakaty/downloader/hx2;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v0

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 8
    iput-object p2, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
