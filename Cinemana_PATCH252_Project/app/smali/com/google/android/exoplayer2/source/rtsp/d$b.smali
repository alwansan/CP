.class public final Lcom/google/android/exoplayer2/source/rtsp/d$b;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final r:Landroid/os/Handler;

.field public s:Z

.field public final synthetic t:Lcom/google/android/exoplayer2/source/rtsp/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->t:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->r:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->s:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->r:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->t:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->r:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
