.class public Lcom/facebook/CustomTabActivity;
.super Landroid/app/Activity;
.source "CustomTabActivity.java"


# instance fields
.field public r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "CustomTabActivity.action_customTabRedirect"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CustomTabMainActivity.extra_url"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/nj2;->c(Landroid/content/Intent;)Z

    .line 5
    new-instance p1, Lcom/facebook/CustomTabActivity$1;

    invoke-direct {p1, p0}, Lcom/facebook/CustomTabActivity$1;-><init>(Lcom/facebook/CustomTabActivity;)V

    iput-object p1, p0, Lcom/facebook/CustomTabActivity;->r:Landroid/content/BroadcastReceiver;

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/CustomTabActivity;->r:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "CustomTabActivity.action_destroy"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/nj2;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "CustomTabActivity.action_customTabRedirect"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabMainActivity.extra_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/nj2;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/nj2;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/CustomTabActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nj2;->d(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
