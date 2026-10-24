.class public final Lcom/shabakaty/downloader/mw0;
.super Ljava/lang/Object;
.source "DownloadEventsLogger.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/kf2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mw0$a;->r:Lcom/shabakaty/downloader/mw0$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/mw0;->a:Lcom/shabakaty/downloader/kf2;

    return-void
.end method

.method public static final a()Lcom/shabakaty/downloader/lw0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mw0;->a:Lcom/shabakaty/downloader/kf2;

    check-cast v0, Lcom/shabakaty/downloader/qj4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qj4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/lw0;

    return-object v0
.end method
