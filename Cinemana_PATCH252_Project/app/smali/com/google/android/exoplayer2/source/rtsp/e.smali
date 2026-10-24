.class public final Lcom/google/android/exoplayer2/source/rtsp/e;
.super Ljava/lang/Object;
.source "RtspHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/e$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/e$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/rtsp/e$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/e$b;->b()Lcom/google/android/exoplayer2/source/rtsp/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/e$b;Lcom/google/android/exoplayer2/source/rtsp/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/e$b;->a:Lcom/google/common/collect/q$a;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/q$a;->a()Lcom/google/common/collect/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Accept"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Allow"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Authorization"

    .line 3
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Bandwidth"

    .line 4
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Blocksize"

    .line 5
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "Cache-Control"

    .line 6
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Connection"

    .line 7
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "Content-Base"

    .line 8
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "Content-Encoding"

    .line 9
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "Content-Language"

    .line 10
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "Content-Length"

    .line 11
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    const-string v0, "Content-Location"

    .line 12
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "Content-Type"

    .line 13
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "CSeq"

    .line 14
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "Date"

    .line 15
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    const-string v0, "Expires"

    .line 16
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    const-string v0, "Proxy-Authenticate"

    .line 17
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v0

    :cond_10
    const-string v0, "Proxy-Require"

    .line 18
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const-string v0, "Public"

    .line 19
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    const-string v0, "Range"

    .line 20
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    const-string v0, "RTP-Info"

    .line 21
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_14
    const-string v0, "RTCP-Interval"

    .line 22
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_15
    const-string v0, "Scale"

    .line 23
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Scale"

    return-object p0

    :cond_16
    const-string v0, "Session"

    .line 24
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Session"

    return-object p0

    :cond_17
    const-string v0, "Speed"

    .line 25
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Speed"

    return-object p0

    :cond_18
    const-string v0, "Supported"

    .line 26
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Supported"

    return-object p0

    :cond_19
    const-string v0, "Timestamp"

    .line 27
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "Timestamp"

    return-object p0

    :cond_1a
    const-string v0, "Transport"

    .line 28
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "Transport"

    return-object p0

    :cond_1b
    const-string v0, "User-Agent"

    .line 29
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "User-Agent"

    return-object p0

    :cond_1c
    const-string v0, "Via"

    .line 30
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "Via"

    return-object p0

    :cond_1d
    const-string v0, "WWW-Authenticate"

    .line 31
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j96;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "WWW-Authenticate"

    :cond_1e
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->g(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/rtsp/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/e;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/e;->hashCode()I

    move-result v0

    return v0
.end method
