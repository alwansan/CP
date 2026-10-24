.class public final Lcom/shabakaty/downloader/hk3;
.super Ljava/lang/Object;
.source "QrScanningActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ox3;


# instance fields
.field public final synthetic a:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

.field public final synthetic b:Lcom/shabakaty/downloader/fy1;

.field public final synthetic c:Landroidx/camera/lifecycle/b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;Lcom/shabakaty/downloader/fy1;Landroidx/camera/lifecycle/b;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hk3;->a:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    iput-object p2, p0, Lcom/shabakaty/downloader/hk3;->b:Lcom/shabakaty/downloader/fy1;

    iput-object p3, p0, Lcom/shabakaty/downloader/hk3;->c:Landroidx/camera/lifecycle/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hk3;->a:Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;

    iget-object v1, p0, Lcom/shabakaty/downloader/hk3;->b:Lcom/shabakaty/downloader/fy1;

    iget-object v2, p0, Lcom/shabakaty/downloader/hk3;->c:Landroidx/camera/lifecycle/b;

    new-instance v3, Lcom/shabakaty/downloader/hy1;

    invoke-direct {v3, v1, v2, v0, p1}, Lcom/shabakaty/downloader/hy1;-><init>(Lcom/shabakaty/downloader/fy1;Landroidx/camera/lifecycle/b;Lcom/shabakaty/cinemana/ui/qr_login/QrScanningActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
