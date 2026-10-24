.class public final Lcom/google/android/exoplayer2/source/hls/e;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/qn4;

.field public final c:Lcom/shabakaty/downloader/ka3;

.field public d:Lcom/shabakaty/downloader/p91;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/e;->g:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/e;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/qn4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/e;->b:Lcom/shabakaty/downloader/qn4;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c(J)Lcom/shabakaty/downloader/fp4;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->d:Lcom/shabakaty/downloader/p91;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v2, "text/vtt"

    .line 3
    iput-object v2, v1, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/e;->a:Ljava/lang/String;

    .line 5
    iput-object v2, v1, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 6
    iput-wide p1, v1, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->d:Lcom/shabakaty/downloader/p91;

    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->d:Lcom/shabakaty/downloader/p91;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    array-length v4, v3

    const/4 v5, -0x1

    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_0

    move v1, v2

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, v3

    :goto_0
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 6
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    array-length v4, v1

    sub-int/2addr v4, v3

    move-object/from16 v6, p1

    invoke-interface {v6, v1, v3, v4}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 8
    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    if-eq v2, v5, :cond_2

    if-eq v3, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    return v1

    .line 9
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/f65;->d(Lcom/shabakaty/downloader/ka3;)V

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v6, v3

    move-wide v8, v6

    .line 12
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-wide/32 v11, 0xf4240

    const-wide/32 v13, 0x15f90

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-nez v10, :cond_9

    const-string v10, "X-TIMESTAMP-MAP"

    .line 13
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 14
    sget-object v6, Lcom/google/android/exoplayer2/source/hls/e;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 17
    :cond_5
    sget-object v7, Lcom/google/android/exoplayer2/source/hls/e;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_3
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 20
    :cond_7
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v2}, Lcom/shabakaty/downloader/f65;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 23
    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long v5, v5, v11

    .line 26
    div-long v6, v5, v13

    .line 27
    :cond_8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    goto :goto_1

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 29
    sget-object v10, Lcom/shabakaty/downloader/f65;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 30
    :goto_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 31
    :cond_a
    sget-object v10, Lcom/shabakaty/downloader/d65;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v5, v2

    :cond_b
    if-nez v5, :cond_c

    .line 33
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/source/hls/e;->c(J)Lcom/shabakaty/downloader/fp4;

    goto :goto_5

    .line 34
    :cond_c
    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v1}, Lcom/shabakaty/downloader/f65;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->b:Lcom/shabakaty/downloader/qn4;

    add-long/2addr v6, v1

    sub-long/2addr v6, v8

    mul-long v6, v6, v13

    .line 38
    div-long/2addr v6, v11

    const-wide v4, 0x200000000L

    .line 39
    rem-long/2addr v6, v4

    .line 40
    invoke-virtual {v3, v6, v7}, Lcom/shabakaty/downloader/qn4;->b(J)J

    move-result-wide v9

    sub-long v1, v9, v1

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/e;->c(J)Lcom/shabakaty/downloader/fp4;

    move-result-object v8

    .line 42
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 43
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    invoke-interface {v8, v1, v2}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    const/4 v11, 0x1

    .line 44
    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/e;->f:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    :goto_5
    const/4 v1, -0x1

    return v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->d:Lcom/shabakaty/downloader/p91;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vz3$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Lcom/shabakaty/downloader/o91;->i([BIIZ)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    invoke-static {v0}, Lcom/shabakaty/downloader/f65;->a(Lcom/shabakaty/downloader/ka3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Lcom/shabakaty/downloader/o91;->i([BIIZ)Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/e;->e:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/e;->c:Lcom/shabakaty/downloader/ka3;

    invoke-static {p1}, Lcom/shabakaty/downloader/f65;->a(Lcom/shabakaty/downloader/ka3;)Z

    move-result p1

    return p1
.end method
