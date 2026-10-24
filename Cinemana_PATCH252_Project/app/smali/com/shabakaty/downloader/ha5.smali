.class public final Lcom/shabakaty/downloader/ha5;
.super Lcom/shabakaty/downloader/nb5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shabakaty/downloader/ba5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/nb5;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ha5;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final c0(Lcom/shabakaty/downloader/hc5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ha5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ba5;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/da5;

    invoke-direct {v2, v0, v0, p1}, Lcom/shabakaty/downloader/da5;-><init>(Lcom/shabakaty/downloader/na5;Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/hc5;)V

    .line 4
    iget-object p1, v1, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
