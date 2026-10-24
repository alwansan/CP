.class public Lcom/shabakaty/downloader/o73;
.super Lcom/shabakaty/downloader/fh0;
.source "OneSignalChromeTab.java"


# instance fields
.field public r:Ljava/lang/String;

.field public s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fh0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/o73;->r:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/o73;->s:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Lcom/shabakaty/downloader/eh0;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/eh0;->c(J)Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/eh0;->b(Lcom/shabakaty/downloader/ml3;)Lcom/shabakaty/downloader/np4;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o73;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p2, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/xw1;

    iget-object v2, p2, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ww1;

    invoke-interface {v1, v2, v0, p1, p1}, Lcom/shabakaty/downloader/xw1;->U1(Lcom/shabakaty/downloader/ww1;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/o73;->s:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 7
    iget-object v3, p2, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    .line 8
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/ww1;

    check-cast p2, Lcom/shabakaty/downloader/ww1$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.support.customtabs.extra.SESSION"

    .line 11
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 13
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 15
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    sget-object p2, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
