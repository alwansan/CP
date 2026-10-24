.class public final Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;
.super Lcom/shabakaty/downloader/rj;
.source "RtspMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final synthetic F:I


# instance fields
.field public final A:Landroid/net/Uri;

.field public B:J

.field public C:Z

.field public D:Z

.field public E:Z

.field public final x:Lcom/shabakaty/downloader/dp2;

.field public final y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtsp"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/dp2;Lcom/google/android/exoplayer2/source/rtsp/a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->z:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->A:Landroid/net/Uri;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->B:J

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->E:Z

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 6

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->A:Landroid/net/Uri;

    new-instance v4, Lcom/shabakaty/downloader/cu;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->z:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/rtsp/f;-><init>(Lcom/shabakaty/downloader/fn0;Lcom/google/android/exoplayer2/source/rtsp/a$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/f$c;Ljava/lang/String;)V

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 4
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->e:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->b:Lcom/shabakaty/downloader/ij2;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 7
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->D()V

    .line 8
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->e:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_2
    iput-boolean v2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->G:Z

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 9

    .line 1
    new-instance v8, Lcom/shabakaty/downloader/b84;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->B:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->C:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->D:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/b84;-><init>(JZZZLjava/lang/Object;Lcom/shabakaty/downloader/dp2;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->E:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;

    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;-><init>(Lcom/shabakaty/downloader/nn4;)V

    move-object v8, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    return-void
.end method
