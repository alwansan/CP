.class public final Lcom/shabakaty/downloader/services/DownloaderService$a;
.super Ljava/lang/Object;
.source "DownloaderService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/services/DownloaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/services/DownloaderService$a$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/services/DownloaderService$a$a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/services/DownloaderService$a$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
