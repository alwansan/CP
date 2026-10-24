.class public final Lcom/shabakaty/downloader/receivers/PauseDownloadBR;
.super Landroid/content/BroadcastReceiver;
.source "PauseDownloadBR.kt"


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
        "Lcom/shabakaty/downloader/receivers/PauseDownloadBR;",
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


# instance fields
.field public a:Lcom/shabakaty/downloader/ey0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/wk0;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/wk0;->k:Lcom/shabakaty/downloader/oj3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ey0;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/receivers/PauseDownloadBR;->a:Lcom/shabakaty/downloader/ey0;

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    const-string v0, "DOWNLOAD_ID_EXTRA"

    .line 5
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "received pause download broadcast with id: "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const-string p2, "manager"

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/receivers/PauseDownloadBR;->a:Lcom/shabakaty/downloader/ey0;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/ey0;->d(I)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    :goto_1
    invoke-static {p1}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/lw0;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/receivers/PauseDownloadBR;->a:Lcom/shabakaty/downloader/ey0;

    if-eqz p1, :cond_5

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p2

    const-string v1, "pausing all downloads"

    invoke-virtual {p2, v1, p1}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 17
    iget-object v1, p1, Lcom/shabakaty/downloader/ey0;->f:Lcom/shabakaty/downloader/se0;

    new-instance v4, Lcom/shabakaty/downloader/iy0;

    invoke-direct {v4, p1, v0}, Lcom/shabakaty/downloader/iy0;-><init>(Lcom/shabakaty/downloader/ey0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_4
    :goto_2
    return-void

    .line 18
    :cond_5
    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method
