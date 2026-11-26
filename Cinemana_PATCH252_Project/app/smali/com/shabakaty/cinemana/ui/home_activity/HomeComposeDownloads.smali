.class public final Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final home:Landroid/app/Activity;
.field private final downloads:Landroid/content/Intent;

.method private constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;->home:Landroid/app/Activity;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;->downloads:Landroid/content/Intent;
    return-void
.end method

.method public static install(Landroid/app/Activity;Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 5

    invoke-static {p0}, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;->createIntent(Landroid/app/Activity;)Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :unavailable

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;
    move-result-object v1
    invoke-interface {v1}, Landroid/view/Menu;->size()I
    move-result v2
    const/4 v3, 0x5
    if-ge v2, v3, :unavailable

    invoke-static {}, Landroid/view/View;->generateViewId()I
    move-result v2
    const/4 v3, 0x0
    const-string v4, "التنزيلات"
    invoke-interface {v1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object v1

    # Keep home navigation's selected item when opening the separate screen.
    const v2, 0x7f08015f
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    new-instance v2, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;
    invoke-direct {v2, p0, v0}, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :unavailable
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;->home:Landroid/app/Activity;
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/home_activity/HomeComposeDownloads;->downloads:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1
    return v0
.end method
