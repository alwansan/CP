.class public final Lcom/google/android/exoplayer2/source/rtsp/f$f;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final r:I

.field public final synthetic s:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->r:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->r:I

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

    move-result v0

    return v0
.end method

.method public h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->s:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$f;->r:I

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/shabakaty/downloader/bx3;->C(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;IZ)I

    move-result p1

    return p1
.end method

.method public i(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
