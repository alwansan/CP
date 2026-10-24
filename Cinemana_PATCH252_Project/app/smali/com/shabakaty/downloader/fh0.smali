.class public abstract Lcom/shabakaty/downloader/fh0;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Lcom/shabakaty/downloader/eh0;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fh0$a;

    .line 2
    sget v1, Lcom/shabakaty/downloader/xw1$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.support.customtabs.ICustomTabsService"

    .line 3
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    instance-of v2, v1, Lcom/shabakaty/downloader/xw1;

    if-eqz v2, :cond_1

    .line 5
    move-object p2, v1

    check-cast p2, Lcom/shabakaty/downloader/xw1;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/xw1$a$a;

    invoke-direct {v1, p2}, Lcom/shabakaty/downloader/xw1$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 7
    :goto_0
    invoke-direct {v0, p0, p2, p1}, Lcom/shabakaty/downloader/fh0$a;-><init>(Lcom/shabakaty/downloader/fh0;Lcom/shabakaty/downloader/xw1;Landroid/content/ComponentName;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/fh0;->a(Landroid/content/ComponentName;Lcom/shabakaty/downloader/eh0;)V

    return-void
.end method
