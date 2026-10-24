.class public final Lcom/google/android/exoplayer2/source/rtsp/g;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/g$e;,
        Lcom/google/android/exoplayer2/source/rtsp/g$c;,
        Lcom/google/android/exoplayer2/source/rtsp/g$f;,
        Lcom/google/android/exoplayer2/source/rtsp/g$g;,
        Lcom/google/android/exoplayer2/source/rtsp/g$b;,
        Lcom/google/android/exoplayer2/source/rtsp/g$d;
    }
.end annotation


# static fields
.field public static final x:Ljava/nio/charset/Charset;


# instance fields
.field public final r:Lcom/google/android/exoplayer2/source/rtsp/g$d;

.field public final s:Lcom/shabakaty/downloader/ij2;

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/rtsp/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/google/android/exoplayer2/source/rtsp/g$g;

.field public v:Ljava/net/Socket;

.field public volatile w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/iz;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/g;->x:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->r:Lcom/google/android/exoplayer2/source/rtsp/g$d;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string v0, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->s:Lcom/shabakaty/downloader/ij2;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->t:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->v:Ljava/net/Socket;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/g$g;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/g$g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->u:Lcom/google/android/exoplayer2/source/rtsp/g$g;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->s:Lcom/shabakaty/downloader/ij2;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/g$f;

    .line 4
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/g$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;Ljava/io/InputStream;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/g$c;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/g$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;Lcom/google/android/exoplayer2/source/rtsp/g$a;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->u:Lcom/google/android/exoplayer2/source/rtsp/g$g;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/g$g;->close()V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->s:Lcom/shabakaty/downloader/ij2;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->v:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->w:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->w:Z

    .line 9
    throw v1
.end method
