.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;
.super Ljava/lang/Object;
.source "NavigationActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ak1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h;->a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/lo3;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->r:Lcom/shabakaty/downloader/lo3;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->t:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/q;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p2, Lcom/shabakaty/downloader/vt1;

    if-eqz p1, :cond_2

    .line 2
    check-cast p2, Lcom/shabakaty/downloader/vt1;

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vt1;->onResume()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->t:Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;->J0()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->r:Lcom/shabakaty/downloader/lo3;

    iget-object p2, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ak1;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity$h$a;->s:Lcom/shabakaty/downloader/lo3;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/q;

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/q;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p2, 0x0

    .line 8
    iput-object p2, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 9
    iput-object p2, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
