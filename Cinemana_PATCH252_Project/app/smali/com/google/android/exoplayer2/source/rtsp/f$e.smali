.class public final Lcom/google/android/exoplayer2/source/rtsp/f$e;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

.field public final b:Lcom/shabakaty/downloader/ij2;

.field public final c:Lcom/shabakaty/downloader/bx3;

.field public d:Z

.field public e:Z

.field public final synthetic f:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/shabakaty/downloader/cv3;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->f:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/f$d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/shabakaty/downloader/cv3;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/ij2;

    const/16 p4, 0x37

    const-string v0, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "

    invoke-static {p4, v0, p3}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->b:Lcom/shabakaty/downloader/ij2;

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->r:Lcom/shabakaty/downloader/fn0;

    .line 5
    invoke-static {p2}, Lcom/shabakaty/downloader/bx3;->g(Lcom/shabakaty/downloader/fn0;)Lcom/shabakaty/downloader/bx3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 6
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 7
    iput-object p1, p2, Lcom/shabakaty/downloader/bx3;->g:Lcom/shabakaty/downloader/bx3$d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$e;->f:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 7
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 10
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    and-int/2addr v2, v3

    .line 11
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
