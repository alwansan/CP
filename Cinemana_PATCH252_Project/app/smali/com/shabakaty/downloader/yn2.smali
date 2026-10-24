.class public Lcom/shabakaty/downloader/yn2;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yn2$c;,
        Lcom/shabakaty/downloader/yn2$d;,
        Lcom/shabakaty/downloader/yn2$b;
    }
.end annotation


# static fields
.field public static final b0:[B

.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:Ljava/util/UUID;

.field public static final f0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:J

.field public C:Lcom/shabakaty/downloader/u74;

.field public D:Lcom/shabakaty/downloader/u74;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:J

.field public I:J

.field public J:I

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:I

.field public S:I

.field public T:I

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:B

.field public Z:Z

.field public final a:Lcom/shabakaty/downloader/b21;

.field public a0:Lcom/shabakaty/downloader/p91;

.field public final b:Lcom/shabakaty/downloader/yz4;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/yn2$c;",
            ">;"
        }
    .end annotation
.end field

.field public ca1Cues102:Lcom/shabakaty/cinemana/ca1/CueIndex102;

.field public final d:Z

.field public final e:Lcom/shabakaty/downloader/ka3;

.field public final f:Lcom/shabakaty/downloader/ka3;

.field public final g:Lcom/shabakaty/downloader/ka3;

.field public final h:Lcom/shabakaty/downloader/ka3;

.field public final i:Lcom/shabakaty/downloader/ka3;

.field public final j:Lcom/shabakaty/downloader/ka3;

.field public final k:Lcom/shabakaty/downloader/ka3;

.field public final l:Lcom/shabakaty/downloader/ka3;

.field public final m:Lcom/shabakaty/downloader/ka3;

.field public final n:Lcom/shabakaty/downloader/ka3;

.field public o:Ljava/nio/ByteBuffer;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Lcom/shabakaty/downloader/yn2$c;

.field public v:Z

.field public w:I

.field public x:J

