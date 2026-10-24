.class public Lcom/facebook/login/CustomTabPrefetchHelper;
.super Lcom/shabakaty/downloader/fh0;
.source "CustomTabPrefetchHelper.java"


# static fields
.field public static r:Lcom/shabakaty/downloader/eh0;

.field public static s:Lcom/shabakaty/downloader/np4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fh0;-><init>()V

    return-void
.end method

.method public static b(Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->s:Lcom/shabakaty/downloader/np4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->r:Lcom/shabakaty/downloader/eh0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/eh0;->b(Lcom/shabakaty/downloader/ml3;)Lcom/shabakaty/downloader/np4;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->s:Lcom/shabakaty/downloader/np4;

    .line 4
    :cond_0
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->s:Lcom/shabakaty/downloader/np4;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/xw1;

    iget-object v0, v0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ww1;

    invoke-interface {v2, v0, p0, v1, v1}, Lcom/shabakaty/downloader/xw1;->U1(Lcom/shabakaty/downloader/ww1;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Lcom/shabakaty/downloader/eh0;)V
    .locals 2

    .line 1
    sput-object p2, Lcom/facebook/login/CustomTabPrefetchHelper;->r:Lcom/shabakaty/downloader/eh0;

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, v1}, Lcom/shabakaty/downloader/eh0;->c(J)Z

    .line 3
    sget-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->s:Lcom/shabakaty/downloader/np4;

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->r:Lcom/shabakaty/downloader/eh0;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/eh0;->b(Lcom/shabakaty/downloader/ml3;)Lcom/shabakaty/downloader/np4;

    move-result-object p1

    sput-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->s:Lcom/shabakaty/downloader/np4;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
