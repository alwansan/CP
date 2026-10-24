.class public final Lcom/shabakaty/downloader/ub5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ij$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fb0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ub5;->r:Lcom/shabakaty/downloader/fb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ub5;->r:Lcom/shabakaty/downloader/fb0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fb0;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ub5;->r:Lcom/shabakaty/downloader/fb0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fb0;->onConnectionSuspended(I)V

    return-void
.end method