.field public y:Z

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/shabakaty/downloader/yn2;->b0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/yn2;->c0:[B

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/shabakaty/downloader/yn2;->d0:[B

    .line 4
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/shabakaty/downloader/yn2;->e0:Ljava/util/UUID;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/yn2;->f0:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xn0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xn0;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/shabakaty/downloader/yn2;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Lcom/shabakaty/downloader/yn2;->r:J

    .line 5
    iput-wide v3, p0, Lcom/shabakaty/downloader/yn2;->s:J

    .line 6
    iput-wide v3, p0, Lcom/shabakaty/downloader/yn2;->t:J

    .line 7
    iput-wide v1, p0, Lcom/shabakaty/downloader/yn2;->z:J

    .line 8
    iput-wide v1, p0, Lcom/shabakaty/downloader/yn2;->A:J

    .line 9
    iput-wide v3, p0, Lcom/shabakaty/downloader/yn2;->B:J

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/yn2;->a:Lcom/shabakaty/downloader/b21;

    .line 11
    new-instance v1, Lcom/shabakaty/downloader/yn2$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/yn2$b;-><init>(Lcom/shabakaty/downloader/yn2;Lcom/shabakaty/downloader/yn2$a;)V

    .line 12
    iput-object v1, v0, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn2;->d:Z

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/yz4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/yz4;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->b:Lcom/shabakaty/downloader/yz4;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->h:Lcom/shabakaty/downloader/ka3;

    .line 18
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->i:Lcom/shabakaty/downloader/ka3;

    .line 19
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    sget-object v2, Lcom/shabakaty/downloader/gw2;->a:[B

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->e:Lcom/shabakaty/downloader/ka3;

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->f:Lcom/shabakaty/downloader/ka3;

    .line 21
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    .line 22
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 23
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->l:Lcom/shabakaty/downloader/ka3;

    .line 24
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->m:Lcom/shabakaty/downloader/ka3;

    .line 25
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->n:Lcom/shabakaty/downloader/ka3;

    new-array p1, v0, [I

    .line 26
    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->L:[I

    return-void
.end method

.method public static j([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 3
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static k(JLjava/lang/String;J)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    const-wide v2, 0xd693a400L

    .line 2
    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    .line 3
    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    .line 4
    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    .line 5
    div-long/2addr p0, p3

    long-to-int p1, p0

    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/yn2;->B:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/yn2;->G:I

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/yn2;->a:Lcom/shabakaty/downloader/b21;

    check-cast p2, Lcom/shabakaty/downloader/xn0;

    .line 4
    iput p1, p2, Lcom/shabakaty/downloader/xn0;->e:I

    .line 5
    iget-object p3, p2, Lcom/shabakaty/downloader/xn0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/xn0;->c:Lcom/shabakaty/downloader/yz4;

    .line 7
    iput p1, p2, Lcom/shabakaty/downloader/yz4;->b:I

    .line 8
    iput p1, p2, Lcom/shabakaty/downloader/yz4;->c:I

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/yn2;->b:Lcom/shabakaty/downloader/yz4;

    .line 10
    iput p1, p2, Lcom/shabakaty/downloader/yz4;->b:I

    .line 11
    iput p1, p2, Lcom/shabakaty/downloader/yz4;->c:I

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn2;->m()V

    const/4 p2, 0x0

    .line 13
    :goto_0
    iget-object p3, p0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/yn2$c;

    .line 15
    iget-object p3, p3, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Lcom/shabakaty/downloader/yn2$d;->b:Z

    .line 17
    iput p1, p3, Lcom/shabakaty/downloader/yn2$d;->c:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x25

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
.end method

.method public ca1CueEnd102(I)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->ca1Cues102:Lcom/shabakaty/cinemana/ca1/CueIndex102;

    if-eqz v0, :cond_1

    const v1, 0x1c53bb6b

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CueTrace102;->log(Lcom/shabakaty/cinemana/ca1/CueIndex102;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->videoTrack:I

    if-lez v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/ca1/CueIndex102;->end(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->timeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/u74;->a(J)V

    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    iget-wide v2, v0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->position:J

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/u74;->a(J)V

    :cond_1
    return-void
.end method

.method public ca1CueInteger102(IJ)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->ca1Cues102:Lcom/shabakaty/cinemana/ca1/CueIndex102;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/shabakaty/cinemana/ca1/CueIndex102;->videoTrack:I

    if-lez v1, :cond_1

    const/16 v1, 0xb3

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide p2

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/CueIndex102;->integer(IJ)V

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public ca1CueStart102(I)V
    .locals 5

    const v0, 0x1c53bb6b

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/yn2$c;

    iget v3, v3, Lcom/shabakaty/downloader/yn2$c;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/shabakaty/cinemana/ca1/CueIndex102;

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/ca1/CueIndex102;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/yn2;->ca1Cues102:Lcom/shabakaty/cinemana/ca1/CueIndex102;

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->ca1Cues102:Lcom/shabakaty/cinemana/ca1/CueIndex102;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/ca1/CueIndex102;->start(I)V

    :cond_3
    return-void
.end method

.method public final d(I)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2b

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
.end method

.method public final e(Lcom/shabakaty/downloader/yn2$c;JIII)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v1, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2
    iget-boolean v6, v3, Lcom/shabakaty/downloader/yn2$d;->b:Z

    if-nez v6, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget v6, v3, Lcom/shabakaty/downloader/yn2$d;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/shabakaty/downloader/yn2$d;->c:I

    if-nez v6, :cond_1

    move-wide/from16 v9, p2

    .line 4
    iput-wide v9, v3, Lcom/shabakaty/downloader/yn2$d;->d:J

    .line 5
    iput v2, v3, Lcom/shabakaty/downloader/yn2$d;->e:I

    .line 6
    iput v5, v3, Lcom/shabakaty/downloader/yn2$d;->f:I

    .line 7
    :cond_1
    iget v2, v3, Lcom/shabakaty/downloader/yn2$d;->f:I

    add-int v2, v2, p5

    iput v2, v3, Lcom/shabakaty/downloader/yn2$d;->f:I

    move/from16 v6, p6

    .line 8
    iput v6, v3, Lcom/shabakaty/downloader/yn2$d;->g:I

    const/16 v2, 0x10

    if-lt v7, v2, :cond_d

    .line 9
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/yn2$d;->a(Lcom/shabakaty/downloader/yn2$c;)V

    goto/16 :goto_6

    :cond_2
    move-wide/from16 v9, p2

    move/from16 v6, p6

    .line 10
    iget-object v3, v1, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v7, "S_TEXT/UTF8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "S_TEXT/ASS"

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    :cond_3
    iget v3, v0, Lcom/shabakaty/downloader/yn2;->K:I

    const-string v11, "MatroskaExtractor"

    if-le v3, v4, :cond_4

    const-string v3, "Skipping subtitle sample in laced block."

    .line 12
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 13
    :cond_4
    iget-wide v12, v0, Lcom/shabakaty/downloader/yn2;->I:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v12, v14

    if-nez v3, :cond_6

    const-string v3, "Skipping subtitle sample with no duration."

    .line 14
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    move/from16 v3, p5

    goto :goto_4

    .line 15
    :cond_6
    iget-object v3, v1, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    iget-object v11, v0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 16
    iget-object v11, v11, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 17
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v7, 0x3e8

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 18
    invoke-static {v12, v13, v3, v7, v8}, Lcom/shabakaty/downloader/yn2;->k(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v7, 0x13

    goto :goto_1

    .line 19
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_8
    const-wide/16 v7, 0x2710

    const-string v3, "%01d:%02d:%02d:%02d"

    .line 20
    invoke-static {v12, v13, v3, v7, v8}, Lcom/shabakaty/downloader/yn2;->k(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v7, 0x15

    .line 21
    :goto_1
    array-length v8, v3

    invoke-static {v3, v5, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 23
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 24
    :goto_2
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 25
    iget v7, v5, Lcom/shabakaty/downloader/ka3;->c:I

    if-ge v3, v7, :cond_a

    .line 26
    iget-object v7, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 27
    aget-byte v7, v7, v3

    if-nez v7, :cond_9

    .line 28
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ka3;->D(I)V

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_a
    :goto_3
    iget-object v3, v1, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    iget-object v5, v0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 30
    iget v7, v5, Lcom/shabakaty/downloader/ka3;->c:I

    .line 31
    invoke-interface {v3, v5, v7}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 32
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 33
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->c:I

    add-int v3, p5, v3

    :goto_4
    const/high16 v5, 0x10000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_c

    .line 34
    iget v5, v0, Lcom/shabakaty/downloader/yn2;->K:I

    if-le v5, v4, :cond_b

    const v5, -0x10000001

    and-int/2addr v2, v5

    goto :goto_5

    .line 35
    :cond_b
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2;->n:Lcom/shabakaty/downloader/ka3;

    .line 36
    iget v7, v5, Lcom/shabakaty/downloader/ka3;->c:I

    .line 37
    iget-object v8, v1, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    const/4 v11, 0x2

    invoke-interface {v8, v5, v7, v11}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    add-int/2addr v3, v7

    :cond_c
    :goto_5
    move v11, v2

    move v12, v3

    .line 38
    iget-object v8, v1, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    iget-object v14, v1, Lcom/shabakaty/downloader/yn2$c;->j:Lcom/shabakaty/downloader/fp4$a;

    move-wide/from16 v9, p2

    move/from16 v13, p6

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 39
    :cond_d
    :goto_6
    iput-boolean v4, v0, Lcom/shabakaty/downloader/yn2;->F:Z

    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    iput-boolean v3, v0, Lcom/shabakaty/downloader/yn2;->F:Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_66

    .line 2
    iget-boolean v7, v0, Lcom/shabakaty/downloader/yn2;->F:Z

    if-nez v7, :cond_66

    .line 3
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2;->a:Lcom/shabakaty/downloader/b21;

    move-object v7, v5

    check-cast v7, Lcom/shabakaty/downloader/xn0;

    .line 4
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    invoke-static {v5}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/xn0$b;

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_0

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v10

    .line 7
    iget-wide v12, v5, Lcom/shabakaty/downloader/xn0$b;->b:J

    cmp-long v5, v10, v12

    if-ltz v5, :cond_0

    .line 8
    iget-object v3, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget-object v4, v7, Lcom/shabakaty/downloader/xn0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/xn0$b;

    .line 9
    iget v4, v4, Lcom/shabakaty/downloader/xn0$b;->a:I

    .line 10
    check-cast v3, Lcom/shabakaty/downloader/yn2$b;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/yn2;->i(I)V

    goto/16 :goto_21

    .line 12
    :cond_0
    iget v5, v7, Lcom/shabakaty/downloader/xn0;->e:I

    const v10, 0x1c53bb6b

    const v11, 0x1f43b675

    const/4 v12, 0x4

    if-nez v5, :cond_6

    .line 13
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->c:Lcom/shabakaty/downloader/yz4;

    invoke-virtual {v5, v1, v4, v3, v12}, Lcom/shabakaty/downloader/yz4;->c(Lcom/shabakaty/downloader/o91;ZZI)J

    move-result-wide v13

    const-wide/16 v15, -0x2

    cmp-long v5, v13, v15

    if-nez v5, :cond_4

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 15
    :goto_2
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->a:[B

    invoke-interface {v1, v5, v3, v12}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 16
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->a:[B

    aget-byte v5, v5, v3

    invoke-static {v5}, Lcom/shabakaty/downloader/yz4;->b(I)I

    move-result v5

    if-eq v5, v6, :cond_3

    if-gt v5, v12, :cond_3

    .line 17
    iget-object v13, v7, Lcom/shabakaty/downloader/xn0;->a:[B

    invoke-static {v13, v5, v3}, Lcom/shabakaty/downloader/yz4;->a([BIZ)J

    move-result-wide v13

    long-to-int v14, v13

    .line 18
    iget-object v13, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    check-cast v13, Lcom/shabakaty/downloader/yn2$b;

    .line 19
    iget-object v13, v13, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v13, 0x1549a966

    if-eq v14, v13, :cond_2

    if-eq v14, v11, :cond_2

    if-eq v14, v10, :cond_2

    const v13, 0x1654ae6b

    if-ne v14, v13, :cond_1

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-eqz v13, :cond_3

    .line 20
    invoke-interface {v1, v5}, Lcom/shabakaty/downloader/o91;->q(I)V

    int-to-long v13, v14

    goto :goto_5

    .line 21
    :cond_3
    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/o91;->q(I)V

    goto :goto_2

    :cond_4
    :goto_5
    cmp-long v5, v13, v8

    if-nez v5, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_22

    :cond_5
    long-to-int v5, v13

    .line 22
    iput v5, v7, Lcom/shabakaty/downloader/xn0;->f:I

    .line 23
    iput v4, v7, Lcom/shabakaty/downloader/xn0;->e:I

    .line 24
    :cond_6
    iget v5, v7, Lcom/shabakaty/downloader/xn0;->e:I

    const/16 v8, 0x8

    const/4 v9, 0x2

    if-ne v5, v4, :cond_7

    .line 25
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->c:Lcom/shabakaty/downloader/yz4;

    invoke-virtual {v5, v1, v3, v4, v8}, Lcom/shabakaty/downloader/yz4;->c(Lcom/shabakaty/downloader/o91;ZZI)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/shabakaty/downloader/xn0;->g:J

    .line 26
    iput v9, v7, Lcom/shabakaty/downloader/xn0;->e:I

    .line 27
    :cond_7
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v10, v7, Lcom/shabakaty/downloader/xn0;->f:I

    check-cast v5, Lcom/shabakaty/downloader/yn2$b;

    .line 28
    iget-object v5, v5, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    const/4 v11, 0x5

    sparse-switch v10, :sswitch_data_0

    const/4 v10, 0x0

    goto :goto_6

    :sswitch_0
    const/4 v10, 0x5

    goto :goto_6

    :sswitch_1
    const/4 v10, 0x4

    goto :goto_6

    :sswitch_2
    const/4 v10, 0x1

    goto :goto_6

    :sswitch_3
    const/4 v10, 0x3

    goto :goto_6

    :sswitch_4
    const/4 v10, 0x2

    :goto_6
    if-eqz v10, :cond_65

    const/4 v13, 0x0

    if-eq v10, v4, :cond_54

    const-string v14, " not supported"

    const-wide/16 v17, 0x8

    if-eq v10, v9, :cond_3c

    const-wide/32 v19, 0x7fffffff

    if-eq v10, v5, :cond_32

    if-eq v10, v12, :cond_e

    if-ne v10, v11, :cond_d

    .line 29
    iget-wide v4, v7, Lcom/shabakaty/downloader/xn0;->g:J

    const-wide/16 v8, 0x4

    cmp-long v6, v4, v8

    if-eqz v6, :cond_9

    cmp-long v6, v4, v17

    if-nez v6, :cond_8

    goto :goto_7

    :cond_8
    const/16 v1, 0x28

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid float size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 31
    :cond_9
    :goto_7
    iget-object v6, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v8, v7, Lcom/shabakaty/downloader/xn0;->f:I

    long-to-int v5, v4

    .line 32
    invoke-virtual {v7, v1, v5}, Lcom/shabakaty/downloader/xn0;->a(Lcom/shabakaty/downloader/o91;I)J

    move-result-wide v9

    if-ne v5, v12, :cond_a

    long-to-int v4, v9

    .line 33
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v4, v4

    goto :goto_8

    .line 34
    :cond_a
    invoke-static {v9, v10}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 35
    :goto_8
    check-cast v6, Lcom/shabakaty/downloader/yn2$b;

    .line 36
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0xb5

    if-eq v8, v9, :cond_c

    const/16 v9, 0x4489

    if-eq v8, v9, :cond_b

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_9

    .line 37
    :pswitch_0
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 38
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 39
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->M:F

    goto/16 :goto_9

    .line 40
    :pswitch_1
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 41
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 42
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->L:F

    goto/16 :goto_9

    .line 43
    :pswitch_2
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 44
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 45
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->K:F

    goto :goto_9

    .line 46
    :pswitch_3
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 47
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 48
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->J:F

    goto :goto_9

    .line 49
    :pswitch_4
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 50
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 51
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->I:F

    goto :goto_9

    .line 52
    :pswitch_5
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 53
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 54
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->H:F

    goto :goto_9

    .line 55
    :pswitch_6
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 56
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 57
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->G:F

    goto :goto_9

    .line 58
    :pswitch_7
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 59
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 60
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->F:F

    goto :goto_9

    .line 61
    :pswitch_8
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 62
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 63
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->E:F

    goto :goto_9

    .line 64
    :pswitch_9
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 65
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 66
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->D:F

    goto :goto_9

    .line 67
    :pswitch_a
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 68
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 69
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->u:F

    goto :goto_9

    .line 70
    :pswitch_b
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 71
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 72
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->t:F

    goto :goto_9

    .line 73
    :pswitch_c
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 74
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-float v4, v4

    .line 75
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->s:F

    goto :goto_9

    :cond_b
    double-to-long v4, v4

    .line 76
    iput-wide v4, v6, Lcom/shabakaty/downloader/yn2;->s:J

    goto :goto_9

    .line 77
    :cond_c
    invoke-virtual {v6, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 78
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    double-to-int v4, v4

    .line 79
    iput v4, v6, Lcom/shabakaty/downloader/yn2$c;->Q:I

    .line 80
    :goto_9
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    goto/16 :goto_21

    :cond_d
    const/16 v1, 0x20

    const-string v2, "Invalid element type "

    .line 81
    invoke-static {v1, v2, v10, v13}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 82
    :cond_e
    iget-object v6, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v10, v7, Lcom/shabakaty/downloader/xn0;->f:I

    iget-wide v8, v7, Lcom/shabakaty/downloader/xn0;->g:J

    long-to-int v9, v8

    check-cast v6, Lcom/shabakaty/downloader/yn2$b;

    .line 83
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xa1

    const/16 v14, 0xa3

    if-eq v10, v8, :cond_1b

    if-eq v10, v14, :cond_1b

    const/16 v5, 0xa5

    if-eq v10, v5, :cond_17

    const/16 v5, 0x41ed

    if-eq v10, v5, :cond_14

    const/16 v5, 0x4255

    if-eq v10, v5, :cond_13

    const/16 v5, 0x47e2

    if-eq v10, v5, :cond_12

    const/16 v4, 0x53ab

    if-eq v10, v4, :cond_11

    const/16 v4, 0x63a2

    if-eq v10, v4, :cond_10

    const/16 v4, 0x7672

    if-ne v10, v4, :cond_f

    .line 84
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 85
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    new-array v5, v9, [B

    iput-object v5, v4, Lcom/shabakaty/downloader/yn2$c;->v:[B

    .line 86
    invoke-interface {v1, v5, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    goto/16 :goto_17

    :cond_f
    const/16 v1, 0x1a

    const-string v2, "Unexpected id: "

    .line 87
    invoke-static {v1, v2, v10, v13}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 88
    :cond_10
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 89
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    new-array v5, v9, [B

    iput-object v5, v4, Lcom/shabakaty/downloader/yn2$c;->k:[B

    .line 90
    invoke-interface {v1, v5, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    goto/16 :goto_17

    .line 91
    :cond_11
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->i:Lcom/shabakaty/downloader/ka3;

    .line 92
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 93
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 94
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->i:Lcom/shabakaty/downloader/ka3;

    .line 95
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    rsub-int/lit8 v5, v9, 0x4

    .line 96
    invoke-interface {v1, v4, v5, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 97
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->i:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 98
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->i:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v6, Lcom/shabakaty/downloader/yn2;->w:I

    goto/16 :goto_17

    .line 99
    :cond_12
    new-array v5, v9, [B

    .line 100
    invoke-interface {v1, v5, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 101
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 102
    iget-object v6, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 103
    new-instance v8, Lcom/shabakaty/downloader/fp4$a;

    invoke-direct {v8, v4, v5, v3, v3}, Lcom/shabakaty/downloader/fp4$a;-><init>(I[BII)V

    iput-object v8, v6, Lcom/shabakaty/downloader/yn2$c;->j:Lcom/shabakaty/downloader/fp4$a;

    goto/16 :goto_17

    .line 104
    :cond_13
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 105
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    new-array v5, v9, [B

    iput-object v5, v4, Lcom/shabakaty/downloader/yn2$c;->i:[B

    .line 106
    invoke-interface {v1, v5, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    goto/16 :goto_17

    .line 107
    :cond_14
    invoke-virtual {v6, v10}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 108
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 109
    iget v5, v4, Lcom/shabakaty/downloader/yn2$c;->g:I

    const v6, 0x64767643

    if-eq v5, v6, :cond_16

    const v6, 0x64766343

    if-ne v5, v6, :cond_15

    goto :goto_a

    .line 110
    :cond_15
    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/o91;->q(I)V

    goto/16 :goto_17

    .line 111
    :cond_16
    :goto_a
    new-array v5, v9, [B

    iput-object v5, v4, Lcom/shabakaty/downloader/yn2$c;->N:[B

    .line 112
    invoke-interface {v1, v5, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    goto/16 :goto_17

    .line 113
    :cond_17
    iget v4, v6, Lcom/shabakaty/downloader/yn2;->G:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    goto/16 :goto_17

    .line 114
    :cond_18
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    iget v5, v6, Lcom/shabakaty/downloader/yn2;->M:I

    .line 115
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yn2$c;

    iget v5, v6, Lcom/shabakaty/downloader/yn2;->P:I

    if-ne v5, v12, :cond_1a

    .line 116
    iget-object v4, v4, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v5, "V_VP9"

    .line 117
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 118
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->n:Lcom/shabakaty/downloader/ka3;

    .line 119
    iget-object v5, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v8, v5

    if-ge v8, v9, :cond_19

    .line 120
    new-array v5, v9, [B

    :cond_19
    invoke-virtual {v4, v5, v9}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 121
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->n:Lcom/shabakaty/downloader/ka3;

    .line 122
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 123
    invoke-interface {v1, v4, v3, v9}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    goto/16 :goto_17

    .line 124
    :cond_1a
    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/o91;->q(I)V

    goto/16 :goto_17

    .line 125
    :cond_1b
    iget v8, v6, Lcom/shabakaty/downloader/yn2;->G:I

    if-nez v8, :cond_1c

    .line 126
    iget-object v8, v6, Lcom/shabakaty/downloader/yn2;->b:Lcom/shabakaty/downloader/yz4;

    const/16 v11, 0x8

    invoke-virtual {v8, v1, v3, v4, v11}, Lcom/shabakaty/downloader/yz4;->c(Lcom/shabakaty/downloader/o91;ZZI)J

    move-result-wide v11

    long-to-int v8, v11

    iput v8, v6, Lcom/shabakaty/downloader/yn2;->M:I

    .line 127
    iget-object v8, v6, Lcom/shabakaty/downloader/yn2;->b:Lcom/shabakaty/downloader/yz4;

    .line 128
    iget v8, v8, Lcom/shabakaty/downloader/yz4;->c:I

    .line 129
    iput v8, v6, Lcom/shabakaty/downloader/yn2;->N:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 130
    iput-wide v11, v6, Lcom/shabakaty/downloader/yn2;->I:J

    .line 131
    iput v4, v6, Lcom/shabakaty/downloader/yn2;->G:I

    .line 132
    iget-object v8, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v8, v3}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 133
    :cond_1c
    iget-object v8, v6, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    iget v11, v6, Lcom/shabakaty/downloader/yn2;->M:I

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/yn2$c;

    if-nez v8, :cond_1d

    .line 134
    iget v4, v6, Lcom/shabakaty/downloader/yn2;->N:I

    sub-int/2addr v9, v4

    invoke-interface {v1, v9}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 135
    iput v3, v6, Lcom/shabakaty/downloader/yn2;->G:I

    goto/16 :goto_17

    .line 136
    :cond_1d
    iget-object v11, v8, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    .line 137
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget v11, v6, Lcom/shabakaty/downloader/yn2;->G:I

    if-ne v11, v4, :cond_2e

    .line 139
    invoke-virtual {v6, v1, v5}, Lcom/shabakaty/downloader/yn2;->l(Lcom/shabakaty/downloader/o91;I)V

    .line 140
    iget-object v11, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 141
    iget-object v11, v11, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v12, 0x2

    .line 142
    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v4

    const/16 v12, 0xff

    if-nez v11, :cond_1e

    .line 143
    iput v4, v6, Lcom/shabakaty/downloader/yn2;->K:I

    .line 144
    iget-object v11, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    invoke-static {v11, v4}, Lcom/shabakaty/downloader/yn2;->j([II)[I

    move-result-object v4

    iput-object v4, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    .line 145
    iget v11, v6, Lcom/shabakaty/downloader/yn2;->N:I

    sub-int/2addr v9, v11

    sub-int/2addr v9, v5

    aput v9, v4, v3

    goto/16 :goto_11

    :cond_1e
    const/4 v13, 0x4

    .line 146
    invoke-virtual {v6, v1, v13}, Lcom/shabakaty/downloader/yn2;->l(Lcom/shabakaty/downloader/o91;I)V

    .line 147
    iget-object v13, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 148
    iget-object v13, v13, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 149
    aget-byte v13, v13, v5

    and-int/2addr v13, v12

    add-int/2addr v13, v4

    iput v13, v6, Lcom/shabakaty/downloader/yn2;->K:I

    .line 150
    iget-object v14, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    invoke-static {v14, v13}, Lcom/shabakaty/downloader/yn2;->j([II)[I

    move-result-object v13

    iput-object v13, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_1f

    .line 151
    iget v4, v6, Lcom/shabakaty/downloader/yn2;->N:I

    sub-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x4

    iget v4, v6, Lcom/shabakaty/downloader/yn2;->K:I

    div-int/2addr v9, v4

    .line 152
    invoke-static {v13, v3, v4, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_11

    :cond_1f
    if-ne v11, v4, :cond_22

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x4

    .line 153
    :goto_b
    iget v13, v6, Lcom/shabakaty/downloader/yn2;->K:I

    add-int/lit8 v14, v13, -0x1

    if-ge v4, v14, :cond_21

    .line 154
    iget-object v13, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    aput v3, v13, v4

    :cond_20
    add-int/lit8 v11, v11, 0x1

    .line 155
    invoke-virtual {v6, v1, v11}, Lcom/shabakaty/downloader/yn2;->l(Lcom/shabakaty/downloader/o91;I)V

    .line 156
    iget-object v13, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 157
    iget-object v13, v13, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v14, v11, -0x1

    .line 158
    aget-byte v13, v13, v14

    and-int/2addr v13, v12

    .line 159
    iget-object v14, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    aget v15, v14, v4

    add-int/2addr v15, v13

    aput v15, v14, v4

    if-eq v13, v12, :cond_20

    .line 160
    aget v13, v14, v4

    add-int/2addr v5, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 161
    :cond_21
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    add-int/lit8 v13, v13, -0x1

    iget v4, v6, Lcom/shabakaty/downloader/yn2;->N:I

    sub-int/2addr v9, v4

    sub-int/2addr v9, v11

    sub-int/2addr v9, v5

    aput v9, v3, v13

    goto/16 :goto_11

    :cond_22
    if-ne v11, v5, :cond_2d

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x4

    .line 162
    :goto_c
    iget v14, v6, Lcom/shabakaty/downloader/yn2;->K:I

    add-int/lit8 v15, v14, -0x1

    if-ge v5, v15, :cond_2a

    .line 163
    iget-object v14, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    aput v3, v14, v5

    add-int/lit8 v13, v13, 0x1

    .line 164
    invoke-virtual {v6, v1, v13}, Lcom/shabakaty/downloader/yn2;->l(Lcom/shabakaty/downloader/o91;I)V

    .line 165
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 166
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v14, v13, -0x1

    .line 167
    aget-byte v3, v3, v14

    if-eqz v3, :cond_29

    const/16 v3, 0x8

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v3, :cond_26

    rsub-int/lit8 v3, v15, 0x7

    shl-int v3, v4, v3

    .line 168
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 169
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 170
    aget-byte v4, v4, v14

    and-int/2addr v4, v3

    if-eqz v4, :cond_25

    add-int/2addr v13, v15

    .line 171
    invoke-virtual {v6, v1, v13}, Lcom/shabakaty/downloader/yn2;->l(Lcom/shabakaty/downloader/o91;I)V

    .line 172
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 173
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v16, v14, 0x1

    .line 174
    aget-byte v4, v4, v14

    and-int/2addr v4, v12

    not-int v3, v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    move/from16 v14, v16

    :goto_e
    if-ge v14, v13, :cond_23

    const/16 v16, 0x8

    shl-long v3, v3, v16

    .line 175
    iget-object v12, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 176
    iget-object v12, v12, Lcom/shabakaty/downloader/ka3;->a:[B

    add-int/lit8 v17, v14, 0x1

    .line 177
    aget-byte v12, v12, v14

    const/16 v14, 0xff

    and-int/2addr v12, v14

    move/from16 v18, v13

    int-to-long v12, v12

    or-long/2addr v3, v12

    move/from16 v14, v17

    move/from16 v13, v18

    const/16 v12, 0xff

    goto :goto_e

    :cond_23
    move/from16 v18, v13

    if-lez v5, :cond_24

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v12, 0x1

    shl-long v14, v12, v15

    sub-long/2addr v14, v12

    sub-long/2addr v3, v14

    :cond_24
    move/from16 v13, v18

    goto :goto_f

    :cond_25
    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/16 v12, 0xff

    goto :goto_d

    :cond_26
    const-wide/16 v3, 0x0

    :goto_f
    const-wide/32 v14, -0x80000000

    cmp-long v12, v3, v14

    if-ltz v12, :cond_28

    cmp-long v12, v3, v19

    if-gtz v12, :cond_28

    long-to-int v4, v3

    .line 178
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    if-nez v5, :cond_27

    goto :goto_10

    :cond_27
    add-int/lit8 v12, v5, -0x1

    .line 179
    aget v12, v3, v12

    add-int/2addr v4, v12

    :goto_10
    aput v4, v3, v5

    .line 180
    aget v3, v3, v5

    add-int/2addr v11, v3

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v12, 0xff

    goto/16 :goto_c

    :cond_28
    const-string v1, "EBML lacing sample size out of range."

    const/4 v2, 0x0

    .line 181
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_29
    const/4 v1, 0x0

    const-string v2, "No valid varint length mask found"

    .line 182
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 183
    :cond_2a
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    add-int/lit8 v14, v14, -0x1

    iget v4, v6, Lcom/shabakaty/downloader/yn2;->N:I

    sub-int/2addr v9, v4

    sub-int/2addr v9, v13

    sub-int/2addr v9, v11

    aput v9, v3, v14

    .line 184
    :goto_11
    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 185
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v4, 0x0

    .line 186
    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v3, v3, v5

    const/16 v5, 0xff

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    .line 187
    iget-wide v4, v6, Lcom/shabakaty/downloader/yn2;->B:J

    int-to-long v11, v3

    invoke-virtual {v6, v11, v12}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide v11

    add-long/2addr v11, v4

    iput-wide v11, v6, Lcom/shabakaty/downloader/yn2;->H:J

    .line 188
    iget v3, v8, Lcom/shabakaty/downloader/yn2$c;->d:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/16 v3, 0xa3

    if-ne v10, v3, :cond_2b

    iget-object v3, v6, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 189
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 190
    aget-byte v3, v3, v4

    const/16 v5, 0x80

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_2b

    goto :goto_12

    :cond_2b
    const/4 v3, 0x0

    goto :goto_13

    :cond_2c
    :goto_12
    const/4 v3, 0x1

    .line 191
    :goto_13
    iput v3, v6, Lcom/shabakaty/downloader/yn2;->O:I

    .line 192
    iput v4, v6, Lcom/shabakaty/downloader/yn2;->G:I

    const/4 v3, 0x0

    .line 193
    iput v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    goto :goto_14

    :cond_2d
    const/16 v1, 0x24

    const-string v2, "Unexpected lacing value: "

    const/4 v3, 0x0

    .line 194
    invoke-static {v1, v2, v11, v3}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_2e
    :goto_14
    const/16 v3, 0xa3

    if-ne v10, v3, :cond_30

    .line 195
    :goto_15
    iget v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    iget v4, v6, Lcom/shabakaty/downloader/yn2;->K:I

    if-ge v3, v4, :cond_2f

    .line 196
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    aget v3, v4, v3

    invoke-virtual {v6, v1, v8, v3}, Lcom/shabakaty/downloader/yn2;->o(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/yn2$c;I)I

    move-result v26

    .line 197
    iget-wide v3, v6, Lcom/shabakaty/downloader/yn2;->H:J

    iget v5, v6, Lcom/shabakaty/downloader/yn2;->J:I

    iget v9, v8, Lcom/shabakaty/downloader/yn2$c;->e:I

    mul-int v5, v5, v9

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v9, v5

    add-long v23, v9, v3

    .line 198
    iget v3, v6, Lcom/shabakaty/downloader/yn2;->O:I

    const/16 v27, 0x0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move/from16 v25, v3

    invoke-virtual/range {v21 .. v27}, Lcom/shabakaty/downloader/yn2;->e(Lcom/shabakaty/downloader/yn2$c;JIII)V

    .line 199
    iget v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    goto :goto_15

    :cond_2f
    const/4 v3, 0x0

    .line 200
    iput v3, v6, Lcom/shabakaty/downloader/yn2;->G:I

    goto :goto_17

    .line 201
    :cond_30
    :goto_16
    iget v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    iget v4, v6, Lcom/shabakaty/downloader/yn2;->K:I

    if-ge v3, v4, :cond_31

    .line 202
    iget-object v4, v6, Lcom/shabakaty/downloader/yn2;->L:[I

    aget v5, v4, v3

    .line 203
    invoke-virtual {v6, v1, v8, v5}, Lcom/shabakaty/downloader/yn2;->o(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/yn2$c;I)I

    move-result v5

    aput v5, v4, v3

    .line 204
    iget v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/shabakaty/downloader/yn2;->J:I

    goto :goto_16

    :cond_31
    :goto_17
    const/4 v3, 0x0

    .line 205
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    goto/16 :goto_21

    .line 206
    :cond_32
    iget-wide v3, v7, Lcom/shabakaty/downloader/xn0;->g:J

    cmp-long v5, v3, v19

    if-gtz v5, :cond_3b

    .line 207
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v6, v7, Lcom/shabakaty/downloader/xn0;->f:I

    long-to-int v4, v3

    if-nez v4, :cond_33

    const-string v3, ""

    goto :goto_19

    .line 208
    :cond_33
    new-array v3, v4, [B

    const/4 v8, 0x0

    .line 209
    invoke-interface {v1, v3, v8, v4}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    :goto_18
    if-lez v4, :cond_34

    add-int/lit8 v9, v4, -0x1

    .line 210
    aget-byte v10, v3, v9

    if-nez v10, :cond_34

    move v4, v9

    goto :goto_18

    .line 211
    :cond_34
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v3, v9

    .line 212
    :goto_19
    check-cast v5, Lcom/shabakaty/downloader/yn2$b;

    .line 213
    iget-object v4, v5, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x86

    if-eq v6, v5, :cond_39

    const/16 v5, 0x4282

    if-eq v6, v5, :cond_37

    const/16 v5, 0x536e

    if-eq v6, v5, :cond_36

    const v5, 0x22b59c

    if-eq v6, v5, :cond_35

    goto :goto_1a

    .line 214
    :cond_35
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 215
    iget-object v4, v4, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 216
    iput-object v3, v4, Lcom/shabakaty/downloader/yn2$c;->W:Ljava/lang/String;

    goto :goto_1a

    .line 217
    :cond_36
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 218
    iget-object v4, v4, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 219
    iput-object v3, v4, Lcom/shabakaty/downloader/yn2$c;->a:Ljava/lang/String;

    goto :goto_1a

    :cond_37
    const-string v4, "webm"

    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string v4, "matroska"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    goto :goto_1a

    .line 221
    :cond_38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DocType "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 222
    :cond_39
    invoke-virtual {v4, v6}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 223
    iget-object v4, v4, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 224
    iput-object v3, v4, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    :cond_3a
    :goto_1a
    const/4 v3, 0x0

    .line 225
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    goto/16 :goto_21

    :cond_3b
    const/16 v1, 0x29

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "String element size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 227
    :cond_3c
    iget-wide v3, v7, Lcom/shabakaty/downloader/xn0;->g:J

    cmp-long v8, v3, v17

    if-gtz v8, :cond_53

    .line 228
    iget-object v8, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v9, v7, Lcom/shabakaty/downloader/xn0;->f:I

    long-to-int v4, v3

    invoke-virtual {v7, v1, v4}, Lcom/shabakaty/downloader/xn0;->a(Lcom/shabakaty/downloader/o91;I)J

    move-result-wide v3

    check-cast v8, Lcom/shabakaty/downloader/yn2$b;

    .line 229
    iget-object v8, v8, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x5031

    const/16 v11, 0x37

    if-eq v9, v10, :cond_50

    const/16 v10, 0x5032

    if-eq v9, v10, :cond_4e

    const/16 v10, 0x32

    sparse-switch v9, :sswitch_data_1

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_1d

    .line 230
    :sswitch_5
    iput-wide v3, v8, Lcom/shabakaty/downloader/yn2;->r:J

    goto/16 :goto_1d

    .line 231
    :sswitch_6
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 232
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 233
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->e:I

    goto/16 :goto_1d

    .line 234
    :sswitch_7
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    long-to-int v4, v3

    if-eqz v4, :cond_40

    const/4 v3, 0x1

    if-eq v4, v3, :cond_3f

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3e

    if-eq v4, v5, :cond_3d

    goto/16 :goto_1d

    .line 235
    :cond_3d
    iget-object v3, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v5, v3, Lcom/shabakaty/downloader/yn2$c;->r:I

    goto/16 :goto_1d

    .line 236
    :cond_3e
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->r:I

    goto/16 :goto_1d

    .line 237
    :cond_3f
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->r:I

    goto/16 :goto_1d

    .line 238
    :cond_40
    iget-object v3, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const/4 v4, 0x0

    iput v4, v3, Lcom/shabakaty/downloader/yn2$c;->r:I

    goto/16 :goto_1d

    .line 239
    :sswitch_8
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 240
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 241
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->P:I

    goto/16 :goto_1d

    .line 242
    :sswitch_9
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 243
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 244
    iput-wide v3, v5, Lcom/shabakaty/downloader/yn2$c;->S:J

    goto/16 :goto_1d

    .line 245
    :sswitch_a
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 246
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 247
    iput-wide v3, v5, Lcom/shabakaty/downloader/yn2$c;->R:J

    goto/16 :goto_1d

    .line 248
    :sswitch_b
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 249
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 250
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->f:I

    goto/16 :goto_1d

    .line 251
    :sswitch_c
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 252
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const-wide/16 v8, 0x1

    cmp-long v6, v3, v8

    if-nez v6, :cond_41

    const/4 v3, 0x1

    goto :goto_1b

    :cond_41
    const/4 v3, 0x0

    .line 253
    :goto_1b
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2$c;->U:Z

    goto/16 :goto_1d

    .line 254
    :sswitch_d
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 255
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 256
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->p:I

    goto/16 :goto_1d

    .line 257
    :sswitch_e
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 258
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 259
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->q:I

    goto/16 :goto_1d

    .line 260
    :sswitch_f
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 261
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 262
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->o:I

    goto/16 :goto_1d

    :sswitch_10
    long-to-int v4, v3

    .line 263
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    if-eqz v4, :cond_45

    const/4 v3, 0x1

    if-eq v4, v3, :cond_44

    if-eq v4, v5, :cond_43

    const/16 v3, 0xf

    if-eq v4, v3, :cond_42

    goto/16 :goto_1d

    .line 264
    :cond_42
    iget-object v3, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v5, v3, Lcom/shabakaty/downloader/yn2$c;->w:I

    goto/16 :goto_1d

    .line 265
    :cond_43
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->w:I

    goto/16 :goto_1d

    .line 266
    :cond_44
    iget-object v3, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const/4 v4, 0x2

    iput v4, v3, Lcom/shabakaty/downloader/yn2$c;->w:I

    goto/16 :goto_1d

    .line 267
    :cond_45
    iget-object v3, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const/4 v4, 0x0

    iput v4, v3, Lcom/shabakaty/downloader/yn2$c;->w:I

    goto/16 :goto_1d

    .line 268
    :sswitch_11
    iget-wide v5, v8, Lcom/shabakaty/downloader/yn2;->q:J

    add-long/2addr v3, v5

    iput-wide v3, v8, Lcom/shabakaty/downloader/yn2;->x:J

    goto/16 :goto_1d

    :sswitch_12
    const-wide/16 v5, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_46

    goto/16 :goto_1d

    :cond_46
    const/16 v1, 0x38

    const-string v2, "AESSettingsCipherMode "

    .line 269
    invoke-static {v1, v2, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :sswitch_13
    const-wide/16 v5, 0x5

    cmp-long v8, v3, v5

    if-nez v8, :cond_47

    goto/16 :goto_1d

    :cond_47
    const/16 v1, 0x31

    const-string v2, "ContentEncAlgo "

    .line 270
    invoke-static {v1, v2, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :sswitch_14
    const-wide/16 v5, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_48

    goto/16 :goto_1d

    :cond_48
    const-string v1, "EBMLReadVersion "

    .line 271
    invoke-static {v10, v1, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :sswitch_15
    const-wide/16 v5, 0x1

    cmp-long v8, v3, v5

    if-ltz v8, :cond_49

    const-wide/16 v5, 0x2

    cmp-long v8, v3, v5

    if-gtz v8, :cond_49

    goto/16 :goto_1d

    :cond_49
    const/16 v1, 0x35

    const-string v2, "DocTypeReadVersion "

    .line 272
    invoke-static {v1, v2, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :sswitch_16
    const-wide/16 v5, 0x3

    cmp-long v8, v3, v5

    if-nez v8, :cond_4a

    goto/16 :goto_1d

    :cond_4a
    const-string v1, "ContentCompAlgo "

    .line 273
    invoke-static {v10, v1, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 274
    :sswitch_17
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 275
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 276
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->g:I

    goto/16 :goto_1d

    :sswitch_18
    const/4 v3, 0x1

    .line 277
    iput-boolean v3, v8, Lcom/shabakaty/downloader/yn2;->Q:Z

    goto/16 :goto_1d

    :sswitch_19
    invoke-virtual {v8, v9, v3, v4}, Lcom/shabakaty/downloader/yn2;->ca1CueInteger102(IJ)Z

    goto/16 :goto_1d

    :sswitch_1a
    invoke-virtual {v8, v9, v3, v4}, Lcom/shabakaty/downloader/yn2;->ca1CueInteger102(IJ)Z

    move-result v5

    if-nez v5, :cond_51

    const/4 v5, 0x1

    .line 278
    iget-boolean v6, v8, Lcom/shabakaty/downloader/yn2;->E:Z

    if-nez v6, :cond_51

    .line 279
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->c(I)V

    .line 280
    iget-object v6, v8, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    invoke-virtual {v6, v3, v4}, Lcom/shabakaty/downloader/u74;->a(J)V

    .line 281
    iput-boolean v5, v8, Lcom/shabakaty/downloader/yn2;->E:Z

    goto/16 :goto_1d

    :sswitch_1b
    long-to-int v4, v3

    .line 282
    iput v4, v8, Lcom/shabakaty/downloader/yn2;->P:I

    goto/16 :goto_1d

    .line 283
    :sswitch_1c
    invoke-virtual {v8, v3, v4}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide v3

    iput-wide v3, v8, Lcom/shabakaty/downloader/yn2;->B:J

    goto/16 :goto_1d

    .line 284
    :sswitch_1d
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 285
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 286
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->c:I

    goto/16 :goto_1d

    .line 287
    :sswitch_1e
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 288
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 289
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->n:I

    goto/16 :goto_1d

    .line 290
    :sswitch_1f
    invoke-virtual {v8, v9, v3, v4}, Lcom/shabakaty/downloader/yn2;->ca1CueInteger102(IJ)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->c(I)V

    .line 291
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    invoke-virtual {v8, v3, v4}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/u74;->a(J)V

    goto/16 :goto_1d

    .line 292
    :sswitch_20
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 293
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 294
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->m:I

    goto/16 :goto_1d

    .line 295
    :sswitch_21
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 296
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 297
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->O:I

    goto/16 :goto_1d

    .line 298
    :sswitch_22
    invoke-virtual {v8, v3, v4}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide v3

    iput-wide v3, v8, Lcom/shabakaty/downloader/yn2;->I:J

    goto/16 :goto_1d

    .line 299
    :sswitch_23
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 300
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const-wide/16 v8, 0x1

    cmp-long v6, v3, v8

    if-nez v6, :cond_4b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_4b
    const/4 v3, 0x0

    .line 301
    :goto_1c
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2$c;->V:Z

    goto/16 :goto_1d

    .line 302
    :sswitch_24
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 303
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 304
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->d:I

    goto :goto_1d

    .line 305
    :pswitch_d
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 306
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 307
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->C:I

    goto :goto_1d

    .line 308
    :pswitch_e
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 309
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    long-to-int v4, v3

    .line 310
    iput v4, v5, Lcom/shabakaty/downloader/yn2$c;->B:I

    goto :goto_1d

    .line 311
    :pswitch_f
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 312
    iget-object v5, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/shabakaty/downloader/yn2$c;->x:Z

    long-to-int v4, v3

    .line 313
    invoke-static {v4}, Lcom/shabakaty/downloader/v50;->a(I)I

    move-result v3

    if-eq v3, v6, :cond_51

    .line 314
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->y:I

    goto :goto_1d

    .line 315
    :pswitch_10
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    long-to-int v4, v3

    .line 316
    invoke-static {v4}, Lcom/shabakaty/downloader/v50;->b(I)I

    move-result v3

    if-eq v3, v6, :cond_51

    .line 317
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->z:I

    goto :goto_1d

    .line 318
    :pswitch_11
    invoke-virtual {v8, v9}, Lcom/shabakaty/downloader/yn2;->d(I)V

    long-to-int v4, v3

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4d

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4c

    goto :goto_1d

    .line 319
    :cond_4c
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->A:I

    goto :goto_1d

    :cond_4d
    const/4 v3, 0x2

    .line 320
    iget-object v4, v8, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iput v3, v4, Lcom/shabakaty/downloader/yn2$c;->A:I

    goto :goto_1d

    :cond_4e
    const-wide/16 v5, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_4f

    goto :goto_1d

    :cond_4f
    const-string v1, "ContentEncodingScope "

    .line 321
    invoke-static {v11, v1, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_50
    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-nez v8, :cond_52

    :cond_51
    :goto_1d
    const/4 v3, 0x0

    .line 322
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    goto/16 :goto_21

    :cond_52
    const-string v1, "ContentEncodingOrder "

    .line 323
    invoke-static {v11, v1, v3, v4, v14}, Lcom/shabakaty/downloader/wn0;->a(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_53
    const/4 v1, 0x0

    const/16 v2, 0x2a

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 325
    :cond_54
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v3

    .line 326
    iget-wide v8, v7, Lcom/shabakaty/downloader/xn0;->g:J

    add-long/2addr v8, v3

    .line 327
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->b:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/shabakaty/downloader/xn0$b;

    iget v11, v7, Lcom/shabakaty/downloader/xn0;->f:I

    invoke-direct {v10, v11, v8, v9, v13}, Lcom/shabakaty/downloader/xn0$b;-><init>(IJLcom/shabakaty/downloader/xn0$a;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 328
    iget-object v5, v7, Lcom/shabakaty/downloader/xn0;->d:Lcom/shabakaty/downloader/a21;

    iget v8, v7, Lcom/shabakaty/downloader/xn0;->f:I

    iget-wide v9, v7, Lcom/shabakaty/downloader/xn0;->g:J

    check-cast v5, Lcom/shabakaty/downloader/yn2$b;

    .line 329
    iget-object v5, v5, Lcom/shabakaty/downloader/yn2$b;->a:Lcom/shabakaty/downloader/yn2;

    .line 330
    iget-object v11, v5, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    invoke-static {v11}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/yn2;->ca1CueStart102(I)V

    const/16 v11, 0xa0

    if-eq v8, v11, :cond_61

    const/16 v11, 0xae

    if-eq v8, v11, :cond_60

    const/16 v11, 0xbb

    if-eq v8, v11, :cond_5f

    const/16 v11, 0x4dbb

    if-eq v8, v11, :cond_5d

    const/16 v6, 0x5035

    if-eq v8, v6, :cond_5c

    const/16 v6, 0x55d0

    if-eq v8, v6, :cond_5b

    const v6, 0x18538067

    if-eq v8, v6, :cond_58

    const v3, 0x1c53bb6b

    if-eq v8, v3, :cond_57

    const v3, 0x1f43b675

    if-eq v8, v3, :cond_55

    goto :goto_1f

    .line 331
    :cond_55
    iget-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->v:Z

    if-nez v3, :cond_5e

    .line 332
    iget-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->d:Z

    if-eqz v3, :cond_56

    iget-wide v3, v5, Lcom/shabakaty/downloader/yn2;->z:J

    const-wide/16 v8, -0x1

    cmp-long v6, v3, v8

    if-eqz v6, :cond_56

    const/4 v3, 0x1

    .line 333
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->y:Z

    goto :goto_1f

    :cond_56
    const/4 v3, 0x1

    .line 334
    iget-object v4, v5, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    new-instance v6, Lcom/shabakaty/downloader/vz3$b;

    iget-wide v8, v5, Lcom/shabakaty/downloader/yn2;->t:J

    const-wide/16 v10, 0x0

    .line 335
    invoke-direct {v6, v8, v9, v10, v11}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 336
    invoke-interface {v4, v6}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 337
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->v:Z

    goto :goto_1f

    .line 338
    :cond_57
    new-instance v3, Lcom/shabakaty/downloader/u74;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    iput-object v3, v5, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    .line 339
    new-instance v3, Lcom/shabakaty/downloader/u74;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    iput-object v3, v5, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    goto :goto_1f

    .line 340
    :cond_58
    iget-wide v11, v5, Lcom/shabakaty/downloader/yn2;->q:J

    const-wide/16 v13, -0x1

    cmp-long v6, v11, v13

    if-eqz v6, :cond_5a

    cmp-long v6, v11, v3

    if-nez v6, :cond_59

    goto :goto_1e

    :cond_59
    const-string v1, "Multiple Segment elements not supported"

    const/4 v2, 0x0

    .line 341
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 342
    :cond_5a
    :goto_1e
    iput-wide v3, v5, Lcom/shabakaty/downloader/yn2;->q:J

    .line 343
    iput-wide v9, v5, Lcom/shabakaty/downloader/yn2;->p:J

    goto :goto_1f

    .line 344
    :cond_5b
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 345
    iget-object v3, v5, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    const/4 v4, 0x1

    .line 346
    iput-boolean v4, v3, Lcom/shabakaty/downloader/yn2$c;->x:Z

    goto :goto_1f

    :cond_5c
    const/4 v3, 0x1

    .line 347
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 348
    iget-object v4, v5, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    .line 349
    iput-boolean v3, v4, Lcom/shabakaty/downloader/yn2$c;->h:Z

    goto :goto_1f

    .line 350
    :cond_5d
    iput v6, v5, Lcom/shabakaty/downloader/yn2;->w:I

    const-wide/16 v3, -0x1

    .line 351
    iput-wide v3, v5, Lcom/shabakaty/downloader/yn2;->x:J

    :cond_5e
    :goto_1f
    const/4 v3, 0x0

    goto :goto_20

    :cond_5f
    const/4 v3, 0x0

    .line 352
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->E:Z

    goto :goto_20

    :cond_60
    const/4 v3, 0x0

    .line 353
    new-instance v4, Lcom/shabakaty/downloader/yn2$c;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/shabakaty/downloader/yn2$c;-><init>(Lcom/shabakaty/downloader/yn2$a;)V

    iput-object v4, v5, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    goto :goto_20

    :cond_61
    const/4 v3, 0x0

    .line 354
    iput-boolean v3, v5, Lcom/shabakaty/downloader/yn2;->Q:Z

    .line 355
    :goto_20
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    :goto_21
    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_22
    if-eqz v5, :cond_64

    .line 356
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v3

    .line 357
    iget-boolean v6, v0, Lcom/shabakaty/downloader/yn2;->y:Z

    if-eqz v6, :cond_62

    .line 358
    iput-wide v3, v0, Lcom/shabakaty/downloader/yn2;->A:J

    .line 359
    iget-wide v3, v0, Lcom/shabakaty/downloader/yn2;->z:J

    iput-wide v3, v2, Lcom/shabakaty/downloader/ie3;->a:J

    const/4 v3, 0x0

    .line 360
    iput-boolean v3, v0, Lcom/shabakaty/downloader/yn2;->y:Z

    goto :goto_23

    .line 361
    :cond_62
    iget-boolean v3, v0, Lcom/shabakaty/downloader/yn2;->v:Z

    if-eqz v3, :cond_63

    iget-wide v3, v0, Lcom/shabakaty/downloader/yn2;->A:J

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-eqz v8, :cond_63

    .line 362
    iput-wide v3, v2, Lcom/shabakaty/downloader/ie3;->a:J

    .line 363
    iput-wide v6, v0, Lcom/shabakaty/downloader/yn2;->A:J

    :goto_23
    const/4 v3, 0x1

    goto :goto_24

    :cond_63
    const/4 v3, 0x0

    :goto_24
    if-eqz v3, :cond_64

    const/4 v1, 0x1

    return v1

    :cond_64
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 364
    :cond_65
    iget-wide v3, v7, Lcom/shabakaty/downloader/xn0;->g:J

    long-to-int v4, v3

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/o91;->q(I)V

    const/4 v3, 0x0

    .line 365
    iput v3, v7, Lcom/shabakaty/downloader/xn0;->e:I

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_66
    if-nez v5, :cond_69

    const/4 v1, 0x0

    .line 366
    :goto_25
    iget-object v2, v0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 367
    iget-object v2, v0, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yn2$c;

    .line 368
    iget-object v3, v2, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    .line 369
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v3, v2, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    if-eqz v3, :cond_67

    .line 371
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/yn2$d;->a(Lcom/shabakaty/downloader/yn2$c;)V

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_68
    return v6

    :cond_69
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xf7 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_24
        0x88 -> :sswitch_23
        0x9b -> :sswitch_22
        0x9f -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_1f
        0xba -> :sswitch_1e
        0xd7 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xee -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xf7 -> :sswitch_19
        0xfb -> :sswitch_18
        0x41e7 -> :sswitch_17
        0x4254 -> :sswitch_16
        0x4285 -> :sswitch_15
        0x42f7 -> :sswitch_14
        0x47e1 -> :sswitch_13
        0x47e8 -> :sswitch_12
        0x53ac -> :sswitch_11
        0x53b8 -> :sswitch_10
        0x54b0 -> :sswitch_f
        0x54b2 -> :sswitch_e
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_c
        0x55ee -> :sswitch_b
        0x56aa -> :sswitch_a
        0x56bb -> :sswitch_9
        0x6264 -> :sswitch_8
        0x7671 -> :sswitch_7
        0x23e383 -> :sswitch_6
        0x2ad7b1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55b9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final g(Lcom/shabakaty/downloader/p91;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/o91;)Z
    .locals 16

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/u74;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/u74;-><init>(I)V

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :cond_1
    :goto_0
    long-to-int v6, v5

    .line 3
    iget-object v5, v1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ka3;

    .line 4
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 5
    invoke-interface {v0, v5, v7, v8}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 6
    iget-object v5, v1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v10

    .line 7
    iput v8, v1, Lcom/shabakaty/downloader/u74;->a:I

    :goto_1
    const-wide/32 v12, 0x1a45dfa3

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3

    .line 8
    iget v5, v1, Lcom/shabakaty/downloader/u74;->a:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/shabakaty/downloader/u74;->a:I

    if-ne v5, v6, :cond_2

    goto/16 :goto_5

    .line 9
    :cond_2
    iget-object v5, v1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ka3;

    .line 10
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 11
    invoke-interface {v0, v5, v7, v2}, Lcom/shabakaty/downloader/o91;->s([BII)V

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    const-wide/16 v12, -0x100

    and-long/2addr v10, v12

    .line 12
    iget-object v5, v1, Lcom/shabakaty/downloader/u74;->b:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ka3;

    .line 13
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 14
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    int-to-long v12, v5

    or-long/2addr v10, v12

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/u74;->c(Lcom/shabakaty/downloader/o91;)J

    move-result-wide v5

    .line 16
    iget v8, v1, Lcom/shabakaty/downloader/u74;->a:I

    int-to-long v10, v8

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v8, v5, v12

    if-eqz v8, :cond_8

    if-eqz v9, :cond_4

    add-long v8, v10, v5

    cmp-long v14, v8, v3

    if-ltz v14, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    :goto_2
    iget v3, v1, Lcom/shabakaty/downloader/u74;->a:I

    int-to-long v3, v3

    add-long v8, v10, v5

    cmp-long v14, v3, v8

    if-gez v14, :cond_7

    .line 18
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/u74;->c(Lcom/shabakaty/downloader/o91;)J

    move-result-wide v3

    cmp-long v8, v3, v12

    if-nez v8, :cond_5

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/u74;->c(Lcom/shabakaty/downloader/o91;)J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v14, v3, v8

    if-ltz v14, :cond_9

    const-wide/32 v8, 0x7fffffff

    cmp-long v15, v3, v8

    if-lez v15, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v14, :cond_4

    long-to-int v4, v3

    .line 20
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/o91;->l(I)V

    .line 21
    iget v3, v1, Lcom/shabakaty/downloader/u74;->a:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/shabakaty/downloader/u74;->a:I

    goto :goto_2

    :cond_7
    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x0

    :goto_4
    move v7, v2

    :cond_9
    :goto_5
    return v7
.end method

.method public i(I)V
    .locals 25

    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/yn2;->ca1CueEnd102(I)V

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 1
    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    invoke-static {v1}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v2, 0xa0

    if-eq v0, v2, :cond_7e

    const/16 v2, 0xae

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v2, :cond_11

    const/16 v1, 0x4dbb

    const v2, 0x1c53bb6b

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_b

    const v1, 0x1549a966

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_9

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_0

    goto/16 :goto_30

    .line 2
    :cond_0
    iget-boolean v0, v7, Lcom/shabakaty/downloader/yn2;->v:Z

    if-nez v0, :cond_6

    .line 3
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    iget-object v2, v7, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    .line 4
    iget-wide v11, v7, Lcom/shabakaty/downloader/yn2;->q:J

    const-wide/16 v13, -0x1

    cmp-long v6, v11, v13

    if-eqz v6, :cond_5

    iget-wide v11, v7, Lcom/shabakaty/downloader/yn2;->t:J

    cmp-long v6, v11, v9

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 5
    iget v6, v1, Lcom/shabakaty/downloader/u74;->a:I

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 6
    iget v9, v2, Lcom/shabakaty/downloader/u74;->a:I

    if-eq v9, v6, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    new-array v9, v6, [I

    .line 8
    new-array v10, v6, [J

    .line 9
    new-array v11, v6, [J

    .line 10
    new-array v12, v6, [J

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v6, :cond_2

    .line 11
    invoke-virtual {v1, v13}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 12
    iget-wide v14, v7, Lcom/shabakaty/downloader/yn2;->q:J

    invoke-virtual {v2, v13}, Lcom/shabakaty/downloader/u74;->b(I)J

    move-result-wide v16

    add-long v16, v16, v14

    aput-wide v16, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v6, -0x1

    if-ge v8, v1, :cond_3

    add-int/lit8 v1, v8, 0x1

    .line 13
    aget-wide v13, v10, v1

    aget-wide v15, v10, v8

    sub-long/2addr v13, v15

    long-to-int v2, v13

    aput v2, v9, v8

    .line 14
    aget-wide v13, v12, v1

    aget-wide v15, v12, v8

    sub-long/2addr v13, v15

    aput-wide v13, v11, v8

    move v8, v1

    goto :goto_1

    .line 15
    :cond_3
    iget-wide v2, v7, Lcom/shabakaty/downloader/yn2;->q:J

    iget-wide v13, v7, Lcom/shabakaty/downloader/yn2;->p:J

    add-long/2addr v2, v13

    aget-wide v13, v10, v1

    sub-long/2addr v2, v13

    long-to-int v3, v2

    aput v3, v9, v1

    .line 16
    iget-wide v2, v7, Lcom/shabakaty/downloader/yn2;->t:J

    aget-wide v13, v12, v1

    sub-long/2addr v2, v13

    aput-wide v2, v11, v1

    .line 17
    aget-wide v2, v11, v1

    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-gtz v6, :cond_4

    const/16 v6, 0x48

    .line 18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MatroskaExtractor"

    .line 19
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 21
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    .line 22
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    .line 23
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    .line 24
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/c00;

    invoke-direct {v1, v9, v10, v11, v12}, Lcom/shabakaty/downloader/c00;-><init>([I[J[J[J)V

    goto :goto_3

    .line 25
    :cond_5
    :goto_2
    new-instance v1, Lcom/shabakaty/downloader/vz3$b;

    iget-wide v2, v7, Lcom/shabakaty/downloader/yn2;->t:J

    const-wide/16 v8, 0x0

    .line 26
    invoke-direct {v1, v2, v3, v8, v9}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    .line 27
    :goto_3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    .line 28
    iput-boolean v4, v7, Lcom/shabakaty/downloader/yn2;->v:Z

    .line 29
    :cond_6
    iput-object v5, v7, Lcom/shabakaty/downloader/yn2;->C:Lcom/shabakaty/downloader/u74;

    .line 30
    iput-object v5, v7, Lcom/shabakaty/downloader/yn2;->D:Lcom/shabakaty/downloader/u74;

    goto/16 :goto_30

    .line 31
    :cond_7
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/p91;->b()V

    goto/16 :goto_30

    :cond_8
    const-string v0, "No valid tracks were found"

    .line 33
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 34
    :cond_9
    iget-wide v0, v7, Lcom/shabakaty/downloader/yn2;->r:J

    cmp-long v2, v0, v9

    if-nez v2, :cond_a

    const-wide/32 v0, 0xf4240

    .line 35
    iput-wide v0, v7, Lcom/shabakaty/downloader/yn2;->r:J

    .line 36
    :cond_a
    iget-wide v0, v7, Lcom/shabakaty/downloader/yn2;->s:J

    cmp-long v2, v0, v9

    if-eqz v2, :cond_83

    .line 37
    invoke-virtual {v7, v0, v1}, Lcom/shabakaty/downloader/yn2;->n(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/shabakaty/downloader/yn2;->t:J

    goto/16 :goto_30

    .line 38
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 39
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yn2$c;->h:Z

    if-eqz v1, :cond_83

    iget-object v0, v0, Lcom/shabakaty/downloader/yn2$c;->i:[B

    if-nez v0, :cond_c

    goto/16 :goto_30

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    .line 40
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 41
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/shabakaty/downloader/yn2;->d(I)V

    .line 42
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/yn2$c;->h:Z

    if-eqz v1, :cond_83

    .line 43
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->j:Lcom/shabakaty/downloader/fp4$a;

    if-eqz v1, :cond_e

    .line 44
    new-instance v2, Lcom/shabakaty/downloader/o01;

    new-array v3, v4, [Lcom/shabakaty/downloader/o01$b;

    new-instance v6, Lcom/shabakaty/downloader/o01$b;

    sget-object v9, Lcom/shabakaty/downloader/jp;->a:Ljava/util/UUID;

    iget-object v1, v1, Lcom/shabakaty/downloader/fp4$a;->b:[B

    const-string v10, "video/webm"

    .line 45
    invoke-direct {v6, v9, v5, v10, v1}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v6, v3, v8

    .line 46
    invoke-direct {v2, v5, v4, v3}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    .line 47
    iput-object v2, v0, Lcom/shabakaty/downloader/yn2$c;->l:Lcom/shabakaty/downloader/o01;

    goto/16 :goto_30

    :cond_e
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 48
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 49
    :cond_f
    iget v0, v7, Lcom/shabakaty/downloader/yn2;->w:I

    if-eq v0, v3, :cond_10

    iget-wide v3, v7, Lcom/shabakaty/downloader/yn2;->x:J

    const-wide/16 v8, -0x1

    cmp-long v1, v3, v8

    if-eqz v1, :cond_10

    if-ne v0, v2, :cond_83

    .line 50
    iput-wide v3, v7, Lcom/shabakaty/downloader/yn2;->z:J

    goto/16 :goto_30

    :cond_10
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 51
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 52
    :cond_11
    iget-object v0, v7, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v9, "A_MS/ACM"

    const-string v10, "V_MPEG4/ISO/SP"

    const-string v11, "V_MPEG4/ISO/AP"

    const-string v12, "V_MS/VFW/FOURCC"

    const-string v13, "A_MPEG/L3"

    const-string v14, "A_MPEG/L2"

    const-string v15, "A_VORBIS"

    const-string v3, "A_TRUEHD"

    const/16 v1, 0x10

    const/16 v4, 0x8

    const/16 v20, 0x11

    const/16 v21, 0x12

    const/16 v22, 0x13

    const/4 v8, 0x3

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v6, "A_OPUS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v2, 0x1f

    goto/16 :goto_5

    :sswitch_1
    const-string v6, "A_FLAC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_4

    :cond_13
    const/16 v2, 0x1e

    goto/16 :goto_5

    :sswitch_2
    const-string v6, "A_EAC3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v2, 0x1d

    goto/16 :goto_5

    :sswitch_3
    const-string v6, "V_MPEG2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_4

    :cond_15
    const/16 v2, 0x1c

    goto/16 :goto_5

    :sswitch_4
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v2, 0x1b

    goto/16 :goto_5

    :sswitch_5
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_4

    :cond_17
    const/16 v2, 0x1a

    goto/16 :goto_5

    :sswitch_6
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v2, 0x19

    goto/16 :goto_5

    :sswitch_7
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v2, 0x18

    goto/16 :goto_5

    :sswitch_8
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v2, 0x17

    goto/16 :goto_5

    :sswitch_9
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v2, 0x16

    goto/16 :goto_5

    :sswitch_a
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v2, 0x15

    goto/16 :goto_5

    :sswitch_b
    const-string v6, "V_THEORA"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v2, 0x14

    goto/16 :goto_5

    :sswitch_c
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v2, 0x13

    goto/16 :goto_5

    :sswitch_d
    const-string v6, "V_VP9"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const/16 v2, 0x12

    goto/16 :goto_5

    :sswitch_e
    const-string v6, "V_VP8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_4

    :cond_20
    const/16 v2, 0x11

    goto/16 :goto_5

    :sswitch_f
    const-string v6, "V_AV1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_4

    :cond_21
    const/16 v2, 0x10

    goto/16 :goto_5

    :sswitch_10
    const-string v6, "A_DTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_4

    :cond_22
    const/16 v2, 0xf

    goto/16 :goto_5

    :sswitch_11
    const-string v6, "A_AC3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v2, 0xe

    goto/16 :goto_5

    :sswitch_12
    const-string v6, "A_AAC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v2, 0xd

    goto/16 :goto_5

    :sswitch_13
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v2, 0xc

    goto/16 :goto_5

    :sswitch_14
    const-string v6, "S_VOBSUB"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_15
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v2, 0xa

    goto/16 :goto_5

    :sswitch_16
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v2, 0x9

    goto/16 :goto_5

    :sswitch_17
    const-string v6, "S_DVBSUB"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_4

    :cond_29
    const/16 v2, 0x8

    goto :goto_5

    :sswitch_18
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_4

    :cond_2a
    const/4 v2, 0x7

    goto :goto_5

    :sswitch_19
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_4

    :cond_2b
    const/4 v2, 0x6

    goto :goto_5

    :sswitch_1a
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_4

    :cond_2c
    const/4 v2, 0x5

    goto :goto_5

    :sswitch_1b
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_4

    :cond_2d
    const/4 v2, 0x4

    goto :goto_5

    :sswitch_1c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_4

    :cond_2e
    const/4 v2, 0x3

    goto :goto_5

    :sswitch_1d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_4

    :cond_2f
    const/4 v2, 0x2

    goto :goto_5

    :sswitch_1e
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_4

    :cond_30
    const/4 v2, 0x1

    goto :goto_5

    :sswitch_1f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_4

    :cond_31
    const/4 v2, 0x0

    goto :goto_5

    :goto_4
    const/4 v2, -0x1

    :goto_5
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_6

    :pswitch_0
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_7c

    .line 55
    iget-object v2, v7, Lcom/shabakaty/downloader/yn2;->a0:Lcom/shabakaty/downloader/p91;

    iget v6, v0, Lcom/shabakaty/downloader/yn2$c;->c:I

    .line 56
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_20
    const-string v3, "A_OPUS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_7

    :cond_32
    const/16 v3, 0x1f

    goto/16 :goto_8

    :sswitch_21
    const-string v3, "A_FLAC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_7

    :cond_33
    const/16 v3, 0x1e

    goto/16 :goto_8

    :sswitch_22
    const-string v3, "A_EAC3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_7

    :cond_34
    const/16 v3, 0x1d

    goto/16 :goto_8

    :sswitch_23
    const-string v3, "V_MPEG2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_7

    :cond_35
    const/16 v3, 0x1c

    goto/16 :goto_8

    :sswitch_24
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_7

    :cond_36
    const/16 v3, 0x1b

    goto/16 :goto_8

    :sswitch_25
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_7

    :cond_37
    const/16 v3, 0x1a

    goto/16 :goto_8

    :sswitch_26
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_7

    :cond_38
    const/16 v3, 0x19

    goto/16 :goto_8

    :sswitch_27
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_7

    :cond_39
    const/16 v3, 0x18

    goto/16 :goto_8

    :sswitch_28
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_7

    :cond_3a
    const/16 v3, 0x17

    goto/16 :goto_8

    :sswitch_29
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_7

    :cond_3b
    const/16 v3, 0x16

    goto/16 :goto_8

    :sswitch_2a
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_7

    :cond_3c
    const/16 v3, 0x15

    goto/16 :goto_8

    :sswitch_2b
    const-string v3, "V_THEORA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_7

    :cond_3d
    const/16 v3, 0x14

    goto/16 :goto_8

    :sswitch_2c
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_7

    :cond_3e
    const/16 v3, 0x13

    goto/16 :goto_8

    :sswitch_2d
    const-string v3, "V_VP9"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_7

    :cond_3f
    const/16 v3, 0x12

    goto/16 :goto_8

    :sswitch_2e
    const-string v3, "V_VP8"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_7

    :cond_40
    const/16 v3, 0x11

    goto/16 :goto_8

    :sswitch_2f
    const-string v3, "V_AV1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_7

    :cond_41
    const/16 v3, 0x10

    goto/16 :goto_8

    :sswitch_30
    const-string v3, "A_DTS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_7

    :cond_42
    const/16 v3, 0xf

    goto/16 :goto_8

    :sswitch_31
    const-string v3, "A_AC3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_7

    :cond_43
    const/16 v3, 0xe

    goto/16 :goto_8

    :sswitch_32
    const-string v3, "A_AAC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_7

    :cond_44
    const/16 v3, 0xd

    goto/16 :goto_8

    :sswitch_33
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_7

    :cond_45
    const/16 v3, 0xc

    goto/16 :goto_8

    :sswitch_34
    const-string v3, "S_VOBSUB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_7

    :cond_46
    const/16 v3, 0xb

    goto/16 :goto_8

    :sswitch_35
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_7

    :cond_47
    const/16 v3, 0xa

    goto/16 :goto_8

    :sswitch_36
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_7

    :cond_48
    const/16 v3, 0x9

    goto/16 :goto_8

    :sswitch_37
    const-string v3, "S_DVBSUB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_7

    :cond_49
    const/16 v3, 0x8

    goto :goto_8

    :sswitch_38
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_7

    :cond_4a
    const/4 v3, 0x7

    goto :goto_8

    :sswitch_39
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_7

    :cond_4b
    const/4 v3, 0x6

    goto :goto_8

    :sswitch_3a
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_7

    :cond_4c
    const/4 v3, 0x5

    goto :goto_8

    :sswitch_3b
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_7

    :cond_4d
    const/4 v3, 0x4

    goto :goto_8

    :sswitch_3c
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_7

    :cond_4e
    const/4 v3, 0x3

    goto :goto_8

    :sswitch_3d
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_7

    :cond_4f
    const/4 v3, 0x2

    goto :goto_8

    :sswitch_3e
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_7

    :cond_50
    const/4 v3, 0x1

    goto :goto_8

    :sswitch_3f
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_7

    :cond_51
    const/4 v3, 0x0

    goto :goto_8

    :goto_7
    const/4 v3, -0x1

    :goto_8
    const-string v5, "video/x-unknown"

    const-string v9, ". Setting mimeType to "

    const-string v10, "audio/x-unknown"

    const-string v11, "MatroskaExtractor"

    const-string v12, "audio/raw"

    packed-switch v3, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 58
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v9, v0, Lcom/shabakaty/downloader/yn2$c;->R:J

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Lcom/shabakaty/downloader/yn2$c;->S:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1680

    const-string v4, "audio/opus"

    goto/16 :goto_16

    .line 64
    :pswitch_2
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "audio/flac"

    goto/16 :goto_f

    :pswitch_3
    const-string v5, "audio/eac3"

    goto/16 :goto_a

    :pswitch_4
    const-string v5, "video/mpeg2"

    goto/16 :goto_a

    :pswitch_5
    const-string v5, "application/x-subrip"

    goto/16 :goto_a

    .line 65
    :pswitch_6
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dv3;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/dv3;

    move-result-object v1

    .line 66
    iget-object v3, v1, Lcom/shabakaty/downloader/dv3;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 67
    iget v4, v1, Lcom/shabakaty/downloader/dv3;->a:I

    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->Y:I

    .line 68
    iget-object v1, v1, Lcom/shabakaty/downloader/dv3;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v4, "video/hevc"

    goto/16 :goto_d

    .line 69
    :pswitch_7
    sget-object v1, Lcom/shabakaty/downloader/yn2;->c0:[B

    .line 70
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/collect/p;->F(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    const-string v3, "text/x-ssa"

    goto/16 :goto_f

    .line 71
    :pswitch_8
    iget v1, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->w(I)I

    move-result v1

    if-nez v1, :cond_52

    .line 72
    iget v1, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    const/16 v3, 0x59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_52
    move v5, v1

    goto :goto_9

    .line 74
    :pswitch_9
    iget v3, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    if-ne v3, v4, :cond_53

    const/4 v5, 0x3

    goto :goto_9

    :cond_53
    if-ne v3, v1, :cond_54

    const/high16 v5, 0x10000000

    goto :goto_9

    :cond_54
    const/16 v1, 0x56

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 77
    :pswitch_a
    iget v1, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_55

    const/4 v5, 0x4

    :goto_9
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_55
    const/16 v3, 0x5a

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_b
    const-string v5, "application/pgs"

    goto :goto_a

    :pswitch_c
    const-string v5, "video/x-vnd.on2.vp9"

    goto :goto_a

    :pswitch_d
    const-string v5, "video/x-vnd.on2.vp8"

    goto :goto_a

    :pswitch_e
    const-string v5, "video/av01"

    goto :goto_a

    :pswitch_f
    const-string v5, "audio/vnd.dts"

    goto :goto_a

    :pswitch_10
    const-string v5, "audio/ac3"

    goto :goto_a

    .line 80
    :pswitch_11
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 81
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->k:[B

    invoke-static {v3}, Lcom/shabakaty/downloader/c;->f([B)Lcom/shabakaty/downloader/c$b;

    move-result-object v3

    .line 82
    iget v4, v3, Lcom/shabakaty/downloader/c$b;->a:I

    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->Q:I

    .line 83
    iget v4, v3, Lcom/shabakaty/downloader/c$b;->b:I

    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->O:I

    .line 84
    iget-object v3, v3, Lcom/shabakaty/downloader/c$b;->c:Ljava/lang/String;

    const-string v4, "audio/mp4a-latm"

    goto/16 :goto_14

    :pswitch_12
    const-string v5, "audio/vnd.dts.hd"

    :goto_a
    :pswitch_13
    move-object v10, v5

    :goto_b
    move-object v4, v10

    const/4 v1, 0x0

    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_14

    .line 85
    :pswitch_14
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    const-string v3, "application/vobsub"

    goto :goto_f

    .line 86
    :pswitch_15
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    invoke-static {v1}, Lcom/shabakaty/downloader/di;->b(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/di;

    move-result-object v1

    .line 87
    iget-object v3, v1, Lcom/shabakaty/downloader/di;->a:Ljava/util/List;

    .line 88
    iget v4, v1, Lcom/shabakaty/downloader/di;->b:I

    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->Y:I

    .line 89
    iget-object v1, v1, Lcom/shabakaty/downloader/di;->f:Ljava/lang/String;

    const-string v4, "video/avc"

    :goto_d
    move-object v12, v4

    const/4 v5, -0x1

    :goto_e
    move-object v9, v1

    const/4 v1, -0x1

    const/4 v4, 0x1

    goto/16 :goto_23

    :pswitch_16
    const/4 v1, 0x4

    new-array v3, v1, [B

    .line 90
    iget-object v4, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-static {v3}, Lcom/google/common/collect/p;->E(Ljava/lang/Object;)Lcom/google/common/collect/p;

    move-result-object v1

    const-string v3, "application/dvbsubs"

    :goto_f
    move-object v4, v3

    goto :goto_c

    .line 92
    :pswitch_17
    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 94
    array-length v9, v3

    if-gt v1, v9, :cond_56

    const/4 v9, 0x1

    goto :goto_10

    :cond_56
    const/4 v9, 0x0

    .line 95
    :goto_10
    :try_start_0
    invoke-static {v9}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 96
    aget-byte v9, v3, v1

    int-to-long v9, v9

    const-wide/16 v12, 0xff

    and-long/2addr v9, v12

    aget-byte v14, v3, v20

    int-to-long v14, v14

    and-long/2addr v14, v12

    shl-long/2addr v14, v4

    or-long/2addr v9, v14

    aget-byte v4, v3, v21

    int-to-long v14, v4

    and-long/2addr v14, v12

    shl-long/2addr v14, v1

    or-long/2addr v9, v14

    aget-byte v1, v3, v22

    int-to-long v14, v1

    and-long/2addr v12, v14

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v9, v12

    const-wide/32 v12, 0x58564944

    cmp-long v1, v9, v12

    if-nez v1, :cond_57

    .line 97
    new-instance v1, Landroid/util/Pair;

    const-string v3, "video/divx"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_57
    const-wide/32 v12, 0x33363248

    cmp-long v1, v9, v12

    if-nez v1, :cond_58

    .line 98
    new-instance v1, Landroid/util/Pair;

    const-string v3, "video/3gpp"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_58
    const-wide/32 v12, 0x31435657

    cmp-long v1, v9, v12

    if-nez v1, :cond_5c

    const/16 v1, 0x28

    .line 99
    :goto_11
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    if-ge v1, v4, :cond_5b

    .line 100
    aget-byte v4, v3, v1

    if-nez v4, :cond_59

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_59

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v3, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_59

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v3, v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_5a

    .line 101
    array-length v4, v3

    invoke-static {v3, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 102
    new-instance v3, Landroid/util/Pair;

    const-string v4, "video/wvc1"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_59
    const/16 v5, 0xf

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_5b
    const-string v0, "Failed to find FourCC VC1 initialization data"

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5c
    const/4 v1, 0x0

    const-string v3, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 104
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    move-object v1, v3

    .line 106
    :goto_13
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 107
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto/16 :goto_f

    :goto_14
    move-object v5, v3

    const/4 v3, -0x1

    goto :goto_17

    :catch_0
    const-string v0, "Error parsing FourCC private data"

    const/4 v1, 0x0

    .line 108
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :pswitch_18
    const-string v1, "audio/mpeg"

    goto :goto_15

    :pswitch_19
    const-string v1, "audio/mpeg-L2"

    :goto_15
    move-object v4, v1

    const/16 v3, 0x1000

    const/4 v1, 0x0

    :goto_16
    const/4 v5, 0x0

    :goto_17
    move-object v12, v4

    const/4 v4, 0x1

    goto/16 :goto_22

    .line 109
    :pswitch_1a
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "Error parsing vorbis codec private"

    const/4 v4, 0x0

    .line 110
    :try_start_1
    aget-byte v5, v1, v4

    const/4 v4, 0x2

    if-ne v5, v4, :cond_62

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 111
    :goto_18
    aget-byte v9, v1, v4

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_5d

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_5d
    add-int/lit8 v9, v4, 0x1

    .line 112
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    add-int/2addr v5, v4

    const/4 v4, 0x0

    .line 113
    :goto_19
    aget-byte v11, v1, v9

    and-int/2addr v11, v10

    if-ne v11, v10, :cond_5e

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_5e
    add-int/lit8 v11, v9, 0x1

    .line 114
    aget-byte v9, v1, v9

    and-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 115
    aget-byte v9, v1, v11

    const/4 v10, 0x1

    if-ne v9, v10, :cond_61

    .line 116
    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 117
    invoke-static {v1, v11, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v5

    .line 118
    aget-byte v5, v1, v11

    if-ne v5, v8, :cond_60

    add-int/2addr v11, v4

    .line 119
    aget-byte v4, v1, v11

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5f

    .line 120
    array-length v4, v1

    sub-int/2addr v4, v11

    new-array v4, v4, [B

    .line 121
    array-length v5, v1

    sub-int/2addr v5, v11

    const/4 v10, 0x0

    invoke-static {v1, v11, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x2000

    const-string v4, "audio/vorbis"

    goto :goto_1b

    :cond_5f
    const/4 v0, 0x0

    .line 125
    :try_start_2
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_60
    const/4 v0, 0x0

    .line 126
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_61
    const/4 v0, 0x0

    .line 127
    :try_start_3
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v0, 0x0

    goto :goto_1a

    :cond_62
    const/4 v0, 0x0

    .line 128
    :try_start_4
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    :catch_2
    :goto_1a
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 130
    :pswitch_1b
    new-instance v1, Lcom/shabakaty/downloader/yn2$d;

    invoke-direct {v1}, Lcom/shabakaty/downloader/yn2$d;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    const-string v4, "audio/true-hd"

    const/4 v1, 0x0

    const/4 v3, -0x1

    :goto_1b
    move-object v10, v4

    const/4 v4, 0x1

    goto/16 :goto_21

    .line 131
    :pswitch_1c
    new-instance v1, Lcom/shabakaty/downloader/ka3;

    iget-object v3, v0, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/yn2$c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    .line 132
    :try_start_5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->l()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_63

    goto :goto_1c

    :cond_63
    const v5, 0xfffe

    if-ne v3, v5, :cond_64

    const/16 v3, 0x18

    .line 133
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 134
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v13

    .line 135
    sget-object v3, Lcom/shabakaty/downloader/yn2;->e0:Ljava/util/UUID;

    .line 136
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    cmp-long v5, v13, v18

    if-nez v5, :cond_64

    .line 137
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->m()J

    move-result-wide v13

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v18
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    cmp-long v1, v13, v18

    if-nez v1, :cond_64

    :goto_1c
    const/4 v1, 0x1

    goto :goto_1d

    :cond_64
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_66

    .line 138
    iget v1, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    invoke-static {v1}, Lcom/shabakaty/downloader/sy4;->w(I)I

    move-result v5

    if-nez v5, :cond_65

    .line 139
    iget v1, v0, Lcom/shabakaty/downloader/yn2$c;->P:I

    const/16 v3, 0x4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported PCM bit depth: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_65
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_23

    :cond_66
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    .line 141
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    const/4 v1, 0x0

    goto :goto_20

    :catch_3
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    .line 143
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :pswitch_1d
    const/4 v4, 0x1

    .line 144
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->k:[B

    if-nez v1, :cond_67

    const/4 v1, 0x0

    goto :goto_1f

    :cond_67
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1f
    const-string v10, "video/mp4v-es"

    :goto_20
    const/4 v3, -0x1

    :goto_21
    move-object v12, v10

    const/4 v5, 0x0

    :goto_22
    move-object v9, v5

    const/4 v5, -0x1

    move/from16 v24, v3

    move-object v3, v1

    move/from16 v1, v24

    .line 145
    :goto_23
    iget-object v10, v0, Lcom/shabakaty/downloader/yn2$c;->N:[B

    if-eqz v10, :cond_68

    .line 146
    new-instance v11, Lcom/shabakaty/downloader/ka3;

    invoke-direct {v11, v10}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    .line 147
    invoke-static {v11}, Lcom/shabakaty/downloader/yu0;->c(Lcom/shabakaty/downloader/ka3;)Lcom/shabakaty/downloader/yu0;

    move-result-object v10

    if-eqz v10, :cond_68

    .line 148
    iget-object v9, v10, Lcom/shabakaty/downloader/yu0;->d:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v12, "video/dolby-vision"

    .line 149
    :cond_68
    iget-boolean v10, v0, Lcom/shabakaty/downloader/yn2$c;->V:Z

    const/4 v11, 0x0

    or-int/2addr v10, v11

    .line 150
    iget-boolean v11, v0, Lcom/shabakaty/downloader/yn2$c;->U:Z

    if-eqz v11, :cond_69

    const/4 v11, 0x2

    goto :goto_24

    :cond_69
    const/4 v11, 0x0

    :goto_24
    or-int/2addr v10, v11

    .line 151
    new-instance v11, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v11}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 152
    invoke-static {v12}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6a

    .line 153
    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->O:I

    .line 154
    iput v8, v11, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 155
    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->Q:I

    .line 156
    iput v8, v11, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 157
    iput v5, v11, Lcom/shabakaty/downloader/wh1$b;->z:I

    goto/16 :goto_2d

    .line 158
    :cond_6a
    invoke-static {v12}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 159
    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->q:I

    if-nez v4, :cond_6d

    .line 160
    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->o:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6b

    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->m:I

    :cond_6b
    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->o:I

    .line 161
    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->p:I

    if-ne v4, v5, :cond_6c

    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->n:I

    :cond_6c
    iput v4, v0, Lcom/shabakaty/downloader/yn2$c;->p:I

    goto :goto_25

    :cond_6d
    const/4 v5, -0x1

    :goto_25
    const/high16 v4, -0x40800000    # -1.0f

    .line 162
    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->o:I

    if-eq v8, v5, :cond_6e

    iget v13, v0, Lcom/shabakaty/downloader/yn2$c;->p:I

    if-eq v13, v5, :cond_6e

    .line 163
    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->n:I

    mul-int v4, v4, v8

    int-to-float v4, v4

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->m:I

    mul-int v8, v8, v13

    int-to-float v8, v8

    div-float/2addr v4, v8

    .line 164
    :cond_6e
    iget-boolean v8, v0, Lcom/shabakaty/downloader/yn2$c;->x:Z

    if-eqz v8, :cond_71

    .line 165
    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->D:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->E:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->F:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->G:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->H:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->I:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->J:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->K:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->L:F

    cmpl-float v8, v8, v13

    if-eqz v8, :cond_70

    iget v8, v0, Lcom/shabakaty/downloader/yn2$c;->M:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_6f

    goto/16 :goto_26

    :cond_6f
    const/16 v8, 0x19

    new-array v8, v8, [B

    .line 166
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v14, 0x0

    .line 167
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 168
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->D:F

    const v15, 0x47435000    # 50000.0f

    mul-float v14, v14, v15

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->E:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->F:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->G:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->H:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->I:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->J:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->K:F

    mul-float v14, v14, v15

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->L:F

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->M:F

    add-float v14, v14, v16

    float-to-int v14, v14

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->B:I

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->C:I

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_27

    :cond_70
    :goto_26
    const/4 v8, 0x0

    .line 180
    :goto_27
    new-instance v13, Lcom/shabakaty/downloader/v50;

    iget v14, v0, Lcom/shabakaty/downloader/yn2$c;->y:I

    iget v15, v0, Lcom/shabakaty/downloader/yn2$c;->A:I

    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->z:I

    invoke-direct {v13, v14, v15, v5, v8}, Lcom/shabakaty/downloader/v50;-><init>(III[B)V

    goto :goto_28

    :cond_71
    const/4 v13, 0x0

    .line 181
    :goto_28
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2$c;->a:Ljava/lang/String;

    if-eqz v5, :cond_72

    .line 182
    sget-object v8, Lcom/shabakaty/downloader/yn2;->f0:Ljava/util/Map;

    .line 183
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 184
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2$c;->a:Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v16, v5

    goto :goto_29

    :cond_72
    const/16 v16, -0x1

    .line 185
    :goto_29
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->r:I

    if-nez v5, :cond_77

    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->s:F

    const/4 v8, 0x0

    .line 186
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_77

    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->t:F

    .line 187
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_77

    .line 188
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->u:F

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_73

    const/4 v8, 0x0

    goto :goto_2b

    .line 189
    :cond_73
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->t:F

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_74

    const/16 v8, 0x5a

    goto :goto_2b

    .line 190
    :cond_74
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->t:F

    const/high16 v8, -0x3ccc0000    # -180.0f

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_76

    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->t:F

    const/high16 v8, 0x43340000    # 180.0f

    .line 191
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_75

    goto :goto_2a

    .line 192
    :cond_75
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->t:F

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_77

    const/16 v8, 0x10e

    goto :goto_2b

    :cond_76
    :goto_2a
    const/16 v8, 0xb4

    goto :goto_2b

    :cond_77
    move/from16 v8, v16

    .line 193
    :goto_2b
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->m:I

    .line 194
    iput v5, v11, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 195
    iget v5, v0, Lcom/shabakaty/downloader/yn2$c;->n:I

    .line 196
    iput v5, v11, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 197
    iput v4, v11, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 198
    iput v8, v11, Lcom/shabakaty/downloader/wh1$b;->s:I

    .line 199
    iget-object v4, v0, Lcom/shabakaty/downloader/yn2$c;->v:[B

    .line 200
    iput-object v4, v11, Lcom/shabakaty/downloader/wh1$b;->u:[B

    .line 201
    iget v4, v0, Lcom/shabakaty/downloader/yn2$c;->w:I

    .line 202
    iput v4, v11, Lcom/shabakaty/downloader/wh1$b;->v:I

    .line 203
    iput-object v13, v11, Lcom/shabakaty/downloader/wh1$b;->w:Lcom/shabakaty/downloader/v50;

    const/4 v4, 0x2

    goto :goto_2d

    :cond_78
    const-string v4, "application/x-subrip"

    .line 204
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "text/x-ssa"

    .line 205
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/vobsub"

    .line 206
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/pgs"

    .line 207
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string v4, "application/dvbsubs"

    .line 208
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    goto :goto_2c

    :cond_79
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    .line 209
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_7a
    :goto_2c
    const/4 v4, 0x3

    .line 210
    :goto_2d
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2$c;->a:Ljava/lang/String;

    if-eqz v5, :cond_7b

    .line 211
    sget-object v8, Lcom/shabakaty/downloader/yn2;->f0:Ljava/util/Map;

    .line 212
    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 213
    iget-object v5, v0, Lcom/shabakaty/downloader/yn2$c;->a:Ljava/lang/String;

    .line 214
    iput-object v5, v11, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 215
    :cond_7b
    invoke-virtual {v11, v6}, Lcom/shabakaty/downloader/wh1$b;->b(I)Lcom/shabakaty/downloader/wh1$b;

    .line 216
    iput-object v12, v11, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 217
    iput v1, v11, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 218
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->W:Ljava/lang/String;

    .line 219
    iput-object v1, v11, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 220
    iput v10, v11, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 221
    iput-object v3, v11, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 222
    iput-object v9, v11, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 223
    iget-object v1, v0, Lcom/shabakaty/downloader/yn2$c;->l:Lcom/shabakaty/downloader/o01;

    .line 224
    iput-object v1, v11, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 225
    invoke-virtual {v11}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v1

    .line 226
    iget v3, v0, Lcom/shabakaty/downloader/yn2$c;->c:I

    invoke-interface {v2, v3, v4}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    .line 227
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 228
    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    iget v2, v0, Lcom/shabakaty/downloader/yn2$c;->c:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7c
    const/4 v1, 0x0

    .line 229
    iput-object v1, v7, Lcom/shabakaty/downloader/yn2;->u:Lcom/shabakaty/downloader/yn2$c;

    goto :goto_30

    :cond_7d
    move-object v1, v5

    const-string v0, "CodecId is missing in TrackEntry element"

    .line 230
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 231
    :cond_7e
    iget v0, v7, Lcom/shabakaty/downloader/yn2;->G:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7f

    return-void

    :cond_7f
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 232
    :goto_2e
    iget v1, v7, Lcom/shabakaty/downloader/yn2;->K:I

    if-ge v5, v1, :cond_80

    .line 233
    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->L:[I

    aget v1, v1, v5

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 234
    :cond_80
    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->c:Landroid/util/SparseArray;

    iget v2, v7, Lcom/shabakaty/downloader/yn2;->M:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/shabakaty/downloader/yn2$c;

    .line 235
    iget-object v1, v8, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    .line 236
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    .line 237
    :goto_2f
    iget v1, v7, Lcom/shabakaty/downloader/yn2;->K:I

    if-ge v9, v1, :cond_82

    .line 238
    iget-wide v1, v7, Lcom/shabakaty/downloader/yn2;->H:J

    iget v3, v8, Lcom/shabakaty/downloader/yn2$c;->e:I

    mul-int v3, v3, v9

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v2, v1, v3

    .line 239
    iget v1, v7, Lcom/shabakaty/downloader/yn2;->O:I

    if-nez v9, :cond_81

    .line 240
    iget-boolean v4, v7, Lcom/shabakaty/downloader/yn2;->Q:Z

    if-nez v4, :cond_81

    or-int/lit8 v1, v1, 0x1

    :cond_81
    move v4, v1

    .line 241
    iget-object v1, v7, Lcom/shabakaty/downloader/yn2;->L:[I

    aget v5, v1, v9

    sub-int v10, v0, v5

    move-object/from16 v0, p0

    move-object v1, v8

    move v6, v10

    .line 242
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/yn2;->e(Lcom/shabakaty/downloader/yn2$c;JIII)V

    add-int/lit8 v9, v9, 0x1

    move v0, v10

    goto :goto_2f

    :cond_82
    const/4 v0, 0x0

    .line 243
    iput v0, v7, Lcom/shabakaty/downloader/yn2;->G:I

    :cond_83
    :goto_30
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1f
        -0x7ce7f3b0 -> :sswitch_1e
        -0x76567dc0 -> :sswitch_1d
        -0x6a615338 -> :sswitch_1c
        -0x672350af -> :sswitch_1b
        -0x585f4fce -> :sswitch_1a
        -0x585f4fcd -> :sswitch_19
        -0x51dc40b2 -> :sswitch_18
        -0x37a9c464 -> :sswitch_17
        -0x2016c535 -> :sswitch_16
        -0x2016c4e5 -> :sswitch_15
        -0x19552dbd -> :sswitch_14
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_12
        0x3c02353 -> :sswitch_11
        0x3c030c5 -> :sswitch_10
        0x4e81333 -> :sswitch_f
        0x4e86155 -> :sswitch_e
        0x4e86156 -> :sswitch_d
        0x5e8da3e -> :sswitch_c
        0x1a8350d6 -> :sswitch_b
        0x2056f406 -> :sswitch_a
        0x25e26ee2 -> :sswitch_9
        0x2b45174d -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_3f
        -0x7ce7f3b0 -> :sswitch_3e
        -0x76567dc0 -> :sswitch_3d
        -0x6a615338 -> :sswitch_3c
        -0x672350af -> :sswitch_3b
        -0x585f4fce -> :sswitch_3a
        -0x585f4fcd -> :sswitch_39
        -0x51dc40b2 -> :sswitch_38
        -0x37a9c464 -> :sswitch_37
        -0x2016c535 -> :sswitch_36
        -0x2016c4e5 -> :sswitch_35
        -0x19552dbd -> :sswitch_34
        -0x1538b2ba -> :sswitch_33
        0x3c02325 -> :sswitch_32
        0x3c02353 -> :sswitch_31
        0x3c030c5 -> :sswitch_30
        0x4e81333 -> :sswitch_2f
        0x4e86155 -> :sswitch_2e
        0x4e86156 -> :sswitch_2d
        0x5e8da3e -> :sswitch_2c
        0x1a8350d6 -> :sswitch_2b
        0x2056f406 -> :sswitch_2a
        0x25e26ee2 -> :sswitch_29
        0x2b45174d -> :sswitch_28
        0x2b453ce4 -> :sswitch_27
        0x2c0618eb -> :sswitch_26
        0x32fdf009 -> :sswitch_25
        0x54c61e47 -> :sswitch_24
        0x6bd6c624 -> :sswitch_23
        0x7446132a -> :sswitch_22
        0x7446b0a6 -> :sswitch_21
        0x744ad97d -> :sswitch_20
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_13
        :pswitch_f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final l(Lcom/shabakaty/downloader/o91;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/ka3;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ka3;->b(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 8
    iget v0, v0, Lcom/shabakaty/downloader/ka3;->c:I

    sub-int v2, p2, v0

    .line 9
    invoke-interface {p1, v1, v0, v2}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ka3;->D(I)V

    return-void
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/yn2;->T:I

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn2;->U:Z

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn2;->V:Z

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn2;->W:Z

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/yn2;->X:I

    .line 8
    iput-byte v0, p0, Lcom/shabakaty/downloader/yn2;->Y:B

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn2;->Z:Z

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ka3;->A(I)V

    return-void
.end method

.method public final n(J)J
    .locals 6

    .line 1
    iget-wide v2, p0, Lcom/shabakaty/downloader/yn2;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    .line 3
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1
.end method

.method public final o(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/yn2$c;I)I
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/yn2;->b0:[B

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/yn2;->p(Lcom/shabakaty/downloader/o91;[BI)V

    .line 3
    iget p1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn2;->m()V

    return p1

    .line 5
    :cond_0
    iget-object v0, p2, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/yn2;->d0:[B

    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/yn2;->p(Lcom/shabakaty/downloader/o91;[BI)V

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn2;->m()V

    return p1

    .line 9
    :cond_1
    iget-object v0, p2, Lcom/shabakaty/downloader/yn2$c;->X:Lcom/shabakaty/downloader/fp4;

    .line 10
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yn2;->U:Z

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_11

    .line 11
    iget-boolean v1, p2, Lcom/shabakaty/downloader/yn2$c;->h:Z

    if-eqz v1, :cond_e

    .line 12
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->O:I

    const v7, -0x40000001    # -1.9999999f

    and-int/2addr v1, v7

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->O:I

    .line 13
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yn2;->V:Z

    const/16 v7, 0x80

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 16
    invoke-interface {p1, v1, v6, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 19
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 20
    aget-byte v8, v1, v6

    and-int/2addr v8, v7

    if-eq v8, v7, :cond_2

    .line 21
    aget-byte v1, v1, v6

    iput-byte v1, p0, Lcom/shabakaty/downloader/yn2;->Y:B

    .line 22
    iput-boolean v5, p0, Lcom/shabakaty/downloader/yn2;->V:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const-string p2, "Extension bit is set in signal byte"

    .line 23
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p1

    throw p1

    .line 24
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/shabakaty/downloader/yn2;->Y:B

    and-int/lit8 v8, v1, 0x1

    if-ne v8, v5, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_f

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 25
    :goto_2
    iget v8, p0, Lcom/shabakaty/downloader/yn2;->O:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, p0, Lcom/shabakaty/downloader/yn2;->O:I

    .line 26
    iget-boolean v8, p0, Lcom/shabakaty/downloader/yn2;->Z:Z

    if-nez v8, :cond_7

    .line 27
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->l:Lcom/shabakaty/downloader/ka3;

    .line 28
    iget-object v8, v8, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 29
    invoke-interface {p1, v8, v6, v3}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 30
    iget v8, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 31
    iput-boolean v5, p0, Lcom/shabakaty/downloader/yn2;->Z:Z

    .line 32
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 33
    iget-object v9, v8, Lcom/shabakaty/downloader/ka3;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v7, v3

    int-to-byte v7, v7

    .line 34
    aput-byte v7, v9, v6

    .line 35
    invoke-virtual {v8, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 36
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v7, v5, v5}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    .line 37
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 38
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->l:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 39
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->l:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v7, v3, v5}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    .line 40
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    :cond_7
    if-eqz v1, :cond_f

    .line 41
    iget-boolean v1, p0, Lcom/shabakaty/downloader/yn2;->W:Z

    if-nez v1, :cond_8

    .line 42
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 43
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 44
    invoke-interface {p1, v1, v6, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 45
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 46
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 47
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->X:I

    .line 48
    iput-boolean v5, p0, Lcom/shabakaty/downloader/yn2;->W:Z

    .line 49
    :cond_8
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->X:I

    mul-int/lit8 v1, v1, 0x4

    .line 50
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7, v1}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 51
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 52
    iget-object v7, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 53
    invoke-interface {p1, v7, v6, v1}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 54
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 55
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->X:I

    div-int/2addr v1, v2

    add-int/2addr v1, v5

    int-to-short v1, v1

    mul-int/lit8 v7, v1, 0x6

    add-int/2addr v7, v2

    .line 56
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_9

    .line 57
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_a

    .line 58
    :cond_9
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    .line 59
    :cond_a
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 61
    :goto_4
    iget v9, p0, Lcom/shabakaty/downloader/yn2;->X:I

    if-ge v1, v9, :cond_c

    .line 62
    iget-object v9, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v9

    .line 63
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_b

    .line 64
    iget-object v10, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 65
    :cond_b
    iget-object v10, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    sub-int v8, v9, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v8, v9

    goto :goto_4

    .line 66
    :cond_c
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v8

    .line 67
    rem-int/2addr v9, v2

    if-ne v9, v5, :cond_d

    .line 68
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 69
    :cond_d
    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    :goto_6
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->m:Lcom/shabakaty/downloader/ka3;

    iget-object v8, p0, Lcom/shabakaty/downloader/yn2;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    .line 72
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->m:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v1, v7, v5}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    .line 73
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    goto :goto_7

    .line 74
    :cond_e
    iget-object v1, p2, Lcom/shabakaty/downloader/yn2$c;->i:[B

    if-eqz v1, :cond_f

    .line 75
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    array-length v8, v1

    .line 76
    iput-object v1, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 77
    iput v8, v7, Lcom/shabakaty/downloader/ka3;->c:I

    .line 78
    iput v6, v7, Lcom/shabakaty/downloader/ka3;->b:I

    .line 79
    :cond_f
    :goto_7
    iget v1, p2, Lcom/shabakaty/downloader/yn2$c;->f:I

    if-lez v1, :cond_10

    .line 80
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->O:I

    const/high16 v7, 0x10000000

    or-int/2addr v1, v7

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->O:I

    .line 81
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->n:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 82
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 83
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->g:Lcom/shabakaty/downloader/ka3;

    .line 84
    iget-object v7, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    shr-int/lit8 v8, p3, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 85
    aput-byte v8, v7, v6

    shr-int/lit8 v8, p3, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 86
    aput-byte v8, v7, v5

    shr-int/lit8 v8, p3, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 87
    aput-byte v8, v7, v2

    const/4 v8, 0x3

    and-int/lit16 v9, p3, 0xff

    int-to-byte v9, v9

    .line 88
    aput-byte v9, v7, v8

    .line 89
    invoke-interface {v0, v1, v4, v2}, Lcom/shabakaty/downloader/fp4;->c(Lcom/shabakaty/downloader/ka3;II)V

    .line 90
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 91
    :cond_10
    iput-boolean v5, p0, Lcom/shabakaty/downloader/yn2;->U:Z

    .line 92
    :cond_11
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    .line 93
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->c:I

    add-int/2addr p3, v1

    .line 94
    iget-object v1, p2, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p2, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 95
    :cond_12
    iget-object v1, p2, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    if-eqz v1, :cond_1a

    .line 96
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    .line 97
    iget v1, v1, Lcom/shabakaty/downloader/ka3;->c:I

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 98
    :goto_8
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 99
    iget-object v1, p2, Lcom/shabakaty/downloader/yn2$c;->T:Lcom/shabakaty/downloader/yn2$d;

    .line 100
    iget-boolean v2, v1, Lcom/shabakaty/downloader/yn2$d;->b:Z

    if-eqz v2, :cond_14

    goto :goto_c

    .line 101
    :cond_14
    iget-object v2, v1, Lcom/shabakaty/downloader/yn2$d;->a:[B

    const/16 v7, 0xa

    invoke-interface {p1, v2, v6, v7}, Lcom/shabakaty/downloader/o91;->s([BII)V

    .line 102
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->p()V

    .line 103
    iget-object v2, v1, Lcom/shabakaty/downloader/yn2$d;->a:[B

    .line 104
    aget-byte v7, v2, v4

    const/4 v8, -0x8

    if-ne v7, v8, :cond_18

    const/4 v7, 0x5

    aget-byte v7, v2, v7

    const/16 v8, 0x72

    if-ne v7, v8, :cond_18

    const/4 v7, 0x6

    aget-byte v7, v2, v7

    const/16 v8, 0x6f

    if-ne v7, v8, :cond_18

    const/4 v7, 0x7

    aget-byte v8, v2, v7

    and-int/lit16 v8, v8, 0xfe

    const/16 v9, 0xba

    if-eq v8, v9, :cond_15

    goto :goto_a

    .line 105
    :cond_15
    aget-byte v8, v2, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_16

    const/4 v8, 0x1

    goto :goto_9

    :cond_16
    const/4 v8, 0x0

    :goto_9
    const/16 v9, 0x28

    if-eqz v8, :cond_17

    const/16 v3, 0x9

    .line 106
    :cond_17
    aget-byte v2, v2, v3

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    shl-int v2, v9, v2

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_19

    goto :goto_c

    .line 107
    :cond_19
    iput-boolean v5, v1, Lcom/shabakaty/downloader/yn2$d;->b:Z

    .line 108
    :cond_1a
    :goto_c
    iget v1, p0, Lcom/shabakaty/downloader/yn2;->R:I

    if-ge v1, p3, :cond_1e

    sub-int v1, p3, v1

    .line 109
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/yn2;->q(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/fp4;I)I

    move-result v1

    .line 110
    iget v2, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 111
    iget v2, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/shabakaty/downloader/yn2;->S:I

    goto :goto_c

    .line 112
    :cond_1b
    :goto_d
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->f:Lcom/shabakaty/downloader/ka3;

    .line 113
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 114
    aput-byte v6, v1, v6

    .line 115
    aput-byte v6, v1, v5

    .line 116
    aput-byte v6, v1, v2

    .line 117
    iget v2, p2, Lcom/shabakaty/downloader/yn2$c;->Y:I

    rsub-int/lit8 v3, v2, 0x4

    .line 118
    :goto_e
    iget v5, p0, Lcom/shabakaty/downloader/yn2;->R:I

    if-ge v5, p3, :cond_1e

    .line 119
    iget v5, p0, Lcom/shabakaty/downloader/yn2;->T:I

    if-nez v5, :cond_1d

    .line 120
    iget-object v5, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v7, v3, v5

    sub-int v8, v2, v5

    .line 121
    invoke-interface {p1, v1, v7, v8}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    if-lez v5, :cond_1c

    .line 122
    iget-object v7, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    .line 123
    iget-object v8, v7, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v9, v7, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v8, v9, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v8, v7, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v8, v5

    iput v8, v7, Lcom/shabakaty/downloader/ka3;->b:I

    .line 125
    :cond_1c
    iget v5, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 126
    iget-object v5, p0, Lcom/shabakaty/downloader/yn2;->f:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 127
    iget-object v5, p0, Lcom/shabakaty/downloader/yn2;->f:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v5

    iput v5, p0, Lcom/shabakaty/downloader/yn2;->T:I

    .line 128
    iget-object v5, p0, Lcom/shabakaty/downloader/yn2;->e:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 129
    iget-object v5, p0, Lcom/shabakaty/downloader/yn2;->e:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, v5, v4}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 130
    iget v5, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/shabakaty/downloader/yn2;->S:I

    goto :goto_e

    .line 131
    :cond_1d
    invoke-virtual {p0, p1, v0, v5}, Lcom/shabakaty/downloader/yn2;->q(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/fp4;I)I

    move-result v5

    .line 132
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->R:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->R:I

    .line 133
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 134
    iget v7, p0, Lcom/shabakaty/downloader/yn2;->T:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/shabakaty/downloader/yn2;->T:I

    goto :goto_e

    .line 135
    :cond_1e
    iget-object p1, p2, Lcom/shabakaty/downloader/yn2$c;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 136
    iget-object p1, p0, Lcom/shabakaty/downloader/yn2;->h:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 137
    iget-object p1, p0, Lcom/shabakaty/downloader/yn2;->h:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v0, p1, v4}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 138
    iget p1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 139
    :cond_1f
    iget p1, p0, Lcom/shabakaty/downloader/yn2;->S:I

    .line 140
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn2;->m()V

    return p1
.end method

.method public final p(Lcom/shabakaty/downloader/o91;[BI)V
    .locals 5

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 3
    iget-object v2, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ka3;->B([B)V

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 8
    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/yn2;->k:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->D(I)V

    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/fp4;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/yn2;->j:Lcom/shabakaty/downloader/ka3;

    invoke-interface {p2, p3, p1}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result p1

    :goto_0
    return p1
.end method
