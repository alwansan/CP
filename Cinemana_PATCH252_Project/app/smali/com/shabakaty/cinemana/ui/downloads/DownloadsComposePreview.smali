.class public final Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;
.super Ljava/lang/Object;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final activity:Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;
.field private final preview:Landroid/content/Intent;

.method private constructor <init>(Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;->activity:Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;->preview:Landroid/content/Intent;
    return-void
.end method

.method public static addAction(Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;Landroidx/appcompat/widget/Toolbar;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x1c
    if-lt v0, v1, :unavailable

    # The same legacy activity is built into APKs that lack the private Compose service.
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v1

    new-instance v2, Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    const-string v3, "cp.realowner.RealOwnerService"
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    const/4 v4, 0x0
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    move-result-object v3
    if-eqz v3, :unavailable

    const-string v3, "com.alwansan.cinemana.composelab.NativeUiProbeActivity"
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    move-result-object v3
    if-eqz v3, :unavailable

    const/4 v0, 0x1
    const-string v1, "cp_real_owner"
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    const-string v1, "cp_download_presentation"
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;
    move-result-object v1
    const-string v3, "معاينة التنزيلات"
    invoke-interface {v1, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    move-result-object v1
    new-instance v3, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;
    invoke-direct {v3, p0, v2}, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;-><init>(Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;Landroid/content/Intent;)V
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    const/4 v0, 0x2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :unavailable
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;->activity:Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;
    iget-object v1, p0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsComposePreview;->preview:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1
    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ui/downloads/DownloadsActivity;->modReturningFromComposePreview:Z
    return v1
.end method
