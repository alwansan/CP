.class public final Lcom/shabakaty/downloader/xb5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ij$b;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/l63;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l63;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xb5;->r:Lcom/shabakaty/downloader/l63;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xb5;->r:Lcom/shabakaty/downloader/l63;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/l63;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method
