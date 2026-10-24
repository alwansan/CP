.class public final Lcom/google/android/exoplayer2/source/rtsp/d;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/d$b;,
        Lcom/google/android/exoplayer2/source/rtsp/d$c;,
        Lcom/google/android/exoplayer2/source/rtsp/d$d;,
        Lcom/google/android/exoplayer2/source/rtsp/d$e;,
        Lcom/google/android/exoplayer2/source/rtsp/d$f;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

.field public C:Lcom/google/android/exoplayer2/source/rtsp/c;

.field public D:Z

.field public E:Z

.field public F:J

.field public final r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

.field public final s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

.field public final t:Landroid/net/Uri;

.field public final u:Lcom/google/android/exoplayer2/source/rtsp/h$a;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/source/rtsp/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/ev3;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

.field public z:Lcom/google/android/exoplayer2/source/rtsp/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d$f;Lcom/google/android/exoplayer2/source/rtsp/d$e;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 4
    sget-object p1, Lcom/google/android/exoplayer2/source/rtsp/h;->a:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {p4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move-object p1, p4

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "@"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 9
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 11
    aget-object p1, p1, p2

    .line 12
    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    .line 14
    invoke-virtual {p4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ":"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/h$a;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object p1, p1, p2

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v0, p4

    .line 19
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->u:Lcom/google/android/exoplayer2/source/rtsp/h$a;

    .line 20
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->w:Ljava/util/ArrayDeque;

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->x:Landroid/util/SparseArray;

    .line 23
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/d$d;

    invoke-direct {p1, p0, p4}, Lcom/google/android/exoplayer2/source/rtsp/d$d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;Lcom/google/android/exoplayer2/source/rtsp/d$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->F:J

    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/g;

    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/d$c;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/source/rtsp/d$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/g;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$d;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/source/rtsp/d;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->D:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    check-cast p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 5
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->r:Lcom/google/android/exoplayer2/source/rtsp/d$f;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/he4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/f$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22a

    .line 3
    :goto_1
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, p0, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->w:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->s:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$b;->r:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/d;->e(J)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a()Landroid/net/Uri;

    move-result-object v2

    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Transport"

    .line 10
    invoke-static {v4, v0}, Lcom/google/common/collect/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    .line 11
    invoke-static {v4, v5}, Lcom/google/common/collect/c0;->i(I[Ljava/lang/Object;)Lcom/google/common/collect/c0;

    move-result-object v0

    const/16 v4, 0xa

    .line 12
    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d$b;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->B:Lcom/google/android/exoplayer2/source/rtsp/d$b;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    const/16 v4, 0xc

    .line 7
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/g;->close()V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/d;->c(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/g;->a(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    const/4 v4, 0x4

    .line 4
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:Lcom/google/android/exoplayer2/source/rtsp/g;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/g;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :catch_1
    :cond_0
    throw v0
.end method

.method public e(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/fv3;->c:Lcom/shabakaty/downloader/fv3;

    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string p1, "npt=%.3f-"

    invoke-static {p1, v4}, Lcom/shabakaty/downloader/sy4;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "Range"

    .line 6
    invoke-static {v4, p1}, Lcom/google/common/collect/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, p2

    aput-object p1, v5, v3

    .line 7
    invoke-static {v3, v5}, Lcom/google/common/collect/c0;->i(I[Ljava/lang/Object;)Lcom/google/common/collect/c0;

    move-result-object p1

    const/4 p2, 0x6

    .line 8
    invoke-virtual {v0, p2, v2, p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    return-void
.end method
