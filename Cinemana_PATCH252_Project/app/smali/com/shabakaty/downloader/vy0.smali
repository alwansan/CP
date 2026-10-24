.class public final Lcom/shabakaty/downloader/vy0;
.super Ljava/lang/Object;
.source "downloader.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/kf2;

.field public static final b:Lcom/shabakaty/downloader/kf2;

.field public static final c:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vy0$c;->r:Lcom/shabakaty/downloader/vy0$c;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vy0;->a:Lcom/shabakaty/downloader/kf2;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/vy0$b;->r:Lcom/shabakaty/downloader/vy0$b;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vy0;->b:Lcom/shabakaty/downloader/kf2;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/vy0$a;->r:Lcom/shabakaty/downloader/vy0$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vy0;->c:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final a()Lcom/shabakaty/downloader/ey0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 2
    sget-boolean v0, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    goto :goto_0

    .line 4
    :cond_0
    sput-object v1, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/shabakaty/downloader/services/DownloaderService;->t:Lcom/shabakaty/downloader/ey0;

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "downloadManager"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final b()Lcom/shabakaty/downloader/az0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vy0;->c:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/az0;

    return-object v0
.end method

.method public static final c()Lcom/shabakaty/downloader/i44;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vy0;->b:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/i44;

    return-object v0
.end method
