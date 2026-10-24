.class public final Lcom/shabakaty/downloader/gn0;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/shabakaty/downloader/ze;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gn0$f;,
        Lcom/shabakaty/downloader/gn0$c;,
        Lcom/shabakaty/downloader/gn0$g;,
        Lcom/shabakaty/downloader/gn0$e;,
        Lcom/shabakaty/downloader/gn0$h;,
        Lcom/shabakaty/downloader/gn0$d;,
        Lcom/shabakaty/downloader/gn0$b;
    }
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:I

.field public E:Z

.field public F:Z

.field public G:J

.field public H:F

.field public I:[Lcom/shabakaty/downloader/qe;

.field public J:[Ljava/nio/ByteBuffer;

.field public K:Ljava/nio/ByteBuffer;

.field public L:I

.field public M:Ljava/nio/ByteBuffer;

.field public N:[B

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:I

.field public V:Lcom/shabakaty/downloader/ci;

.field public W:Z

.field public X:J

.field public Y:Z

.field public Z:Z

.field public final a:Lcom/shabakaty/downloader/ke;

.field public final b:Lcom/shabakaty/downloader/gn0$b;

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/yy;

.field public final e:Lcom/shabakaty/downloader/er4;

.field public final f:[Lcom/shabakaty/downloader/qe;

.field public final g:[Lcom/shabakaty/downloader/qe;

.field public final h:Landroid/os/ConditionVariable;

.field public final i:Lcom/shabakaty/downloader/df;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/gn0$e;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public final l:I

.field public m:Lcom/shabakaty/downloader/gn0$h;

.field public final n:Lcom/shabakaty/downloader/gn0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gn0$f<",
            "Lcom/shabakaty/downloader/ze$b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/shabakaty/downloader/gn0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gn0$f<",
            "Lcom/shabakaty/downloader/ze$e;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/shabakaty/downloader/ze$c;

.field public q:Lcom/shabakaty/downloader/gn0$c;

.field public r:Lcom/shabakaty/downloader/gn0$c;

.field public s:Landroid/media/AudioTrack;

.field public t:Lcom/shabakaty/downloader/ie;

.field public u:Lcom/shabakaty/downloader/gn0$e;

.field public v:Lcom/shabakaty/downloader/gn0$e;

.field public w:Lcom/shabakaty/downloader/ad3;

.field public x:Ljava/nio/ByteBuffer;

.field public y:I

.field public z:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ke;Lcom/shabakaty/downloader/gn0$b;ZZI)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->a:Lcom/shabakaty/downloader/ke;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gn0;->b:Lcom/shabakaty/downloader/gn0$b;

    .line 4
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/shabakaty/downloader/gn0;->c:Z

    const/16 p3, 0x17

    if-lt p1, p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 5
    :goto_1
    iput-boolean p3, p0, Lcom/shabakaty/downloader/gn0;->k:Z

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    .line 6
    :goto_2
    iput p5, p0, Lcom/shabakaty/downloader/gn0;->l:I

    .line 7
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->h:Landroid/os/ConditionVariable;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/df;

    new-instance p3, Lcom/shabakaty/downloader/gn0$g;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/shabakaty/downloader/gn0$g;-><init>(Lcom/shabakaty/downloader/gn0;Lcom/shabakaty/downloader/gn0$a;)V

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/df;-><init>(Lcom/shabakaty/downloader/df$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/yy;

    invoke-direct {p1}, Lcom/shabakaty/downloader/yy;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->d:Lcom/shabakaty/downloader/yy;

    .line 10
    new-instance p3, Lcom/shabakaty/downloader/er4;

    invoke-direct {p3}, Lcom/shabakaty/downloader/er4;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/gn0;->e:Lcom/shabakaty/downloader/er4;

    .line 11
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x3

    new-array p5, p5, [Lcom/shabakaty/downloader/zi;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/hs3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/hs3;-><init>()V

    aput-object v2, p5, v1

    aput-object p1, p5, v0

    const/4 p1, 0x2

    aput-object p3, p5, p1

    invoke-static {p4, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    check-cast p2, Lcom/shabakaty/downloader/gn0$d;

    .line 14
    iget-object p1, p2, Lcom/shabakaty/downloader/gn0$d;->a:[Lcom/shabakaty/downloader/qe;

    .line 15
    invoke-static {p4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v1, [Lcom/shabakaty/downloader/qe;

    .line 16
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/shabakaty/downloader/qe;

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->f:[Lcom/shabakaty/downloader/qe;

    new-array p1, v0, [Lcom/shabakaty/downloader/qe;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/me1;

    invoke-direct {p2}, Lcom/shabakaty/downloader/me1;-><init>()V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->g:[Lcom/shabakaty/downloader/qe;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lcom/shabakaty/downloader/gn0;->H:F

    .line 19
    sget-object p1, Lcom/shabakaty/downloader/ie;->f:Lcom/shabakaty/downloader/ie;

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    .line 20
    iput v1, p0, Lcom/shabakaty/downloader/gn0;->U:I

    .line 21
    new-instance p1, Lcom/shabakaty/downloader/ci;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/shabakaty/downloader/ci;-><init>(IF)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/gn0$e;

    sget-object p2, Lcom/shabakaty/downloader/ad3;->d:Lcom/shabakaty/downloader/ad3;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/shabakaty/downloader/gn0$e;-><init>(Lcom/shabakaty/downloader/ad3;ZJJLcom/shabakaty/downloader/gn0$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    .line 23
    iput-object p2, p0, Lcom/shabakaty/downloader/gn0;->w:Lcom/shabakaty/downloader/ad3;

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/shabakaty/downloader/gn0;->P:I

    new-array p1, v1, [Lcom/shabakaty/downloader/qe;

    .line 25
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    .line 26
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->J:[Ljava/nio/ByteBuffer;

    .line 27
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    .line 28
    new-instance p1, Lcom/shabakaty/downloader/gn0$f;

    const-wide/16 p2, 0x64

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/gn0$f;-><init>(J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->n:Lcom/shabakaty/downloader/gn0$f;

    .line 29
    new-instance p1, Lcom/shabakaty/downloader/gn0$f;

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/gn0$f;-><init>(J)V

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->o:Lcom/shabakaty/downloader/gn0$f;

    return-void
.end method

.method public static F(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static x(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ke;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wh1;",
            "Lcom/shabakaty/downloader/ke;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/nt2;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/16 v8, 0x12

    if-eq v1, v3, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v8, :cond_2

    const/16 v9, 0x11

    if-eq v1, v9, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v7, :cond_2

    const/16 v9, 0xe

    if-ne v1, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_3

    return-object v0

    :cond_3
    if-ne v1, v8, :cond_4

    .line 4
    invoke-virtual {p1, v8}, Lcom/shabakaty/downloader/ke;->a(I)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v1, 0x6

    goto :goto_2

    :cond_4
    if-ne v1, v7, :cond_5

    .line 5
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/ke;->a(I)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v1, 0x7

    .line 6
    :cond_5
    :goto_2
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ke;->a(I)Z

    move-result v9

    if-nez v9, :cond_6

    return-object v0

    :cond_6
    const/4 v9, 0x3

    if-ne v1, v8, :cond_a

    .line 7
    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v10, 0x1d

    if-lt p1, v10, :cond_9

    .line 8
    iget p0, p0, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 9
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 10
    invoke-virtual {p1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    const/16 v10, 0x8

    :goto_3
    if-lez v10, :cond_8

    .line 13
    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 14
    invoke-virtual {v11, v8}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 15
    invoke-virtual {v11, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 16
    invoke-static {v10}, Lcom/shabakaty/downloader/sy4;->q(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 17
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v11

    .line 18
    invoke-static {v11, p1}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v2, v10

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v2, :cond_b

    const-string p0, "DefaultAudioSink"

    const-string p1, "E-AC3 JOC encoding supported but no channel count supported"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    const/4 v2, 0x6

    goto :goto_5

    .line 20
    :cond_a
    iget v2, p0, Lcom/shabakaty/downloader/wh1;->P:I

    .line 21
    iget p0, p1, Lcom/shabakaty/downloader/ke;->b:I

    if-le v2, p0, :cond_b

    return-object v0

    .line 22
    :cond_b
    :goto_5
    sget p0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 p1, 0x1c

    if-gt p0, p1, :cond_d

    if-ne v2, v4, :cond_c

    const/16 v6, 0x8

    goto :goto_6

    :cond_c
    if-eq v2, v9, :cond_e

    const/4 p1, 0x4

    if-eq v2, p1, :cond_e

    if-ne v2, v3, :cond_d

    goto :goto_6

    :cond_d
    move v6, v2

    :cond_e
    :goto_6
    const/16 p1, 0x1a

    if-gt p0, p1, :cond_f

    .line 23
    sget-object p0, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string p1, "fugu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    if-ne v6, v5, :cond_f

    const/4 v6, 0x2

    .line 24
    :cond_f
    invoke-static {v6}, Lcom/shabakaty/downloader/sy4;->q(I)I

    move-result p0

    if-nez p0, :cond_10

    return-object v0

    .line 25
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/shabakaty/downloader/gn0$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->u:Lcom/shabakaty/downloader/gn0$e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gn0$e;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    :goto_0
    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->A()Lcom/shabakaty/downloader/gn0$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/gn0$e;->b:Z

    return v0
.end method

.method public final C()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget v1, v0, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-nez v1, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/shabakaty/downloader/gn0;->B:J

    iget v0, v0, Lcom/shabakaty/downloader/gn0$c;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/shabakaty/downloader/gn0;->C:J

    :goto_0
    return-wide v1
.end method

.method public final D()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    iget-object v3, p0, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    iget v4, p0, Lcom/shabakaty/downloader/gn0;->U:I

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/gn0$c;->a(ZLcom/shabakaty/downloader/ie;I)Landroid/media/AudioTrack;

    move-result-object v1
    :try_end_0
    .catch Lcom/shabakaty/downloader/ze$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 7
    invoke-static {v1}, Lcom/shabakaty/downloader/gn0;->F(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->m:Lcom/shabakaty/downloader/gn0$h;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/gn0$h;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/gn0$h;-><init>(Lcom/shabakaty/downloader/gn0;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/gn0;->m:Lcom/shabakaty/downloader/gn0$h;

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->m:Lcom/shabakaty/downloader/gn0$h;

    .line 12
    iget-object v3, v2, Lcom/shabakaty/downloader/gn0$h;->a:Landroid/os/Handler;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/shabakaty/downloader/up2;

    invoke-direct {v4, v3, v0}, Lcom/shabakaty/downloader/up2;-><init>(Landroid/os/Handler;I)V

    iget-object v2, v2, Lcom/shabakaty/downloader/gn0$h;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {v1, v4, v2}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 13
    iget v1, p0, Lcom/shabakaty/downloader/gn0;->l:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object v2, v2, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    iget v3, v2, Lcom/shabakaty/downloader/wh1;->S:I

    iget v2, v2, Lcom/shabakaty/downloader/wh1;->T:I

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/gn0;->U:I

    .line 16
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    iget-object v3, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget v4, v1, Lcom/shabakaty/downloader/gn0$c;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lcom/shabakaty/downloader/gn0$c;->g:I

    iget v6, v1, Lcom/shabakaty/downloader/gn0$c;->d:I

    iget v7, v1, Lcom/shabakaty/downloader/gn0$c;->h:I

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/df;->e(Landroid/media/AudioTrack;ZIII)V

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->L()V

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    iget v1, v1, Lcom/shabakaty/downloader/ci;->a:I

    if-eqz v1, :cond_3

    .line 19
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    iget v2, v2, Lcom/shabakaty/downloader/ci;->b:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 21
    :cond_3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->F:Z

    return-void

    :catch_0
    move-exception v1

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/gn0$c;->f()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->Y:Z

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz v0, :cond_5

    .line 25
    check-cast v0, Lcom/shabakaty/downloader/po2$b;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/po2$b;->a(Ljava/lang/Exception;)V

    .line 26
    :cond_5
    throw v1
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->R:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/shabakaty/downloader/df;->z:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    iput-wide v3, v0, Lcom/shabakaty/downloader/df;->x:J

    .line 6
    iput-wide v1, v0, Lcom/shabakaty/downloader/df;->A:J

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/gn0;->y:I

    :cond_0
    return-void
.end method

.method public final H(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->J:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/qe;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lcom/shabakaty/downloader/gn0;->O(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    aget-object v3, v3, v1

    .line 6
    iget v4, p0, Lcom/shabakaty/downloader/gn0;->P:I

    if-le v1, v4, :cond_3

    .line 7
    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/qe;->f(Ljava/nio/ByteBuffer;)V

    .line 8
    :cond_3
    invoke-interface {v3}, Lcom/shabakaty/downloader/qe;->d()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/gn0;->J:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 10
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final I()V
    .locals 12

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/gn0;->z:J

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/gn0;->A:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/gn0;->B:J

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/gn0;->C:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->Z:Z

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/gn0;->D:I

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/gn0$e;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->y()Lcom/shabakaty/downloader/ad3;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->B()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/shabakaty/downloader/gn0$e;-><init>(Lcom/shabakaty/downloader/ad3;ZJJLcom/shabakaty/downloader/gn0$a;)V

    iput-object v11, p0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    .line 10
    iput-wide v0, p0, Lcom/shabakaty/downloader/gn0;->G:J

    const/4 v3, 0x0

    .line 11
    iput-object v3, p0, Lcom/shabakaty/downloader/gn0;->u:Lcom/shabakaty/downloader/gn0$e;

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 13
    iput-object v3, p0, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    .line 14
    iput v2, p0, Lcom/shabakaty/downloader/gn0;->L:I

    .line 15
    iput-object v3, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    .line 16
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->R:Z

    .line 17
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->Q:Z

    const/4 v4, -0x1

    .line 18
    iput v4, p0, Lcom/shabakaty/downloader/gn0;->P:I

    .line 19
    iput-object v3, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    .line 20
    iput v2, p0, Lcom/shabakaty/downloader/gn0;->y:I

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->e:Lcom/shabakaty/downloader/er4;

    .line 22
    iput-wide v0, v2, Lcom/shabakaty/downloader/er4;->o:J

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->w()V

    return-void
.end method

.method public final J(Lcom/shabakaty/downloader/ad3;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->A()Lcom/shabakaty/downloader/gn0$e;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0$e;->a:Lcom/shabakaty/downloader/ad3;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ad3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/gn0$e;->b:Z

    if-eq p2, v0, :cond_2

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/gn0$e;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/gn0$e;-><init>(Lcom/shabakaty/downloader/ad3;ZJJLcom/shabakaty/downloader/gn0$a;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/gn0;->u:Lcom/shabakaty/downloader/gn0$e;

    goto :goto_0

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    :cond_2
    :goto_0
    return-void
.end method

.method public final K(Lcom/shabakaty/downloader/ad3;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lcom/shabakaty/downloader/ad3;->a:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lcom/shabakaty/downloader/ad3;->b:F

    .line 5
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    .line 8
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/ad3;

    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/ad3;-><init>(FF)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    iget v1, p1, Lcom/shabakaty/downloader/ad3;->a:F

    .line 12
    iput v1, v0, Lcom/shabakaty/downloader/df;->j:F

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/df;->f:Lcom/shabakaty/downloader/cf;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cf;->a()V

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->w:Lcom/shabakaty/downloader/ad3;

    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/shabakaty/downloader/gn0;->H:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/shabakaty/downloader/gn0;->H:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public final M()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    iget-object v0, v0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v3, "audio/raw"

    .line 2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object v0, v0, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    iget v0, v0, Lcom/shabakaty/downloader/wh1;->R:I

    .line 3
    iget-boolean v3, p0, Lcom/shabakaty/downloader/gn0;->c:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final N(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ie;)Z
    .locals 5

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    iget v2, p0, Lcom/shabakaty/downloader/gn0;->l:I

    if-nez v2, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    iget-object v2, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/nt2;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget v3, p1, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-static {v3}, Lcom/shabakaty/downloader/sy4;->q(I)I

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 6
    :cond_2
    iget v4, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    invoke-static {v4, v3, v2}, Lcom/shabakaty/downloader/gn0;->x(III)Landroid/media/AudioFormat;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ie;->a()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 8
    invoke-static {v2, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 9
    :cond_3
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->S:I

    const/4 v2, 0x1

    if-nez p2, :cond_5

    iget p1, p1, Lcom/shabakaty/downloader/wh1;->T:I

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 10
    :goto_1
    iget p2, p0, Lcom/shabakaty/downloader/gn0;->l:I

    if-ne p2, v2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/16 p1, 0x1e

    if-lt v0, p1, :cond_7

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string p2, "Pixel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    :goto_4
    return v1
.end method

.method public final O(Ljava/nio/ByteBuffer;J)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Lcom/shabakaty/downloader/gn0;->N:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/shabakaty/downloader/gn0;->N:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/gn0;->N:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v3, p0, Lcom/shabakaty/downloader/gn0;->O:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v4, v1, :cond_6

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    iget-wide v5, p0, Lcom/shabakaty/downloader/gn0;->B:J

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v7

    iget p3, p2, Lcom/shabakaty/downloader/df;->d:I

    int-to-long v9, p3

    mul-long v7, v7, v9

    sub-long/2addr v5, v7

    long-to-int p3, v5

    .line 17
    iget p2, p2, Lcom/shabakaty/downloader/df;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_c

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->N:[B

    iget v5, p0, Lcom/shabakaty/downloader/gn0;->O:I

    .line 20
    invoke-virtual {p3, v1, v5, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_10

    .line 21
    iget p3, p0, Lcom/shabakaty/downloader/gn0;->O:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/shabakaty/downloader/gn0;->O:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 23
    :cond_6
    iget-boolean v1, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    if-eqz v1, :cond_f

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v5

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 24
    :goto_2
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 25
    iget-object v6, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    const-wide/16 v7, 0x3e8

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_8

    const/4 v9, 0x1

    mul-long v10, p2, v7

    move-object v7, p1

    move v8, v0

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_3

    .line 27
    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_9

    const/16 v1, 0x10

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    .line 29
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    :cond_9
    iget v1, p0, Lcom/shabakaty/downloader/gn0;->y:I

    if-nez v1, :cond_a

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    mul-long p2, p2, v7

    invoke-virtual {v1, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iput v0, p0, Lcom/shabakaty/downloader/gn0;->y:I

    .line 36
    :cond_a
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_d

    .line 37
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->x:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_b

    .line 39
    iput v3, p0, Lcom/shabakaty/downloader/gn0;->y:I

    move p2, p3

    goto :goto_3

    :cond_b
    if-ge p3, p2, :cond_d

    :cond_c
    const/4 p2, 0x0

    goto :goto_3

    .line 40
    :cond_d
    invoke-virtual {v6, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e

    .line 41
    iput v3, p0, Lcom/shabakaty/downloader/gn0;->y:I

    goto :goto_3

    .line 42
    :cond_e
    iget p3, p0, Lcom/shabakaty/downloader/gn0;->y:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/shabakaty/downloader/gn0;->y:I

    goto :goto_3

    .line 43
    :cond_f
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 44
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 45
    :cond_10
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/shabakaty/downloader/gn0;->X:J

    if-gez p2, :cond_18

    const/16 p1, 0x18

    if-lt v4, p1, :cond_11

    const/4 p1, -0x6

    if-eq p2, p1, :cond_12

    :cond_11
    const/16 p1, -0x20

    if-ne p2, p1, :cond_13

    :cond_12
    const/4 v3, 0x1

    :cond_13
    if-eqz v3, :cond_15

    .line 46
    iget-object p1, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gn0$c;->f()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_4

    .line 47
    :cond_14
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->Y:Z

    .line 48
    :cond_15
    :goto_4
    new-instance p1, Lcom/shabakaty/downloader/ze$e;

    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object p3, p3, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    invoke-direct {p1, p2, p3, v3}, Lcom/shabakaty/downloader/ze$e;-><init>(ILcom/shabakaty/downloader/wh1;Z)V

    .line 49
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz p2, :cond_16

    .line 50
    check-cast p2, Lcom/shabakaty/downloader/po2$b;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/po2$b;->a(Ljava/lang/Exception;)V

    .line 51
    :cond_16
    iget-boolean p2, p1, Lcom/shabakaty/downloader/ze$e;->r:Z

    if-nez p2, :cond_17

    .line 52
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->o:Lcom/shabakaty/downloader/gn0$f;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/gn0$f;->a(Ljava/lang/Exception;)V

    return-void

    .line 53
    :cond_17
    throw p1

    .line 54
    :cond_18
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->o:Lcom/shabakaty/downloader/gn0$f;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p3, Lcom/shabakaty/downloader/gn0$f;->a:Ljava/lang/Exception;

    .line 56
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/shabakaty/downloader/gn0;->F(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 57
    iget-wide v4, p0, Lcom/shabakaty/downloader/gn0;->C:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_19

    .line 58
    iput-boolean v3, p0, Lcom/shabakaty/downloader/gn0;->Z:Z

    .line 59
    :cond_19
    iget-boolean p3, p0, Lcom/shabakaty/downloader/gn0;->S:Z

    if-eqz p3, :cond_1a

    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz p3, :cond_1a

    if-ge p2, v0, :cond_1a

    iget-boolean p3, p0, Lcom/shabakaty/downloader/gn0;->Z:Z

    if-nez p3, :cond_1a

    .line 60
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 61
    invoke-virtual {p3}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Lcom/shabakaty/downloader/df;->a(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v4

    .line 62
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    check-cast p3, Lcom/shabakaty/downloader/po2$b;

    .line 63
    iget-object p3, p3, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 64
    iget-object p3, p3, Lcom/shabakaty/downloader/po2;->i1:Lcom/shabakaty/downloader/lr3$a;

    if-eqz p3, :cond_1a

    .line 65
    invoke-interface {p3, v4, v5}, Lcom/shabakaty/downloader/lr3$a;->b(J)V

    .line 66
    :cond_1a
    iget-object p3, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget p3, p3, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-nez p3, :cond_1b

    .line 67
    iget-wide v4, p0, Lcom/shabakaty/downloader/gn0;->B:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/shabakaty/downloader/gn0;->B:J

    :cond_1b
    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1d

    .line 68
    iget-object p2, p0, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_1c

    goto :goto_5

    :cond_1c
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 69
    iget-wide p1, p0, Lcom/shabakaty/downloader/gn0;->C:J

    iget p3, p0, Lcom/shabakaty/downloader/gn0;->D:I

    iget v0, p0, Lcom/shabakaty/downloader/gn0;->L:I

    mul-int p3, p3, v0

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shabakaty/downloader/gn0;->C:J

    .line 70
    :cond_1d
    iput-object v1, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    :cond_1e
    return-void
.end method

.method public a(Lcom/shabakaty/downloader/wh1;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gn0;->r(Lcom/shabakaty/downloader/wh1;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->w:Lcom/shabakaty/downloader/ad3;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->y()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d(J)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->b:Lcom/shabakaty/downloader/gn0$b;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->y()Lcom/shabakaty/downloader/ad3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/gn0$b;->b(Lcom/shabakaty/downloader/ad3;)Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ad3;->d:Lcom/shabakaty/downloader/ad3;

    :goto_0
    move-object v2, v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->M()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->b:Lcom/shabakaty/downloader/gn0$b;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->B()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/gn0$b;->d(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v10, p0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/shabakaty/downloader/gn0$e;

    const-wide/16 v3, 0x0

    .line 7
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/shabakaty/downloader/gn0$c;->c(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, v11

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/gn0$e;-><init>(Lcom/shabakaty/downloader/ad3;ZJJLcom/shabakaty/downloader/gn0$a;)V

    .line 9
    invoke-virtual {v10, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object p1, p1, Lcom/shabakaty/downloader/gn0$c;->i:[Lcom/shabakaty/downloader/qe;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v1, p1

    :goto_2
    if-ge v9, v1, :cond_3

    aget-object v2, p1, v9

    .line 13
    invoke-interface {v2}, Lcom/shabakaty/downloader/qe;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_2
    invoke-interface {v2}, Lcom/shabakaty/downloader/qe;->flush()V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 17
    new-array v1, p1, [Lcom/shabakaty/downloader/qe;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/shabakaty/downloader/qe;

    iput-object p2, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    .line 18
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->J:[Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->w()V

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz p1, :cond_4

    .line 21
    check-cast p1, Lcom/shabakaty/downloader/po2$b;

    .line 22
    iget-object p1, p1, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 23
    iget-object p1, p1, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 24
    iget-object p2, p1, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz p2, :cond_4

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/lr;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/downloader/lr;-><init>(Lcom/shabakaty/downloader/ye$a;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public e(Lcom/shabakaty/downloader/ad3;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ad3;

    iget v1, p1, Lcom/shabakaty/downloader/ad3;->a:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2, v3}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result v1

    iget p1, p1, Lcom/shabakaty/downloader/ad3;->b:F

    .line 3
    invoke-static {p1, v2, v3}, Lcom/shabakaty/downloader/sy4;->h(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/ad3;-><init>(FF)V

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/gn0;->k:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/gn0;->K(Lcom/shabakaty/downloader/ad3;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->B()Z

    move-result p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/gn0;->J(Lcom/shabakaty/downloader/ad3;Z)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->Q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->G()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->Q:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->I()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/df;->c:Landroid/media/AudioTrack;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/shabakaty/downloader/gn0;->F(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->m:Lcom/shabakaty/downloader/gn0$h;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 12
    iget-object v4, v0, Lcom/shabakaty/downloader/gn0$h;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/gn0$h;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 15
    iput-object v1, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    .line 16
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->T:Z

    if-nez v2, :cond_3

    .line 17
    iput v3, p0, Lcom/shabakaty/downloader/gn0;->U:I

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    if-eqz v2, :cond_4

    .line 19
    iput-object v2, p0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    .line 20
    iput-object v1, p0, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/df;->d()V

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/gn0$a;

    const-string v3, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v2, p0, v3, v0}, Lcom/shabakaty/downloader/gn0$a;-><init>(Lcom/shabakaty/downloader/gn0;Ljava/lang/String;Landroid/media/AudioTrack;)V

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->o:Lcom/shabakaty/downloader/gn0$f;

    .line 26
    iput-object v1, v0, Lcom/shabakaty/downloader/gn0$f;->a:Ljava/lang/Exception;

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->n:Lcom/shabakaty/downloader/gn0$f;

    .line 28
    iput-object v1, v0, Lcom/shabakaty/downloader/gn0$f;->a:Ljava/lang/Exception;

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/df;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gn0;->U:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/gn0;->U:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/gn0;->T:Z

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->S:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/df;->f:Lcom/shabakaty/downloader/cf;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cf;->a()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public j(Lcom/shabakaty/downloader/ci;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/shabakaty/downloader/ci;->a:I

    .line 3
    iget v1, p1, Lcom/shabakaty/downloader/ci;->b:F

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    iget v3, v3, Lcom/shabakaty/downloader/ci;->a:I

    if-eq v3, v0, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->V:Lcom/shabakaty/downloader/ci;

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/ze$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    return-void
.end method

.method public l(Lcom/shabakaty/downloader/wh1;I[I)V
    .locals 14

    move-object v1, p0

    move-object v3, p1

    .line 1
    iget-object v0, v3, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget v0, v3, Lcom/shabakaty/downloader/wh1;->R:I

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->F(I)Z

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    iget v0, v3, Lcom/shabakaty/downloader/wh1;->R:I

    iget v5, v3, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/sy4;->x(II)I

    move-result v0

    .line 4
    iget v5, v3, Lcom/shabakaty/downloader/wh1;->R:I

    .line 5
    iget-boolean v6, v1, Lcom/shabakaty/downloader/gn0;->c:Z

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/shabakaty/downloader/sy4;->E(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v1, Lcom/shabakaty/downloader/gn0;->g:[Lcom/shabakaty/downloader/qe;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/gn0;->f:[Lcom/shabakaty/downloader/qe;

    .line 8
    :goto_1
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->e:Lcom/shabakaty/downloader/er4;

    iget v6, v3, Lcom/shabakaty/downloader/wh1;->S:I

    iget v7, v3, Lcom/shabakaty/downloader/wh1;->T:I

    .line 9
    iput v6, v5, Lcom/shabakaty/downloader/er4;->i:I

    .line 10
    iput v7, v5, Lcom/shabakaty/downloader/er4;->j:I

    .line 11
    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2

    iget v5, v3, Lcom/shabakaty/downloader/wh1;->P:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    if-nez p3, :cond_2

    const/4 v5, 0x6

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    .line 12
    aput v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    .line 13
    :cond_3
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->d:Lcom/shabakaty/downloader/yy;

    .line 14
    iput-object v6, v5, Lcom/shabakaty/downloader/yy;->i:[I

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/qe$a;

    iget v6, v3, Lcom/shabakaty/downloader/wh1;->Q:I

    iget v7, v3, Lcom/shabakaty/downloader/wh1;->P:I

    iget v8, v3, Lcom/shabakaty/downloader/wh1;->R:I

    invoke-direct {v5, v6, v7, v8}, Lcom/shabakaty/downloader/qe$a;-><init>(III)V

    .line 16
    array-length v6, v2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v2, v7

    .line 17
    :try_start_0
    invoke-interface {v8, v5}, Lcom/shabakaty/downloader/qe;->e(Lcom/shabakaty/downloader/qe$a;)Lcom/shabakaty/downloader/qe$a;

    move-result-object v9

    .line 18
    invoke-interface {v8}, Lcom/shabakaty/downloader/qe;->c()Z

    move-result v8
    :try_end_0
    .catch Lcom/shabakaty/downloader/qe$b; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_4

    move-object v5, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/ze$a;

    invoke-direct {v2, v0, p1}, Lcom/shabakaty/downloader/ze$a;-><init>(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;)V

    throw v2

    .line 20
    :cond_5
    iget v6, v5, Lcom/shabakaty/downloader/qe$a;->c:I

    .line 21
    iget v7, v5, Lcom/shabakaty/downloader/qe$a;->a:I

    .line 22
    iget v8, v5, Lcom/shabakaty/downloader/qe$a;->b:I

    invoke-static {v8}, Lcom/shabakaty/downloader/sy4;->q(I)I

    move-result v8

    .line 23
    iget v5, v5, Lcom/shabakaty/downloader/qe$a;->b:I

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/sy4;->x(II)I

    move-result v5

    const/4 v9, 0x0

    move-object v12, v2

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    new-array v0, v4, [Lcom/shabakaty/downloader/qe;

    .line 24
    iget v5, v3, Lcom/shabakaty/downloader/wh1;->Q:I

    .line 25
    iget-object v6, v1, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    invoke-virtual {p0, p1, v6}, Lcom/shabakaty/downloader/gn0;->N(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ie;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 26
    iget-object v6, v3, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 27
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v7, v3, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    .line 29
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/nt2;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 30
    iget v7, v3, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-static {v7}, Lcom/shabakaty/downloader/sy4;->q(I)I

    move-result v7

    goto :goto_4

    .line 31
    :cond_7
    iget-object v2, v1, Lcom/shabakaty/downloader/gn0;->a:Lcom/shabakaty/downloader/ke;

    .line 32
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/gn0;->z(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ke;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 33
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 34
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x2

    :goto_4
    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v12, v0

    move v9, v6

    move v8, v7

    const/4 v0, -0x1

    const/4 v6, -0x1

    move v7, v5

    move v5, v2

    :goto_5
    const-string v2, ") for: "

    if-eqz v9, :cond_a

    if-eqz v8, :cond_9

    .line 35
    iput-boolean v4, v1, Lcom/shabakaty/downloader/gn0;->Y:Z

    .line 36
    new-instance v13, Lcom/shabakaty/downloader/gn0$c;

    iget-boolean v11, v1, Lcom/shabakaty/downloader/gn0;->k:Z

    move-object v2, v13

    move-object v3, p1

    move v4, v0

    move/from16 v10, p2

    invoke-direct/range {v2 .. v12}, Lcom/shabakaty/downloader/gn0$c;-><init>(Lcom/shabakaty/downloader/wh1;IIIIIIIZ[Lcom/shabakaty/downloader/qe;)V

    .line 37
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iput-object v13, v1, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    goto :goto_6

    .line 39
    :cond_8
    iput-object v13, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    :goto_6
    return-void

    .line 40
    :cond_9
    new-instance v0, Lcom/shabakaty/downloader/ze$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x36

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid output channel config (mode="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/shabakaty/downloader/ze$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;)V

    throw v0

    .line 41
    :cond_a
    new-instance v0, Lcom/shabakaty/downloader/ze$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid output encoding (mode="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/shabakaty/downloader/ze$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;)V

    throw v0

    .line 42
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/ze$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    const-string v5, "Unable to configure passthrough for: "

    invoke-static {v4, v5, v2}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/shabakaty/downloader/ze$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;)V

    throw v0
.end method

.method public m(Z)J
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, v0, Lcom/shabakaty/downloader/gn0;->F:Z

    if-eqz v1, :cond_0

    goto/16 :goto_f

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/df;->c:Landroid/media/AudioTrack;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x3e8

    if-ne v2, v4, :cond_18

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/shabakaty/downloader/df;->a(J)J

    move-result-wide v24

    cmp-long v2, v24, v10

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v13

    .line 8
    iget-wide v7, v1, Lcom/shabakaty/downloader/df;->m:J

    sub-long v7, v5, v7

    const-wide/16 v17, 0x7530

    cmp-long v2, v7, v17

    if-ltz v2, :cond_3

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/df;->b:[J

    iget v7, v1, Lcom/shabakaty/downloader/df;->v:I

    sub-long v17, v24, v5

    aput-wide v17, v2, v7

    add-int/2addr v7, v9

    const/16 v2, 0xa

    .line 10
    rem-int/2addr v7, v2

    iput v7, v1, Lcom/shabakaty/downloader/df;->v:I

    .line 11
    iget v7, v1, Lcom/shabakaty/downloader/df;->w:I

    if-ge v7, v2, :cond_2

    add-int/2addr v7, v9

    .line 12
    iput v7, v1, Lcom/shabakaty/downloader/df;->w:I

    .line 13
    :cond_2
    iput-wide v5, v1, Lcom/shabakaty/downloader/df;->m:J

    .line 14
    iput-wide v10, v1, Lcom/shabakaty/downloader/df;->l:J

    const/4 v2, 0x0

    .line 15
    :goto_0
    iget v7, v1, Lcom/shabakaty/downloader/df;->w:I

    if-ge v2, v7, :cond_3

    .line 16
    iget-wide v10, v1, Lcom/shabakaty/downloader/df;->l:J

    iget-object v8, v1, Lcom/shabakaty/downloader/df;->b:[J

    aget-wide v17, v8, v2

    int-to-long v7, v7

    div-long v17, v17, v7

    add-long v7, v17, v10

    iput-wide v7, v1, Lcom/shabakaty/downloader/df;->l:J

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_0

    .line 17
    :cond_3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/df;->h:Z

    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 18
    :cond_4
    iget-object v2, v1, Lcom/shabakaty/downloader/df;->f:Lcom/shabakaty/downloader/cf;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v7, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    const/4 v8, 0x4

    if-eqz v7, :cond_f

    iget-wide v10, v2, Lcom/shabakaty/downloader/cf;->e:J

    sub-long v10, v5, v10

    iget-wide v12, v2, Lcom/shabakaty/downloader/cf;->d:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_5

    goto/16 :goto_1

    .line 21
    :cond_5
    iput-wide v5, v2, Lcom/shabakaty/downloader/cf;->e:J

    .line 22
    iget-object v10, v7, Lcom/shabakaty/downloader/cf$a;->a:Landroid/media/AudioTrack;

    iget-object v11, v7, Lcom/shabakaty/downloader/cf$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v10, v11}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 23
    iget-object v11, v7, Lcom/shabakaty/downloader/cf$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v11, Landroid/media/AudioTimestamp;->framePosition:J

    .line 24
    iget-wide v13, v7, Lcom/shabakaty/downloader/cf$a;->d:J

    cmp-long v17, v13, v11

    if-lez v17, :cond_6

    .line 25
    iget-wide v13, v7, Lcom/shabakaty/downloader/cf$a;->c:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v7, Lcom/shabakaty/downloader/cf$a;->c:J

    .line 26
    :cond_6
    iput-wide v11, v7, Lcom/shabakaty/downloader/cf$a;->d:J

    .line 27
    iget-wide v13, v7, Lcom/shabakaty/downloader/cf$a;->c:J

    const/16 v17, 0x20

    shl-long v13, v13, v17

    add-long/2addr v11, v13

    iput-wide v11, v7, Lcom/shabakaty/downloader/cf$a;->e:J

    .line 28
    :cond_7
    iget v7, v2, Lcom/shabakaty/downloader/cf;->b:I

    if-eqz v7, :cond_d

    if-eq v7, v9, :cond_b

    if-eq v7, v3, :cond_a

    if-eq v7, v4, :cond_9

    if-ne v7, v8, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_9
    if-eqz v10, :cond_10

    .line 30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/cf;->a()V

    goto :goto_2

    :cond_a
    if-nez v10, :cond_10

    .line 31
    invoke-virtual {v2}, Lcom/shabakaty/downloader/cf;->a()V

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    .line 32
    iget-object v4, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    .line 33
    iget-wide v11, v4, Lcom/shabakaty/downloader/cf$a;->e:J

    .line 34
    iget-wide v13, v2, Lcom/shabakaty/downloader/cf;->f:J

    cmp-long v4, v11, v13

    if-lez v4, :cond_10

    .line 35
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/cf;->b(I)V

    goto :goto_2

    .line 36
    :cond_c
    invoke-virtual {v2}, Lcom/shabakaty/downloader/cf;->a()V

    goto :goto_2

    :cond_d
    if-eqz v10, :cond_e

    .line 37
    iget-object v4, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    .line 38
    iget-object v7, v4, Lcom/shabakaty/downloader/cf$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 39
    iget-wide v13, v2, Lcom/shabakaty/downloader/cf;->c:J

    cmp-long v7, v11, v13

    if-ltz v7, :cond_f

    .line 40
    iget-wide v11, v4, Lcom/shabakaty/downloader/cf$a;->e:J

    .line 41
    iput-wide v11, v2, Lcom/shabakaty/downloader/cf;->f:J

    .line 42
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/cf;->b(I)V

    goto :goto_2

    .line 43
    :cond_e
    iget-wide v11, v2, Lcom/shabakaty/downloader/cf;->c:J

    sub-long v11, v5, v11

    const-wide/32 v13, 0x7a120

    cmp-long v7, v11, v13

    if-lez v7, :cond_10

    .line 44
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/cf;->b(I)V

    goto :goto_2

    :cond_f
    :goto_1
    const/4 v10, 0x0

    :cond_10
    :goto_2
    const-wide/32 v11, 0x4c4b40

    if-nez v10, :cond_11

    goto :goto_5

    .line 45
    :cond_11
    iget-object v4, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    if-eqz v4, :cond_12

    .line 46
    iget-object v7, v4, Lcom/shabakaty/downloader/cf$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v13, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    move-wide/from16 v20, v13

    goto :goto_3

    :cond_12
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-eqz v4, :cond_13

    .line 47
    iget-wide v13, v4, Lcom/shabakaty/downloader/cf$a;->e:J

    goto :goto_4

    :cond_13
    const-wide/16 v13, -0x1

    :goto_4
    sub-long v17, v20, v5

    .line 48
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v4, v17, v11

    if-lez v4, :cond_14

    .line 49
    iget-object v4, v1, Lcom/shabakaty/downloader/df;->a:Lcom/shabakaty/downloader/df$a;

    move-object/from16 v17, v4

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lcom/shabakaty/downloader/df$a;->e(JJJJ)V

    .line 50
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cf;->b(I)V

    goto :goto_5

    .line 51
    :cond_14
    invoke-virtual {v1, v13, v14}, Lcom/shabakaty/downloader/df;->a(J)J

    move-result-wide v17

    sub-long v17, v17, v24

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v4, v17, v11

    if-lez v4, :cond_15

    .line 52
    iget-object v4, v1, Lcom/shabakaty/downloader/df;->a:Lcom/shabakaty/downloader/df$a;

    move-object/from16 v17, v4

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lcom/shabakaty/downloader/df$a;->d(JJJJ)V

    .line 53
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/cf;->b(I)V

    goto :goto_5

    .line 54
    :cond_15
    iget v4, v2, Lcom/shabakaty/downloader/cf;->b:I

    if-ne v4, v8, :cond_16

    .line 55
    invoke-virtual {v2}, Lcom/shabakaty/downloader/cf;->a()V

    .line 56
    :cond_16
    :goto_5
    iget-boolean v2, v1, Lcom/shabakaty/downloader/df;->q:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/shabakaty/downloader/df;->n:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    iget-wide v7, v1, Lcom/shabakaty/downloader/df;->r:J

    sub-long v7, v5, v7

    const-wide/32 v13, 0x7a120

    cmp-long v4, v7, v13

    if-ltz v4, :cond_18

    .line 57
    :try_start_0
    iget-object v4, v1, Lcom/shabakaty/downloader/df;->c:Landroid/media/AudioTrack;

    .line 58
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const-wide/16 v17, 0x3e8

    mul-long v13, v13, v17

    iget-wide v7, v1, Lcom/shabakaty/downloader/df;->i:J

    sub-long/2addr v13, v7

    iput-wide v13, v1, Lcom/shabakaty/downloader/df;->o:J

    const-wide/16 v7, 0x0

    .line 60
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/shabakaty/downloader/df;->o:J

    cmp-long v2, v13, v11

    if-lez v2, :cond_17

    .line 61
    iget-object v2, v1, Lcom/shabakaty/downloader/df;->a:Lcom/shabakaty/downloader/df$a;

    invoke-interface {v2, v13, v14}, Lcom/shabakaty/downloader/df$a;->c(J)V

    const-wide/16 v7, 0x0

    .line 62
    iput-wide v7, v1, Lcom/shabakaty/downloader/df;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v2, 0x0

    .line 63
    iput-object v2, v1, Lcom/shabakaty/downloader/df;->n:Ljava/lang/reflect/Method;

    .line 64
    :cond_17
    :goto_6
    iput-wide v5, v1, Lcom/shabakaty/downloader/df;->r:J

    .line 65
    :cond_18
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 66
    iget-object v2, v1, Lcom/shabakaty/downloader/df;->f:Lcom/shabakaty/downloader/cf;

    .line 67
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v6, v2, Lcom/shabakaty/downloader/cf;->b:I

    if-ne v6, v3, :cond_19

    const/4 v12, 0x1

    goto :goto_8

    :cond_19
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_1c

    .line 69
    iget-object v3, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    if-eqz v3, :cond_1a

    .line 70
    iget-wide v7, v3, Lcom/shabakaty/downloader/cf$a;->e:J

    goto :goto_9

    :cond_1a
    const-wide/16 v7, -0x1

    .line 71
    :goto_9
    invoke-virtual {v1, v7, v8}, Lcom/shabakaty/downloader/df;->a(J)J

    move-result-wide v6

    .line 72
    iget-object v2, v2, Lcom/shabakaty/downloader/cf;->a:Lcom/shabakaty/downloader/cf$a;

    if-eqz v2, :cond_1b

    .line 73
    iget-object v2, v2, Lcom/shabakaty/downloader/cf$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v2, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v2, v10

    move-wide v15, v2

    goto :goto_a

    :cond_1b
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    sub-long v2, v4, v15

    .line 74
    iget v8, v1, Lcom/shabakaty/downloader/df;->j:F

    .line 75
    invoke-static {v2, v3, v8}, Lcom/shabakaty/downloader/sy4;->u(JF)J

    move-result-wide v2

    add-long/2addr v2, v6

    goto :goto_c

    .line 76
    :cond_1c
    iget v2, v1, Lcom/shabakaty/downloader/df;->w:I

    if-nez v2, :cond_1d

    .line 77
    invoke-virtual {v1}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/df;->a(J)J

    move-result-wide v2

    goto :goto_b

    .line 78
    :cond_1d
    iget-wide v2, v1, Lcom/shabakaty/downloader/df;->l:J

    add-long/2addr v2, v4

    :goto_b
    if-nez p1, :cond_1e

    .line 79
    iget-wide v6, v1, Lcom/shabakaty/downloader/df;->o:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 80
    :cond_1e
    :goto_c
    iget-boolean v6, v1, Lcom/shabakaty/downloader/df;->D:Z

    if-eq v6, v12, :cond_1f

    .line 81
    iget-wide v6, v1, Lcom/shabakaty/downloader/df;->C:J

    iput-wide v6, v1, Lcom/shabakaty/downloader/df;->F:J

    .line 82
    iget-wide v6, v1, Lcom/shabakaty/downloader/df;->B:J

    iput-wide v6, v1, Lcom/shabakaty/downloader/df;->E:J

    .line 83
    :cond_1f
    iget-wide v6, v1, Lcom/shabakaty/downloader/df;->F:J

    sub-long v6, v4, v6

    const-wide/32 v10, 0xf4240

    cmp-long v8, v6, v10

    if-gez v8, :cond_20

    .line 84
    iget-wide v13, v1, Lcom/shabakaty/downloader/df;->E:J

    iget v8, v1, Lcom/shabakaty/downloader/df;->j:F

    .line 85
    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/sy4;->u(JF)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x3e8

    mul-long v6, v6, v13

    .line 86
    div-long/2addr v6, v10

    mul-long v2, v2, v6

    sub-long v6, v13, v6

    mul-long v6, v6, v15

    add-long/2addr v6, v2

    .line 87
    div-long v2, v6, v13

    .line 88
    :cond_20
    iget-boolean v6, v1, Lcom/shabakaty/downloader/df;->k:Z

    if-nez v6, :cond_21

    iget-wide v6, v1, Lcom/shabakaty/downloader/df;->B:J

    cmp-long v8, v2, v6

    if-lez v8, :cond_21

    .line 89
    iput-boolean v9, v1, Lcom/shabakaty/downloader/df;->k:Z

    sub-long v6, v2, v6

    .line 90
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v6

    .line 91
    iget v8, v1, Lcom/shabakaty/downloader/df;->j:F

    .line 92
    invoke-static {v6, v7, v8}, Lcom/shabakaty/downloader/sy4;->y(JF)J

    move-result-wide v6

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v6

    sub-long/2addr v8, v6

    .line 94
    iget-object v6, v1, Lcom/shabakaty/downloader/df;->a:Lcom/shabakaty/downloader/df$a;

    invoke-interface {v6, v8, v9}, Lcom/shabakaty/downloader/df$a;->a(J)V

    .line 95
    :cond_21
    iput-wide v4, v1, Lcom/shabakaty/downloader/df;->C:J

    .line 96
    iput-wide v2, v1, Lcom/shabakaty/downloader/df;->B:J

    .line 97
    iput-boolean v12, v1, Lcom/shabakaty/downloader/df;->D:Z

    .line 98
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/shabakaty/downloader/gn0$c;->c(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 99
    :goto_d
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gn0$e;

    iget-wide v3, v3, Lcom/shabakaty/downloader/gn0$e;->d:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_22

    .line 101
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gn0$e;

    iput-object v3, v0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    goto :goto_d

    .line 102
    :cond_22
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    iget-wide v4, v3, Lcom/shabakaty/downloader/gn0$e;->d:J

    sub-long v4, v1, v4

    .line 103
    iget-object v3, v3, Lcom/shabakaty/downloader/gn0$e;->a:Lcom/shabakaty/downloader/ad3;

    sget-object v6, Lcom/shabakaty/downloader/ad3;->d:Lcom/shabakaty/downloader/ad3;

    invoke-virtual {v3, v6}, Lcom/shabakaty/downloader/ad3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 104
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    iget-wide v1, v1, Lcom/shabakaty/downloader/gn0$e;->c:J

    add-long/2addr v1, v4

    goto :goto_e

    .line 105
    :cond_23
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 106
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0;->b:Lcom/shabakaty/downloader/gn0$b;

    .line 107
    invoke-interface {v1, v4, v5}, Lcom/shabakaty/downloader/gn0$b;->a(J)J

    move-result-wide v1

    .line 108
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    iget-wide v3, v3, Lcom/shabakaty/downloader/gn0$e;->c:J

    add-long/2addr v1, v3

    goto :goto_e

    .line 109
    :cond_24
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->j:Ljava/util/ArrayDeque;

    .line 110
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/gn0$e;

    .line 111
    iget-wide v4, v3, Lcom/shabakaty/downloader/gn0$e;->d:J

    sub-long/2addr v4, v1

    .line 112
    iget-object v1, v0, Lcom/shabakaty/downloader/gn0;->v:Lcom/shabakaty/downloader/gn0$e;

    iget-object v1, v1, Lcom/shabakaty/downloader/gn0$e;->a:Lcom/shabakaty/downloader/ad3;

    iget v1, v1, Lcom/shabakaty/downloader/ad3;->a:F

    .line 113
    invoke-static {v4, v5, v1}, Lcom/shabakaty/downloader/sy4;->u(JF)J

    move-result-wide v1

    .line 114
    iget-wide v3, v3, Lcom/shabakaty/downloader/gn0$e;->c:J

    sub-long v1, v3, v1

    .line 115
    :goto_e
    iget-object v3, v0, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object v4, v0, Lcom/shabakaty/downloader/gn0;->b:Lcom/shabakaty/downloader/gn0$b;

    .line 116
    invoke-interface {v4}, Lcom/shabakaty/downloader/gn0$b;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/shabakaty/downloader/gn0$c;->c(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    :cond_25
    :goto_f
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->E:Z

    return-void
.end method

.method public p(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gn0;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/gn0;->H:F

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->L()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->S:Z

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v1, Lcom/shabakaty/downloader/df;->l:J

    .line 4
    iput v0, v1, Lcom/shabakaty/downloader/df;->w:I

    .line 5
    iput v0, v1, Lcom/shabakaty/downloader/df;->v:I

    .line 6
    iput-wide v2, v1, Lcom/shabakaty/downloader/df;->m:J

    .line 7
    iput-wide v2, v1, Lcom/shabakaty/downloader/df;->C:J

    .line 8
    iput-wide v2, v1, Lcom/shabakaty/downloader/df;->F:J

    .line 9
    iput-boolean v0, v1, Lcom/shabakaty/downloader/df;->k:Z

    .line 10
    iget-wide v2, v1, Lcom/shabakaty/downloader/df;->x:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 11
    iget-object v0, v1, Lcom/shabakaty/downloader/df;->f:Lcom/shabakaty/downloader/cf;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cf;->a()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->T:Z

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    :cond_1
    return-void
.end method

.method public r(Lcom/shabakaty/downloader/wh1;)I
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Lcom/shabakaty/downloader/wh1;->R:I

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->F(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->R:I

    const/16 v0, 0x21

    const-string v1, "Invalid PCM encoding: "

    const-string v3, "DefaultAudioSink"

    invoke-static {v0, v1, p1, v3}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    return v2

    .line 4
    :cond_0
    iget p1, p1, Lcom/shabakaty/downloader/wh1;->R:I

    if-eq p1, v3, :cond_2

    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v3

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gn0;->Y:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/gn0;->N(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ie;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->a:Lcom/shabakaty/downloader/ke;

    .line 7
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/gn0;->z(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/ke;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public reset()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->f:[Lcom/shabakaty/downloader/qe;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Lcom/shabakaty/downloader/qe;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->g:[Lcom/shabakaty/downloader/qe;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4}, Lcom/shabakaty/downloader/qe;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->S:Z

    .line 7
    iput-boolean v2, p0, Lcom/shabakaty/downloader/gn0;->Y:Z

    return-void
.end method

.method public s(Ljava/nio/ByteBuffer;JI)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 2
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v5, :cond_7

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->v()Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    .line 4
    :cond_2
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    iget-object v10, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v11, v10, Lcom/shabakaty/downloader/gn0$c;->c:I

    iget v12, v5, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/shabakaty/downloader/gn0$c;->g:I

    iget v12, v5, Lcom/shabakaty/downloader/gn0$c;->g:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/shabakaty/downloader/gn0$c;->e:I

    iget v12, v5, Lcom/shabakaty/downloader/gn0$c;->e:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lcom/shabakaty/downloader/gn0$c;->f:I

    iget v12, v5, Lcom/shabakaty/downloader/gn0$c;->f:I

    if-ne v11, v12, :cond_3

    iget v10, v10, Lcom/shabakaty/downloader/gn0$c;->d:I

    iget v5, v5, Lcom/shabakaty/downloader/gn0$c;->d:I

    if-ne v10, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->G()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->g()Z

    move-result v5

    if-eqz v5, :cond_4

    return v6

    .line 8
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    goto :goto_3

    .line 9
    :cond_5
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    iput-object v5, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    .line 10
    iput-object v8, v1, Lcom/shabakaty/downloader/gn0;->q:Lcom/shabakaty/downloader/gn0$c;

    .line 11
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-static {v5}, Lcom/shabakaty/downloader/gn0;->F(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v1, Lcom/shabakaty/downloader/gn0;->l:I

    if-eq v5, v9, :cond_6

    .line 12
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 13
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->s:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget-object v9, v9, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    iget v10, v9, Lcom/shabakaty/downloader/wh1;->S:I

    iget v9, v9, Lcom/shabakaty/downloader/wh1;->T:I

    invoke-virtual {v5, v10, v9}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 14
    iput-boolean v7, v1, Lcom/shabakaty/downloader/gn0;->Z:Z

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/gn0;->d(J)V

    .line 16
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->E()Z

    move-result v5

    if-nez v5, :cond_9

    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->D()V
    :try_end_0
    .catch Lcom/shabakaty/downloader/ze$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 18
    iget-boolean v0, v2, Lcom/shabakaty/downloader/ze$b;->r:Z

    if-nez v0, :cond_8

    .line 19
    iget-object v0, v1, Lcom/shabakaty/downloader/gn0;->n:Lcom/shabakaty/downloader/gn0$f;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/gn0$f;->a(Ljava/lang/Exception;)V

    return v6

    .line 20
    :cond_8
    throw v2

    .line 21
    :cond_9
    :goto_4
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->n:Lcom/shabakaty/downloader/gn0$f;

    .line 22
    iput-object v8, v5, Lcom/shabakaty/downloader/gn0$f;->a:Ljava/lang/Exception;

    .line 23
    iget-boolean v5, v1, Lcom/shabakaty/downloader/gn0;->F:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b

    .line 24
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/shabakaty/downloader/gn0;->G:J

    .line 25
    iput-boolean v6, v1, Lcom/shabakaty/downloader/gn0;->E:Z

    .line 26
    iput-boolean v6, v1, Lcom/shabakaty/downloader/gn0;->F:Z

    .line 27
    iget-boolean v5, v1, Lcom/shabakaty/downloader/gn0;->k:Z

    if-eqz v5, :cond_a

    sget v5, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_a

    .line 28
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->w:Lcom/shabakaty/downloader/ad3;

    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/gn0;->K(Lcom/shabakaty/downloader/ad3;)V

    .line 29
    :cond_a
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/gn0;->d(J)V

    .line 30
    iget-boolean v5, v1, Lcom/shabakaty/downloader/gn0;->S:Z

    if-eqz v5, :cond_b

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->i()V

    .line 32
    :cond_b
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v11

    .line 33
    iget-object v13, v5, Lcom/shabakaty/downloader/df;->c:Landroid/media/AudioTrack;

    .line 34
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v13}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v13

    .line 36
    iget-boolean v14, v5, Lcom/shabakaty/downloader/df;->h:Z

    const/4 v15, 0x2

    if-eqz v14, :cond_d

    if-ne v13, v15, :cond_c

    .line 37
    iput-boolean v6, v5, Lcom/shabakaty/downloader/df;->p:Z

    goto :goto_5

    :cond_c
    if-ne v13, v7, :cond_d

    .line 38
    invoke-virtual {v5}, Lcom/shabakaty/downloader/df;->b()J

    move-result-wide v16

    cmp-long v14, v16, v9

    if-nez v14, :cond_d

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    .line 39
    :cond_d
    iget-boolean v9, v5, Lcom/shabakaty/downloader/df;->p:Z

    .line 40
    invoke-virtual {v5, v11, v12}, Lcom/shabakaty/downloader/df;->c(J)Z

    move-result v10

    iput-boolean v10, v5, Lcom/shabakaty/downloader/df;->p:Z

    if-eqz v9, :cond_e

    if-nez v10, :cond_e

    if-eq v13, v7, :cond_e

    .line 41
    iget-object v9, v5, Lcom/shabakaty/downloader/df;->a:Lcom/shabakaty/downloader/df$a;

    iget v10, v5, Lcom/shabakaty/downloader/df;->e:I

    iget-wide v11, v5, Lcom/shabakaty/downloader/df;->i:J

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lcom/shabakaty/downloader/df$a;->b(IJ)V

    :cond_e
    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_f

    return v6

    .line 42
    :cond_f
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_28

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v9, :cond_10

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    :goto_7
    invoke-static {v5}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_11

    return v7

    .line 45
    :cond_11
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget v9, v5, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-eqz v9, :cond_20

    iget v9, v1, Lcom/shabakaty/downloader/gn0;->D:I

    if-nez v9, :cond_20

    .line 46
    iget v5, v5, Lcom/shabakaty/downloader/gn0$c;->g:I

    const/16 v9, 0x400

    const/16 v10, 0x10

    const/4 v11, -0x1

    const/4 v12, -0x2

    packed-switch v5, :pswitch_data_0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    const-string v3, "Unexpected audio encoding: "

    invoke-static {v2, v3, v5}, Lcom/shabakaty/downloader/gl3;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-array v5, v10, [B

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 49
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    new-instance v9, Lcom/shabakaty/downloader/a55;

    invoke-direct {v9, v5, v7, v8}, Lcom/shabakaty/downloader/a55;-><init>([BILcom/shabakaty/downloader/io2;)V

    invoke-static {v9}, Lcom/shabakaty/downloader/b2;->b(Lcom/shabakaty/downloader/a55;)Lcom/shabakaty/downloader/b2$b;

    move-result-object v5

    iget v9, v5, Lcom/shabakaty/downloader/b2$b;->c:I

    goto/16 :goto_14

    :pswitch_2
    const/16 v9, 0x200

    goto/16 :goto_14

    .line 52
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    move v9, v5

    :goto_8
    if-gt v9, v8, :cond_14

    add-int/lit8 v10, v9, 0x4

    .line 54
    sget v12, Lcom/shabakaty/downloader/sy4;->a:I

    .line 55
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 56
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v12, v13, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v10}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v10

    :goto_9
    and-int/lit8 v10, v10, -0x2

    const v12, -0x78d9046

    if-ne v10, v12, :cond_13

    sub-int/2addr v9, v5

    goto :goto_a

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_14
    const/4 v9, -0x1

    :goto_a
    if-ne v9, v11, :cond_15

    const/4 v9, 0x0

    goto/16 :goto_14

    .line 57
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_16

    const/4 v5, 0x1

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    :goto_b
    const/16 v8, 0x28

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v9

    if-eqz v5, :cond_17

    const/16 v5, 0x9

    goto :goto_c

    :cond_17
    const/16 v5, 0x8

    :goto_c
    add-int/2addr v10, v5

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v8, v5

    mul-int/lit8 v5, v5, 0x10

    goto/16 :goto_13

    :pswitch_4
    const/16 v9, 0x800

    goto/16 :goto_14

    .line 59
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sget v8, Lcom/shabakaty/downloader/sy4;->a:I

    .line 60
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_18

    goto :goto_d

    :cond_18
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 62
    :goto_d
    invoke-static {v5}, Lcom/shabakaty/downloader/hv2;->d(I)I

    move-result v9

    if-eq v9, v11, :cond_19

    goto/16 :goto_14

    .line 63
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 65
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v12, :cond_1c

    if-eq v8, v11, :cond_1b

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_1a

    add-int/lit8 v8, v5, 0x4

    .line 66
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_f

    :cond_1a
    add-int/lit8 v8, v5, 0x5

    .line 67
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_e

    :cond_1b
    add-int/lit8 v8, v5, 0x4

    .line 68
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_e
    and-int/lit8 v5, v5, 0x3c

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v5, 0x5

    .line 69
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_f
    and-int/lit16 v5, v5, 0xfc

    :goto_10
    shr-int/2addr v5, v15

    or-int/2addr v5, v8

    add-int/2addr v5, v7

    mul-int/lit8 v9, v5, 0x20

    goto :goto_14

    .line 70
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/lit8 v5, v5, 0x3

    const/16 v8, 0xa

    if-le v5, v8, :cond_1d

    const/4 v5, 0x1

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_1f

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1e

    const/4 v5, 0x3

    goto :goto_12

    .line 72
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v5, v5, 0x4

    .line 73
    :goto_12
    sget-object v8, Lcom/shabakaty/downloader/y1;->a:[I

    aget v5, v8, v5

    mul-int/lit16 v5, v5, 0x100

    :goto_13
    move v9, v5

    goto :goto_14

    :cond_1f
    const/16 v9, 0x600

    .line 74
    :goto_14
    :pswitch_8
    iput v9, v1, Lcom/shabakaty/downloader/gn0;->D:I

    if-nez v9, :cond_20

    return v7

    .line 75
    :cond_20
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->u:Lcom/shabakaty/downloader/gn0$e;

    if-eqz v5, :cond_22

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->v()Z

    move-result v5

    if-nez v5, :cond_21

    return v6

    .line 77
    :cond_21
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/gn0;->d(J)V

    const/4 v5, 0x0

    .line 78
    iput-object v5, v1, Lcom/shabakaty/downloader/gn0;->u:Lcom/shabakaty/downloader/gn0$e;

    .line 79
    :cond_22
    iget-wide v8, v1, Lcom/shabakaty/downloader/gn0;->G:J

    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    .line 80
    iget v10, v5, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-nez v10, :cond_23

    .line 81
    iget-wide v10, v1, Lcom/shabakaty/downloader/gn0;->z:J

    iget v12, v5, Lcom/shabakaty/downloader/gn0$c;->b:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    goto :goto_15

    .line 82
    :cond_23
    iget-wide v10, v1, Lcom/shabakaty/downloader/gn0;->A:J

    .line 83
    :goto_15
    iget-object v12, v1, Lcom/shabakaty/downloader/gn0;->e:Lcom/shabakaty/downloader/er4;

    .line 84
    iget-wide v12, v12, Lcom/shabakaty/downloader/er4;->o:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    .line 85
    iget-object v5, v5, Lcom/shabakaty/downloader/gn0$c;->a:Lcom/shabakaty/downloader/wh1;

    iget v5, v5, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v12, v5

    div-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 86
    iget-boolean v5, v1, Lcom/shabakaty/downloader/gn0;->E:Z

    if-nez v5, :cond_24

    sub-long v8, v10, v2

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v12, 0x30d40

    cmp-long v5, v8, v12

    if-lez v5, :cond_24

    .line 88
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    new-instance v8, Lcom/shabakaty/downloader/ze$d;

    invoke-direct {v8, v2, v3, v10, v11}, Lcom/shabakaty/downloader/ze$d;-><init>(JJ)V

    check-cast v5, Lcom/shabakaty/downloader/po2$b;

    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/po2$b;->a(Ljava/lang/Exception;)V

    .line 89
    iput-boolean v7, v1, Lcom/shabakaty/downloader/gn0;->E:Z

    .line 90
    :cond_24
    iget-boolean v5, v1, Lcom/shabakaty/downloader/gn0;->E:Z

    if-eqz v5, :cond_26

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->v()Z

    move-result v5

    if-nez v5, :cond_25

    return v6

    :cond_25
    sub-long v8, v2, v10

    .line 92
    iget-wide v10, v1, Lcom/shabakaty/downloader/gn0;->G:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lcom/shabakaty/downloader/gn0;->G:J

    .line 93
    iput-boolean v6, v1, Lcom/shabakaty/downloader/gn0;->E:Z

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/gn0;->d(J)V

    .line 95
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->p:Lcom/shabakaty/downloader/ze$c;

    if-eqz v5, :cond_26

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_26

    .line 96
    check-cast v5, Lcom/shabakaty/downloader/po2$b;

    .line 97
    iget-object v5, v5, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 98
    iput-boolean v7, v5, Lcom/shabakaty/downloader/po2;->g1:Z

    .line 99
    :cond_26
    iget-object v5, v1, Lcom/shabakaty/downloader/gn0;->r:Lcom/shabakaty/downloader/gn0$c;

    iget v5, v5, Lcom/shabakaty/downloader/gn0$c;->c:I

    if-nez v5, :cond_27

    .line 100
    iget-wide v8, v1, Lcom/shabakaty/downloader/gn0;->z:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/shabakaty/downloader/gn0;->z:J

    goto :goto_16

    .line 101
    :cond_27
    iget-wide v8, v1, Lcom/shabakaty/downloader/gn0;->A:J

    iget v5, v1, Lcom/shabakaty/downloader/gn0;->D:I

    mul-int v5, v5, v4

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/shabakaty/downloader/gn0;->A:J

    .line 102
    :goto_16
    iput-object v0, v1, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    .line 103
    iput v4, v1, Lcom/shabakaty/downloader/gn0;->L:I

    .line 104
    :cond_28
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/gn0;->H(J)V

    .line 105
    iget-object v0, v1, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 106
    iput-object v0, v1, Lcom/shabakaty/downloader/gn0;->K:Ljava/nio/ByteBuffer;

    .line 107
    iput v6, v1, Lcom/shabakaty/downloader/gn0;->L:I

    return v7

    .line 108
    :cond_29
    iget-object v0, v1, Lcom/shabakaty/downloader/gn0;->i:Lcom/shabakaty/downloader/df;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->C()J

    move-result-wide v2

    .line 109
    iget-wide v4, v0, Lcom/shabakaty/downloader/df;->y:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v4, v8

    if-eqz v10, :cond_2a

    const-wide/16 v4, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_2a

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/shabakaty/downloader/df;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_17

    :cond_2a
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_2b

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    return v7

    :cond_2b
    return v6

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public t(Lcom/shabakaty/downloader/ie;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ie;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/gn0;->t:Lcom/shabakaty/downloader/ie;

    .line 3
    iget-boolean p1, p0, Lcom/shabakaty/downloader/gn0;->W:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->flush()V

    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->y()Lcom/shabakaty/downloader/ad3;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/gn0;->J(Lcom/shabakaty/downloader/ad3;Z)V

    return-void
.end method

.method public final v()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gn0;->P:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iput v3, p0, Lcom/shabakaty/downloader/gn0;->P:I

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_1
    iget v4, p0, Lcom/shabakaty/downloader/gn0;->P:I

    iget-object v5, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v4}, Lcom/shabakaty/downloader/qe;->g()V

    .line 6
    :cond_1
    invoke-virtual {p0, v7, v8}, Lcom/shabakaty/downloader/gn0;->H(J)V

    .line 7
    invoke-interface {v4}, Lcom/shabakaty/downloader/qe;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 8
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/gn0;->P:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/shabakaty/downloader/gn0;->P:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lcom/shabakaty/downloader/gn0;->O(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/gn0;->M:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    .line 12
    :cond_4
    iput v1, p0, Lcom/shabakaty/downloader/gn0;->P:I

    return v2
.end method

.method public final w()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/gn0;->I:[Lcom/shabakaty/downloader/qe;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/qe;->flush()V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/gn0;->J:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/shabakaty/downloader/qe;->d()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()Lcom/shabakaty/downloader/ad3;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gn0;->A()Lcom/shabakaty/downloader/gn0$e;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/gn0$e;->a:Lcom/shabakaty/downloader/ad3;

    return-object v0
.end method
