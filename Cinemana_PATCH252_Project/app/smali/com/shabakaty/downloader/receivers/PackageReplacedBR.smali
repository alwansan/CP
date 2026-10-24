.class public final Lcom/shabakaty/downloader/receivers/PackageReplacedBR;
.super Landroid/content/BroadcastReceiver;
.source "PackageReplacedBR.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/shabakaty/downloader/receivers/PackageReplacedBR;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "shabakaty-downloader_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "android.intent.action.MY_PACKAGE_SUSPENDED"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string p2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    .line 2
    :cond_5
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v0, "received package replaced broadcast"

    invoke-virtual {p2, v0, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/tp6;->g(Landroid/content/Context;)V

    :cond_6
    :goto_4
    return-void
.end method
