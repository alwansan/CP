.class public Lcom/shabakaty/cinemana/helpers/casting/receivers/RemoteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "play"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/tu0;

    sget-object v0, Lcom/shabakaty/downloader/tu0;->c:Ljava/lang/Integer;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "pause"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/tu0;

    sget-object v0, Lcom/shabakaty/downloader/tu0;->d:Ljava/lang/Integer;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "close"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/tu0;

    sget-object v0, Lcom/shabakaty/downloader/tu0;->e:Ljava/lang/Integer;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/j51;->f(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
