.class public final Lcom/google/android/exoplayer2/source/rtsp/g$c;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/google/android/exoplayer2/source/rtsp/g$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/google/android/exoplayer2/source/rtsp/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g;Lcom/google/android/exoplayer2/source/rtsp/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$c;->r:Lcom/google/android/exoplayer2/source/rtsp/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$f;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$c;->r:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 3
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->w:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$c;->r:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->r:Lcom/google/android/exoplayer2/source/rtsp/g$d;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    return-object p1
.end method

.method public bridge synthetic g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$f;

    return-void
.end method

.method public bridge synthetic l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$f;

    return-void
.end method
