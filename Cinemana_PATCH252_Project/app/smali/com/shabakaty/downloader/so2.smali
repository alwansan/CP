.class public abstract Lcom/shabakaty/downloader/so2;
.super Lcom/shabakaty/downloader/bk;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/so2$a;
    }
.end annotation


# static fields
.field public static final X0:[B


# instance fields
.field public A0:Z

.field public B0:Z

.field public final C:Lcom/shabakaty/downloader/oo2$b;

.field public C0:Z

.field public final D:Lcom/shabakaty/downloader/uo2;

.field public D0:I

.field public final E:Z

.field public E0:I

.field public final F:F

.field public F0:I

.field public final G:Lcom/shabakaty/downloader/bn0;

.field public G0:Z

.field public final H:Lcom/shabakaty/downloader/bn0;

.field public H0:Z

.field public final I:Lcom/shabakaty/downloader/bn0;

.field public I0:Z

.field public final J:Lcom/shabakaty/downloader/kl;

.field public J0:J

.field public final K:Lcom/shabakaty/downloader/mn4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/mn4<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field

.field public K0:J

.field public final L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L0:Z

.field public final M:Landroid/media/MediaCodec$BufferInfo;

.field public M0:Z

.field public final N:[J

.field public N0:Z

.field public final O:[J

.field public O0:Z

.field public final P:[J

.field public P0:Z

.field public Q:Lcom/shabakaty/downloader/wh1;

.field public Q0:Z

.field public R:Lcom/shabakaty/downloader/wh1;

.field public R0:Z

.field public S:Lcom/shabakaty/downloader/p01;

.field public S0:Lcom/shabakaty/downloader/i71;

.field public T:Lcom/shabakaty/downloader/p01;

.field public T0:Lcom/shabakaty/downloader/zm0;

.field public U:Landroid/media/MediaCrypto;

.field public U0:J

.field public V:Z

.field public V0:J

.field public W:J

.field public W0:I

.field public X:F

.field public Y:F

.field public Z:Lcom/shabakaty/downloader/oo2;

.field public a0:Lcom/shabakaty/downloader/wh1;

.field public b0:Landroid/media/MediaFormat;

.field public c0:Z

.field public d0:F

.field public e0:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/ro2;",
            ">;"
        }
    .end annotation
.end field

.field public f0:Lcom/shabakaty/downloader/so2$a;

.field public g0:Lcom/shabakaty/downloader/ro2;

.field public h0:I

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Lcom/shabakaty/downloader/ip;

.field public t0:J

.field public u0:I

.field public v0:I

.field public w0:Ljava/nio/ByteBuffer;

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/so2;->X0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/oo2$b;Lcom/shabakaty/downloader/uo2;ZF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/bk;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/so2;->C:Lcom/shabakaty/downloader/oo2$b;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->D:Lcom/shabakaty/downloader/uo2;

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/so2;->E:Z

    .line 6
    iput p5, p0, Lcom/shabakaty/downloader/so2;->F:F

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/bn0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->G:Lcom/shabakaty/downloader/bn0;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/bn0;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/bn0;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/bn0;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/kl;

    invoke-direct {p1}, Lcom/shabakaty/downloader/kl;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/mn4;

    const/16 p4, 0xa

    .line 13
    invoke-direct {p3, p4}, Lcom/shabakaty/downloader/mn4;-><init>(I)V

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    .line 16
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    iput p3, p0, Lcom/shabakaty/downloader/so2;->X:F

    .line 18
    iput p3, p0, Lcom/shabakaty/downloader/so2;->Y:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->W:J

    new-array p3, p4, [J

    .line 20
    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->N:[J

    new-array p3, p4, [J

    .line 21
    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->O:[J

    new-array p3, p4, [J

    .line 22
    iput-object p3, p0, Lcom/shabakaty/downloader/so2;->P:[J

    .line 23
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->U0:J

    .line 24
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->V0:J

    .line 25
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/bn0;->J(I)V

    .line 26
    iget-object p1, p1, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 27
    iput p1, p0, Lcom/shabakaty/downloader/so2;->d0:F

    .line 28
    iput p2, p0, Lcom/shabakaty/downloader/so2;->h0:I

    .line 29
    iput p2, p0, Lcom/shabakaty/downloader/so2;->D0:I

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/shabakaty/downloader/so2;->u0:I

    .line 31
    iput p1, p0, Lcom/shabakaty/downloader/so2;->v0:I

    .line 32
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->t0:J

    .line 33
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->J0:J

    .line 34
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->K0:J

    .line 35
    iput p2, p0, Lcom/shabakaty/downloader/so2;->E0:I

    .line 36
    iput p2, p0, Lcom/shabakaty/downloader/so2;->F0:I

    return-void
.end method

.method public static z0(Lcom/shabakaty/downloader/wh1;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    if-eqz p0, :cond_1

    const-class v0, Lcom/shabakaty/downloader/tl1;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final A0(Lcom/shabakaty/downloader/wh1;)Z
    .locals 4

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/bk;->v:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/so2;->Y:F

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/bk;->x:[Lcom/shabakaty/downloader/wh1;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, p1, v2}, Lcom/shabakaty/downloader/so2;->V(FLcom/shabakaty/downloader/wh1;[Lcom/shabakaty/downloader/wh1;)F

    move-result p1

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/so2;->d0:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->N()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/so2;->F:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 11
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 12
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v2, v0}, Lcom/shabakaty/downloader/oo2;->d(Landroid/os/Bundle;)V

    .line 14
    iput p1, p0, Lcom/shabakaty/downloader/so2;->d0:F

    :cond_6
    :goto_1
    return v1
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->U0:J

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->V0:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/so2;->W0:I

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->S()Z

    return-void
.end method

.method public final B0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/so2;->X(Lcom/shabakaty/downloader/p01;)Lcom/shabakaty/downloader/tl1;

    move-result-object v2

    iget-object v2, v2, Lcom/shabakaty/downloader/tl1;->s:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/so2;->E0:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    return-void

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/16 v3, 0x1776

    .line 6
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 7
    throw v0
.end method

.method public final C0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/mn4;->k(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/wh1;

    if-nez p1, :cond_1

    .line 2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/so2;->c0:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget p2, p1, Lcom/shabakaty/downloader/mn4;->d:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mn4;->l()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    .line 6
    move-object p1, p2

    check-cast p1, Lcom/shabakaty/downloader/wh1;

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    monitor-exit p1

    throw p2

    :cond_1
    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    .line 9
    iget-boolean p1, p0, Lcom/shabakaty/downloader/so2;->c0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->b0:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/so2;->h0(Lcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V

    .line 11
    iput-boolean p2, p0, Lcom/shabakaty/downloader/so2;->c0:Z

    :cond_4
    return-void
.end method

.method public D(JZ)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/so2;->L0:Z

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/so2;->M0:Z

    .line 3
    iput-boolean p1, p0, Lcom/shabakaty/downloader/so2;->O0:Z

    .line 4
    iget-boolean p2, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/kl;->H()V

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 7
    iput-boolean p1, p0, Lcom/shabakaty/downloader/so2;->A0:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->S()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->b0()V

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget p3, p2, Lcom/shabakaty/downloader/mn4;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const/4 p2, 0x1

    if-lez p3, :cond_2

    .line 13
    iput-boolean p2, p0, Lcom/shabakaty/downloader/so2;->N0:Z

    .line 14
    :cond_2
    iget-object p3, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/mn4;->b()V

    .line 15
    iget p3, p0, Lcom/shabakaty/downloader/so2;->W0:I

    if-eqz p3, :cond_3

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->O:[J

    add-int/lit8 v1, p3, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/shabakaty/downloader/so2;->V0:J

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->N:[J

    sub-int/2addr p3, p2

    aget-wide p2, v0, p3

    iput-wide p2, p0, Lcom/shabakaty/downloader/so2;->U0:J

    .line 18
    iput p1, p0, Lcom/shabakaty/downloader/so2;->W0:I

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p2

    throw p1
.end method

.method public H([Lcom/shabakaty/downloader/wh1;JJ)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/so2;->V0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/so2;->U0:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/so2;->U0:J

    .line 4
    iput-wide p4, p0, Lcom/shabakaty/downloader/so2;->V0:J

    goto :goto_2

    .line 5
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/so2;->W0:I

    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->O:[J

    array-length v2, v1

    if-ne v0, v2, :cond_2

    sub-int/2addr v0, p1

    .line 6
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/so2;->W0:I

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->N:[J

    iget v1, p0, Lcom/shabakaty/downloader/so2;->W0:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, v0, v2

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->O:[J

    add-int/lit8 p3, v1, -0x1

    aput-wide p4, p2, p3

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->P:[J

    sub-int/2addr v1, p1

    iget-wide p3, p0, Lcom/shabakaty/downloader/so2;->J0:J

    aput-wide p3, p2, v1

    :goto_2
    return-void
.end method

.method public final J(JJ)Z
    .locals 18

    move-object/from16 v15, p0

    .line 1
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->M0:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kl;->N()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    .line 3
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    iget-object v6, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/shabakaty/downloader/so2;->v0:I

    const/4 v8, 0x0

    .line 4
    iget v9, v0, Lcom/shabakaty/downloader/kl;->A:I

    .line 5
    iget-wide v10, v0, Lcom/shabakaty/downloader/bn0;->v:J

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v12

    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v16

    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    .line 8
    invoke-virtual/range {v0 .. v14}, Lcom/shabakaty/downloader/so2;->m0(JJLcom/shabakaty/downloader/oo2;Ljava/nio/ByteBuffer;IIIJZZLcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    .line 10
    iget-wide v0, v0, Lcom/shabakaty/downloader/kl;->z:J

    .line 11
    invoke-virtual {v15, v0, v1}, Lcom/shabakaty/downloader/so2;->i0(J)V

    .line 12
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kl;->H()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 13
    iget-boolean v1, v15, Lcom/shabakaty/downloader/so2;->L0:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v15, Lcom/shabakaty/downloader/so2;->M0:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 15
    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->A0:Z

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/kl;->M(Lcom/shabakaty/downloader/bn0;)Z

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 17
    iput-boolean v0, v15, Lcom/shabakaty/downloader/so2;->A0:Z

    .line 18
    :cond_3
    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->B0:Z

    if-eqz v2, :cond_5

    .line 19
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/kl;->N()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 20
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->M()V

    .line 21
    iput-boolean v0, v15, Lcom/shabakaty/downloader/so2;->B0:Z

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->b0()V

    .line 23
    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->z0:Z

    if-nez v2, :cond_5

    return v0

    .line 24
    :cond_5
    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->L0:Z

    xor-int/2addr v2, v1

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/bk;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object v2

    .line 26
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 27
    :cond_6
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 28
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v15, v2, v3, v0}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result v3

    const/4 v4, -0x5

    if-eq v3, v4, :cond_b

    const/4 v4, -0x4

    if-eq v3, v4, :cond_8

    const/4 v2, -0x3

    if-ne v3, v2, :cond_7

    goto :goto_1

    .line 29
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 30
    :cond_8
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 31
    iput-boolean v1, v15, Lcom/shabakaty/downloader/so2;->L0:Z

    goto :goto_1

    .line 32
    :cond_9
    iget-boolean v3, v15, Lcom/shabakaty/downloader/so2;->N0:Z

    if-eqz v3, :cond_a

    .line 33
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 34
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object v3, v15, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v15, v3, v4}, Lcom/shabakaty/downloader/so2;->h0(Lcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V

    .line 37
    iput-boolean v0, v15, Lcom/shabakaty/downloader/so2;->N0:Z

    .line 38
    :cond_a
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 39
    iget-object v3, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    iget-object v4, v15, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/kl;->M(Lcom/shabakaty/downloader/bn0;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 40
    iput-boolean v1, v15, Lcom/shabakaty/downloader/so2;->A0:Z

    goto :goto_1

    .line 41
    :cond_b
    invoke-virtual {v15, v2}, Lcom/shabakaty/downloader/so2;->g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;

    .line 42
    :goto_1
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/kl;->N()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 43
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 44
    :cond_c
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/kl;->N()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->L0:Z

    if-nez v2, :cond_e

    iget-boolean v2, v15, Lcom/shabakaty/downloader/so2;->B0:Z

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v14, 0x0

    goto :goto_3

    :cond_e
    :goto_2
    const/4 v14, 0x1

    :goto_3
    return v14
.end method

.method public abstract K(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;
.end method

.method public L(Ljava/lang/Throwable;Lcom/shabakaty/downloader/ro2;)Lcom/shabakaty/downloader/qo2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/qo2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/qo2;-><init>(Ljava/lang/Throwable;Lcom/shabakaty/downloader/ro2;)V

    return-object v0
.end method

.method public final M()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->B0:Z

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/kl;->H()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->I:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->A0:Z

    .line 5
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    return-void
.end method

.method public final N()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/so2;->E0:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->o0()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->b0()V

    :goto_0
    return-void
.end method

.method public final O()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lcom/shabakaty/downloader/so2;->E0:I

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->j0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->l0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->B0()V

    :goto_1
    return v1
.end method

.method public final P(JJ)Z
    .locals 19

    move-object/from16 v15, p0

    .line 1
    iget v0, v15, Lcom/shabakaty/downloader/so2;->v0:I

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_10

    .line 2
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->m0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->H0:Z

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/oo2;->h(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->l0()V

    .line 5
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->M0:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->o0()V

    :cond_1
    return v13

    .line 7
    :cond_2
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/oo2;->h(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_8

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 8
    iput-boolean v14, v15, Lcom/shabakaty/downloader/so2;->I0:Z

    .line 9
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oo2;->c()Landroid/media/MediaFormat;

    move-result-object v0

    .line 10
    iget v1, v15, Lcom/shabakaty/downloader/so2;->h0:I

    if-eqz v1, :cond_3

    const-string v1, "width"

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 13
    iput-boolean v14, v15, Lcom/shabakaty/downloader/so2;->q0:Z

    goto :goto_2

    .line 14
    :cond_3
    iget-boolean v1, v15, Lcom/shabakaty/downloader/so2;->o0:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    .line 15
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    :cond_4
    iput-object v0, v15, Lcom/shabakaty/downloader/so2;->b0:Landroid/media/MediaFormat;

    .line 17
    iput-boolean v14, v15, Lcom/shabakaty/downloader/so2;->c0:Z

    :goto_2
    return v14

    .line 18
    :cond_5
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->r0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->L0:Z

    if-nez v0, :cond_6

    iget v0, v15, Lcom/shabakaty/downloader/so2;->E0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 19
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->l0()V

    :cond_7
    return v13

    .line 20
    :cond_8
    iget-boolean v1, v15, Lcom/shabakaty/downloader/so2;->q0:Z

    if-eqz v1, :cond_9

    .line 21
    iput-boolean v13, v15, Lcom/shabakaty/downloader/so2;->q0:Z

    .line 22
    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v1, v0, v13}, Lcom/shabakaty/downloader/oo2;->j(IZ)V

    return v14

    .line 23
    :cond_9
    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_a

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->l0()V

    return v13

    .line 25
    :cond_a
    iput v0, v15, Lcom/shabakaty/downloader/so2;->v0:I

    .line 26
    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/oo2;->o(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    .line 27
    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    :cond_b
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->n0:Z

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_c

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    iget-wide v1, v15, Lcom/shabakaty/downloader/so2;->J0:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    .line 30
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 31
    :cond_c
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 32
    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_e

    .line 33
    iget-object v4, v15, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_d

    .line 34
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    .line 35
    :goto_4
    iput-boolean v0, v15, Lcom/shabakaty/downloader/so2;->x0:Z

    .line 36
    iget-wide v0, v15, Lcom/shabakaty/downloader/so2;->K0:J

    iget-object v2, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    const/4 v0, 0x1

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v15, Lcom/shabakaty/downloader/so2;->y0:Z

    .line 37
    invoke-virtual {v15, v2, v3}, Lcom/shabakaty/downloader/so2;->C0(J)V

    .line 38
    :cond_10
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->m0:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->H0:Z

    if-eqz v0, :cond_12

    .line 39
    :try_start_1
    iget-object v5, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget-object v6, v15, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/shabakaty/downloader/so2;->v0:I

    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/shabakaty/downloader/so2;->x0:Z

    iget-boolean v3, v15, Lcom/shabakaty/downloader/so2;->y0:Z

    iget-object v4, v15, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p3

    const/16 v18, 0x0

    move/from16 v13, v16

    const/16 v16, 0x1

    move-object/from16 v14, v17

    .line 40
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/shabakaty/downloader/so2;->m0(JJLcom/shabakaty/downloader/oo2;Ljava/nio/ByteBuffer;IIIJZZLcom/shabakaty/downloader/wh1;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    nop

    goto :goto_6

    :catch_2
    const/16 v18, 0x0

    .line 41
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->l0()V

    .line 42
    iget-boolean v0, v15, Lcom/shabakaty/downloader/so2;->M0:Z

    if-eqz v0, :cond_11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->o0()V

    :cond_11
    return v18

    :cond_12
    const/16 v16, 0x1

    const/16 v18, 0x0

    .line 44
    iget-object v5, v15, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget-object v6, v15, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/shabakaty/downloader/so2;->v0:I

    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/shabakaty/downloader/so2;->x0:Z

    iget-boolean v13, v15, Lcom/shabakaty/downloader/so2;->y0:Z

    iget-object v14, v15, Lcom/shabakaty/downloader/so2;->R:Lcom/shabakaty/downloader/wh1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 45
    invoke-virtual/range {v0 .. v14}, Lcom/shabakaty/downloader/so2;->m0(JJLcom/shabakaty/downloader/oo2;Ljava/nio/ByteBuffer;IIIJZZLcom/shabakaty/downloader/wh1;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_15

    .line 46
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/shabakaty/downloader/so2;->i0(J)V

    .line 47
    iget-object v0, v15, Lcom/shabakaty/downloader/so2;->M:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    const/4 v14, 0x1

    goto :goto_8

    :cond_13
    const/4 v14, 0x0

    :goto_8
    const/4 v0, -0x1

    .line 48
    iput v0, v15, Lcom/shabakaty/downloader/so2;->v0:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, v15, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    if-nez v14, :cond_14

    return v16

    .line 50
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->l0()V

    :cond_15
    return v18
.end method

.method public final Q()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget v2, p0, Lcom/shabakaty/downloader/so2;->E0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_24

    iget-boolean v2, p0, Lcom/shabakaty/downloader/so2;->L0:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget v2, p0, Lcom/shabakaty/downloader/so2;->u0:I

    if-gez v2, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/oo2;->f()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/so2;->u0:I

    if-gez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v4, v0}, Lcom/shabakaty/downloader/oo2;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 6
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/so2;->E0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 7
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->r0:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->H0:Z

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget v5, p0, Lcom/shabakaty/downloader/so2;->u0:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/shabakaty/downloader/oo2;->n(IIIJI)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->s0()V

    .line 11
    :goto_0
    iput v3, p0, Lcom/shabakaty/downloader/so2;->E0:I

    return v1

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->p0:Z

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->p0:Z

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/shabakaty/downloader/so2;->X0:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget v4, p0, Lcom/shabakaty/downloader/so2;->u0:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/oo2;->n(IIIJI)V

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->s0()V

    .line 17
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    return v2

    .line 18
    :cond_5
    iget v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x0

    .line 19
    :goto_1
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    iget-object v4, v4, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 20
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    iget-object v4, v4, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 21
    iget-object v5, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v5, v5, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iput v3, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object v4

    .line 25
    :try_start_0
    iget-object v5, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p0, v4, v5, v1}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result v5
    :try_end_0
    .catch Lcom/shabakaty/downloader/bn0$a; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->i()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 27
    iget-wide v6, p0, Lcom/shabakaty/downloader/so2;->J0:J

    iput-wide v6, p0, Lcom/shabakaty/downloader/so2;->K0:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v5, v6, :cond_b

    .line 28
    iget v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    if-ne v0, v3, :cond_a

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 30
    iput v2, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 31
    :cond_a
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/so2;->g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;

    return v2

    .line 32
    :cond_b
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 33
    iget v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    if-ne v0, v3, :cond_c

    .line 34
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 35
    iput v2, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 36
    :cond_c
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->L0:Z

    .line 37
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    if-nez v0, :cond_d

    .line 38
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->l0()V

    return v1

    .line 39
    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->r0:Z

    if-eqz v0, :cond_e

    goto :goto_2

    .line 40
    :cond_e
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->H0:Z

    .line 41
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget v4, p0, Lcom/shabakaty/downloader/so2;->u0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface/range {v3 .. v9}, Lcom/shabakaty/downloader/oo2;->n(IIIJI)V

    .line 42
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->s0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v1

    :catch_0
    move-exception v0

    .line 43
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 44
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/jp;->a(I)I

    move-result v3

    .line 45
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 46
    throw v0

    .line 47
    :cond_f
    iget-boolean v4, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ao;->G()Z

    move-result v4

    if-nez v4, :cond_11

    .line 48
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 49
    iget v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    if-ne v0, v3, :cond_10

    .line 50
    iput v2, p0, Lcom/shabakaty/downloader/so2;->D0:I

    :cond_10
    return v2

    .line 51
    :cond_11
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/bn0;->L()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 52
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v4, v4, Lcom/shabakaty/downloader/bn0;->s:Lcom/shabakaty/downloader/ug0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_12

    goto :goto_3

    .line 53
    :cond_12
    iget-object v5, v4, Lcom/shabakaty/downloader/ug0;->d:[I

    if-nez v5, :cond_13

    new-array v5, v2, [I

    .line 54
    iput-object v5, v4, Lcom/shabakaty/downloader/ug0;->d:[I

    .line 55
    iget-object v6, v4, Lcom/shabakaty/downloader/ug0;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v5, v6, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 56
    :cond_13
    iget-object v4, v4, Lcom/shabakaty/downloader/ug0;->d:[I

    aget v5, v4, v1

    add-int/2addr v5, v0

    aput v5, v4, v1

    .line 57
    :cond_14
    :goto_3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->i0:Z

    if-eqz v0, :cond_1a

    if-nez v3, :cond_1a

    .line 58
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/shabakaty/downloader/gw2;->a:[B

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v4, :cond_18

    .line 60
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x3

    if-ne v6, v9, :cond_15

    if-ne v8, v2, :cond_16

    .line 61
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit8 v10, v10, 0x1f

    const/4 v11, 0x7

    if-ne v10, v11, :cond_16

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    sub-int/2addr v5, v9

    .line 63
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_15
    if-nez v8, :cond_16

    add-int/lit8 v6, v6, 0x1

    :cond_16
    if-eqz v8, :cond_17

    const/4 v6, 0x0

    :cond_17
    move v5, v7

    goto :goto_4

    .line 67
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_19

    return v2

    .line 69
    :cond_19
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->i0:Z

    .line 70
    :cond_1a
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-wide v4, v0, Lcom/shabakaty/downloader/bn0;->v:J

    .line 71
    iget-object v6, p0, Lcom/shabakaty/downloader/so2;->s0:Lcom/shabakaty/downloader/ip;

    if-eqz v6, :cond_1f

    .line 72
    iget-object v7, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 73
    iget-wide v8, v6, Lcom/shabakaty/downloader/ip;->b:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_1b

    .line 74
    iput-wide v4, v6, Lcom/shabakaty/downloader/ip;->a:J

    .line 75
    :cond_1b
    iget-boolean v8, v6, Lcom/shabakaty/downloader/ip;->c:Z

    if-eqz v8, :cond_1c

    goto :goto_7

    .line 76
    :cond_1c
    iget-object v4, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    .line 77
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    const/4 v9, 0x4

    if-ge v5, v9, :cond_1d

    shl-int/lit8 v8, v8, 0x8

    .line 78
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 79
    :cond_1d
    invoke-static {v8}, Lcom/shabakaty/downloader/hv2;->d(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    .line 80
    iput-boolean v2, v6, Lcom/shabakaty/downloader/ip;->c:Z

    .line 81
    iput-wide v10, v6, Lcom/shabakaty/downloader/ip;->b:J

    .line 82
    iget-wide v4, v0, Lcom/shabakaty/downloader/bn0;->v:J

    iput-wide v4, v6, Lcom/shabakaty/downloader/ip;->a:J

    const-string v4, "C2Mp3TimestampTracker"

    const-string v5, "MPEG audio header is invalid."

    .line 83
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-wide v4, v0, Lcom/shabakaty/downloader/bn0;->v:J

    goto :goto_7

    .line 85
    :cond_1e
    iget v0, v7, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/shabakaty/downloader/ip;->a(J)J

    move-result-wide v7

    .line 86
    iget-wide v9, v6, Lcom/shabakaty/downloader/ip;->b:J

    int-to-long v4, v4

    add-long/2addr v9, v4

    iput-wide v9, v6, Lcom/shabakaty/downloader/ip;->b:J

    move-wide v4, v7

    .line 87
    :goto_7
    iget-wide v6, p0, Lcom/shabakaty/downloader/so2;->J0:J

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->s0:Lcom/shabakaty/downloader/ip;

    iget-object v8, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 88
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget v8, v8, Lcom/shabakaty/downloader/wh1;->Q:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/shabakaty/downloader/ip;->a(J)J

    move-result-wide v8

    .line 90
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/shabakaty/downloader/so2;->J0:J

    :cond_1f
    move-wide v12, v4

    .line 91
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_20
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->N0:Z

    if-eqz v0, :cond_21

    .line 94
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->K:Lcom/shabakaty/downloader/mn4;

    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v0, v12, v13, v4}, Lcom/shabakaty/downloader/mn4;->a(JLjava/lang/Object;)V

    .line 95
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->N0:Z

    .line 96
    :cond_21
    iget-wide v4, p0, Lcom/shabakaty/downloader/so2;->J0:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/so2;->J0:J

    .line 97
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bn0;->K()V

    .line 98
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ao;->D()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 99
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->Z(Lcom/shabakaty/downloader/bn0;)V

    .line 100
    :cond_22
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->k0(Lcom/shabakaty/downloader/bn0;)V

    if-eqz v3, :cond_23

    .line 101
    :try_start_2
    iget-object v8, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget v9, p0, Lcom/shabakaty/downloader/so2;->u0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v11, v0, Lcom/shabakaty/downloader/bn0;->s:Lcom/shabakaty/downloader/ug0;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/oo2;->g(IILcom/shabakaty/downloader/ug0;JI)V

    goto :goto_8

    .line 102
    :cond_23
    iget-object v8, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    iget v9, p0, Lcom/shabakaty/downloader/so2;->u0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    iget-object v0, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 104
    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/oo2;->n(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :goto_8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->s0()V

    .line 106
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    .line 107
    iput v1, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 108
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget v1, v0, Lcom/shabakaty/downloader/zm0;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/zm0;->c:I

    return v2

    :catch_1
    move-exception v0

    .line 109
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 110
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/shabakaty/downloader/jp;->a(I)I

    move-result v3

    .line 111
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 112
    throw v0

    :catch_2
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->d0(Ljava/lang/Exception;)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/so2;->n0(I)Z

    .line 115
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->R()V

    return v2

    :cond_24
    :goto_9
    return v1
.end method

.method public final R()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oo2;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->q0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->q0()V

    .line 3
    throw v0
.end method

.method public S()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->j0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->k0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->I0:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->l0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->H0:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->R()V

    return v1

    .line 4
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->o0()V

    const/4 v0, 0x1

    return v0
.end method

.method public final T(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ro2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->D:Lcom/shabakaty/downloader/uo2;

    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/so2;->W(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->D:Lcom/shabakaty/downloader/uo2;

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/so2;->W(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "Drm session requires secure decoder for "

    const-string v4, ", but no secure decoder available. Trying to proceed with "

    invoke-static {v3, v2, p1, v4, v1}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract V(FLcom/shabakaty/downloader/wh1;[Lcom/shabakaty/downloader/wh1;)F
.end method

.method public abstract W(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uo2;",
            "Lcom/shabakaty/downloader/wh1;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ro2;",
            ">;"
        }
    .end annotation
.end method

.method public final X(Lcom/shabakaty/downloader/p01;)Lcom/shabakaty/downloader/tl1;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/p01;->e()Lcom/shabakaty/downloader/g71;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/tl1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2a

    const-string v2, "Expecting FrameworkMediaCrypto but found: "

    invoke-static {v1, v2, p1}, Lcom/shabakaty/downloader/re;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/16 v1, 0x1771

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    check-cast p1, Lcom/shabakaty/downloader/tl1;

    return-object p1
.end method

.method public abstract Y(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Landroid/media/MediaCrypto;F)Lcom/shabakaty/downloader/oo2$a;
.end method

.method public Z(Lcom/shabakaty/downloader/bn0;)V
    .locals 0

    return-void
.end method


.method public final a(Lcom/shabakaty/downloader/wh1;)I
    .locals 2

    invoke-static {p1}, Lcom/shabakaty/cinemana/player/H26410SoftwareRenderer;->shouldUseSoftware(Lcom/shabakaty/downloader/wh1;)Z
    move-result v0

    if-eqz v0, :normalSupport

    const-string v0, "CinemanaDecoderPolicy"
    const-string v1, "MediaCodec declined a format handled by the selected FFmpeg software decoder"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1
    return v0

    :normalSupport
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->D:Lcom/shabakaty/downloader/uo2;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/so2;->y0(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;)I

    move-result p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/wo2$c; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    invoke-virtual {p0, v0, p1, v1}, Lcom/shabakaty/downloader/bk;->y(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;I)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    throw p1
.end method


.method public final a0(Lcom/shabakaty/downloader/ro2;Landroid/media/MediaCrypto;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    .line 2
    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x17

    if-ge v1, v4, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0

    .line 3
    :cond_0
    iget v5, v7, Lcom/shabakaty/downloader/so2;->Y:F

    iget-object v6, v7, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 4
    iget-object v8, v7, Lcom/shabakaty/downloader/bk;->x:[Lcom/shabakaty/downloader/wh1;

    .line 5
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v7, v5, v6, v8}, Lcom/shabakaty/downloader/so2;->V(FLcom/shabakaty/downloader/wh1;[Lcom/shabakaty/downloader/wh1;)F

    move-result v5

    .line 7
    :goto_0
    iget v6, v7, Lcom/shabakaty/downloader/so2;->F:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 8
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "createCodec:"

    if-eqz v9, :cond_2

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v8}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 10
    iget-object v8, v7, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    move-object/from16 v9, p2

    .line 11
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/shabakaty/downloader/so2;->Y(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Landroid/media/MediaCrypto;F)Lcom/shabakaty/downloader/oo2$a;

    move-result-object v8

    .line 12
    iget-boolean v9, v7, Lcom/shabakaty/downloader/so2;->P0:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_6

    if-lt v1, v4, :cond_6

    .line 13
    iget v9, v7, Lcom/shabakaty/downloader/bk;->r:I

    .line 14
    iget-boolean v15, v7, Lcom/shabakaty/downloader/so2;->Q0:Z

    iget-boolean v14, v7, Lcom/shabakaty/downloader/so2;->R0:Z

    .line 15
    new-instance v13, Lcom/shabakaty/downloader/vd;

    invoke-direct {v13, v9, v11}, Lcom/shabakaty/downloader/vd;-><init>(II)V

    new-instance v4, Lcom/shabakaty/downloader/vd;

    invoke-direct {v4, v9, v12}, Lcom/shabakaty/downloader/vd;-><init>(II)V

    .line 16
    iget-object v9, v8, Lcom/shabakaty/downloader/oo2$a;->a:Lcom/shabakaty/downloader/ro2;

    iget-object v9, v9, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/16 v20, 0x0

    .line 17
    :try_start_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v10, v12

    :goto_3
    invoke-static {v10}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 18
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    :try_start_1
    new-instance v10, Lcom/shabakaty/downloader/ud;

    .line 20
    invoke-interface {v13}, Lcom/shabakaty/downloader/sh4;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/HandlerThread;

    .line 21
    invoke-interface {v4}, Lcom/shabakaty/downloader/sh4;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/os/HandlerThread;

    const/16 v19, 0x0

    move-object v13, v10

    move v4, v14

    move-object v14, v9

    move/from16 v17, v15

    move-object v15, v12

    move/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Lcom/shabakaty/downloader/ud;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/shabakaty/downloader/ud$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    :try_start_2
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    .line 23
    iget-object v4, v8, Lcom/shabakaty/downloader/oo2$a;->b:Landroid/media/MediaFormat;

    iget-object v12, v8, Lcom/shabakaty/downloader/oo2$a;->c:Landroid/view/Surface;

    iget-object v13, v8, Lcom/shabakaty/downloader/oo2$a;->d:Landroid/media/MediaCrypto;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v4, v12, v13, v11}, Lcom/shabakaty/downloader/ud;->p(Lcom/shabakaty/downloader/ud;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v9, v20

    :goto_4
    if-nez v20, :cond_4

    if-eqz v9, :cond_5

    .line 24
    invoke-virtual {v9}, Landroid/media/MediaCodec;->release()V

    goto :goto_5

    .line 25
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/shabakaty/downloader/ud;->a()V

    .line 26
    :cond_5
    :goto_5
    throw v0

    .line 27
    :cond_6
    iget-object v4, v7, Lcom/shabakaty/downloader/so2;->C:Lcom/shabakaty/downloader/oo2$b;

    invoke-interface {v4, v8}, Lcom/shabakaty/downloader/oo2$b;->a(Lcom/shabakaty/downloader/oo2$a;)Lcom/shabakaty/downloader/oo2;

    move-result-object v10

    .line 28
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 29
    iput-object v10, v7, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    .line 30
    iput-object v0, v7, Lcom/shabakaty/downloader/so2;->g0:Lcom/shabakaty/downloader/ro2;

    .line 31
    iput v3, v7, Lcom/shabakaty/downloader/so2;->d0:F

    .line 32
    iget-object v3, v7, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    iput-object v3, v7, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    const-string v4, "OMX.Exynos.avc.dec.secure"

    const/16 v12, 0x19

    if-gt v1, v12, :cond_8

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v14, "SM-T585"

    .line 34
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "SM-A510"

    .line 35
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "SM-A520"

    .line 36
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "SM-J700"

    .line 37
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    const/4 v13, 0x2

    goto :goto_7

    :cond_8
    const/16 v13, 0x18

    if-ge v1, v13, :cond_b

    const-string v13, "OMX.Nvidia.h264.decode"

    .line 38
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    sget-object v13, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string v14, "flounder"

    .line 39
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "flounder_lte"

    .line 40
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "grouper"

    .line 41
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "tilapia"

    .line 42
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    const/4 v13, 0x1

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    .line 43
    :goto_7
    iput v13, v7, Lcom/shabakaty/downloader/so2;->h0:I

    .line 44
    iget-object v13, v7, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    const/16 v14, 0x15

    if-ge v1, v14, :cond_c

    .line 45
    iget-object v13, v13, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    .line 46
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 47
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    .line 48
    :goto_8
    iput-boolean v13, v7, Lcom/shabakaty/downloader/so2;->i0:Z

    const/16 v13, 0x13

    const/16 v15, 0x12

    if-lt v1, v15, :cond_f

    if-ne v1, v15, :cond_d

    const-string v11, "OMX.SEC.avc.dec"

    .line 49
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    const-string v11, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :cond_d
    if-ne v1, v13, :cond_e

    sget-object v11, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v3, "SM-G800"

    .line 50
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "OMX.Exynos.avc.dec"

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v3, 0x1

    .line 52
    :goto_a
    iput-boolean v3, v7, Lcom/shabakaty/downloader/so2;->j0:Z

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_10

    const-string v4, "c2.android.aac.decoder"

    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    .line 54
    :goto_b
    iput-boolean v4, v7, Lcom/shabakaty/downloader/so2;->k0:Z

    const/16 v4, 0x17

    if-gt v1, v4, :cond_11

    const-string v4, "OMX.google.vorbis.decoder"

    .line 55
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_11
    if-gt v1, v13, :cond_14

    sget-object v4, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string v11, "hb2000"

    .line 56
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "stvm8"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const-string v4, "OMX.amlogic.avc.decoder.awesome"

    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    .line 59
    :goto_c
    iput-boolean v4, v7, Lcom/shabakaty/downloader/so2;->l0:Z

    if-ne v1, v14, :cond_15

    const-string v4, "OMX.google.aac.decoder"

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    .line 61
    :goto_d
    iput-boolean v4, v7, Lcom/shabakaty/downloader/so2;->m0:Z

    if-ge v1, v14, :cond_17

    const-string v4, "OMX.SEC.mp3.dec"

    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v11, "samsung"

    .line 63
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/shabakaty/downloader/sy4;->b:Ljava/lang/String;

    const-string v11, "baffin"

    .line 64
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "grand"

    .line 65
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "fortuna"

    .line 66
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "gprimelte"

    .line 67
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "j2y18lte"

    .line 68
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string v11, "ms01"

    .line 69
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    .line 70
    :goto_e
    iput-boolean v4, v7, Lcom/shabakaty/downloader/so2;->n0:Z

    .line 71
    iget-object v4, v7, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    if-gt v1, v15, :cond_18

    .line 72
    iget v4, v4, Lcom/shabakaty/downloader/wh1;->P:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_18

    const-string v4, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_f

    :cond_18
    const/4 v4, 0x0

    .line 74
    :goto_f
    iput-boolean v4, v7, Lcom/shabakaty/downloader/so2;->o0:Z

    .line 75
    iget-object v4, v0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    if-gt v1, v12, :cond_19

    const-string v11, "OMX.rk.video_decoder.avc"

    .line 76
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    :cond_19
    const/16 v11, 0x11

    if-gt v1, v11, :cond_1a

    const-string v11, "OMX.allwinner.video.decoder.avc"

    .line 77
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    :cond_1a
    if-gt v1, v3, :cond_1b

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    sget-object v1, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v3, "Amazon"

    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v3, "AFTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lcom/shabakaty/downloader/ro2;->f:Z

    if-eqz v1, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    goto :goto_10

    :cond_1d
    const/4 v1, 0x0

    :goto_10
    if-nez v1, :cond_1f

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/so2;->U()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, v7, Lcom/shabakaty/downloader/so2;->r0:Z

    .line 82
    invoke-interface {v10}, Lcom/shabakaty/downloader/oo2;->b()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    .line 83
    iput-boolean v1, v7, Lcom/shabakaty/downloader/so2;->C0:Z

    .line 84
    iput v1, v7, Lcom/shabakaty/downloader/so2;->D0:I

    .line 85
    iget v1, v7, Lcom/shabakaty/downloader/so2;->h0:I

    if-eqz v1, :cond_20

    const/4 v11, 0x1

    goto :goto_13

    :cond_20
    const/4 v11, 0x0

    :goto_13
    iput-boolean v11, v7, Lcom/shabakaty/downloader/so2;->p0:Z

    .line 86
    :cond_21
    iget-object v0, v0, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const-string v1, "c2.android.mp3.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 87
    new-instance v0, Lcom/shabakaty/downloader/ip;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ip;-><init>()V

    iput-object v0, v7, Lcom/shabakaty/downloader/so2;->s0:Lcom/shabakaty/downloader/ip;

    .line 88
    :cond_22
    iget v0, v7, Lcom/shabakaty/downloader/bk;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    iput-wide v0, v7, Lcom/shabakaty/downloader/so2;->t0:J

    .line 90
    :cond_23
    iget-object v0, v7, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget v1, v0, Lcom/shabakaty/downloader/zm0;->a:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/shabakaty/downloader/zm0;->a:I

    sub-long v5, v8, v5

    move-object/from16 v1, p0

    move-wide v3, v8

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/so2;->e0(Ljava/lang/String;JJ)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->M0:Z

    return v0
.end method

.method public final b0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->x0(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->M()V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 11
    iput v2, v0, Lcom/shabakaty/downloader/kl;->B:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->J:Lcom/shabakaty/downloader/kl;

    const/16 v1, 0x20

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 14
    iput v1, v0, Lcom/shabakaty/downloader/kl;->B:I

    .line 15
    :goto_0
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 17
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    iget-object v0, v0, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 19
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    if-nez v4, :cond_6

    .line 20
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/so2;->X(Lcom/shabakaty/downloader/p01;)Lcom/shabakaty/downloader/tl1;

    move-result-object v1

    if-nez v1, :cond_4

    .line 21
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/p01;->f()Lcom/shabakaty/downloader/p01$a;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 22
    :cond_4
    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    iget-object v5, v1, Lcom/shabakaty/downloader/tl1;->r:Ljava/util/UUID;

    iget-object v6, v1, Lcom/shabakaty/downloader/tl1;->s:[B

    invoke-direct {v4, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v4, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-boolean v1, v1, Lcom/shabakaty/downloader/tl1;->t:Z

    if-nez v1, :cond_5

    .line 24
    invoke-virtual {v4, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->V:Z

    goto :goto_2

    :catch_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/16 v2, 0x1776

    .line 26
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 27
    throw v0

    .line 28
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/shabakaty/downloader/tl1;->u:Z

    if-eqz v0, :cond_8

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/p01;->getState()I

    move-result v0

    if-eq v0, v2, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    .line 31
    invoke-interface {v0}, Lcom/shabakaty/downloader/p01;->f()Lcom/shabakaty/downloader/p01$a;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    iget v2, v0, Lcom/shabakaty/downloader/p01$a;->r:I

    .line 34
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 35
    throw v0

    .line 36
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/so2;->V:Z

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/so2;->c0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/shabakaty/downloader/so2$a; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/16 v2, 0xfa1

    .line 38
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object v0

    .line 39
    throw v0

    :cond_9
    :goto_3
    return-void
.end method

.method public final c0(Landroid/media/MediaCrypto;Z)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v10, p2

    .line 1
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    const/4 v11, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {v1, v10}, Lcom/shabakaty/downloader/so2;->T(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v3, v1, Lcom/shabakaty/downloader/so2;->E:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ro2;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v11, v1, Lcom/shabakaty/downloader/so2;->f0:Lcom/shabakaty/downloader/so2$a;
    :try_end_0
    .catch Lcom/shabakaty/downloader/wo2$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Lcom/shabakaty/downloader/so2$a;

    iget-object v3, v1, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const v4, -0xc34e

    invoke-direct {v2, v3, v0, v10, v4}, Lcom/shabakaty/downloader/so2$a;-><init>(Lcom/shabakaty/downloader/wh1;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 10
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11
    :goto_2
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-nez v0, :cond_7

    .line 12
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/shabakaty/downloader/ro2;

    .line 13
    invoke-virtual {v1, v7}, Lcom/shabakaty/downloader/so2;->w0(Lcom/shabakaty/downloader/ro2;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object/from16 v12, p1

    .line 14
    :try_start_1
    invoke-virtual {v1, v7, v12}, Lcom/shabakaty/downloader/so2;->a0(Lcom/shabakaty/downloader/ro2;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 15
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecRenderer"

    invoke-static {v2, v0, v4}, Lcom/shabakaty/downloader/fk2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/shabakaty/downloader/so2$a;

    iget-object v2, v1, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 18
    iget-object v3, v7, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x17

    invoke-static {v3, v6}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    const-string v6, "Decoder init failed: "

    const-string v9, ", "

    invoke-static {v8, v6, v3, v9, v5}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 19
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_4

    .line 20
    instance-of v2, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_4

    .line 21
    move-object v2, v4

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_4
    move-object v8, v11

    :goto_3
    const/4 v9, 0x0

    move-object v2, v0

    move/from16 v6, p2

    .line 22
    invoke-direct/range {v2 .. v9}, Lcom/shabakaty/downloader/so2$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/shabakaty/downloader/ro2;Ljava/lang/String;Lcom/shabakaty/downloader/so2$a;)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/so2;->d0(Ljava/lang/Exception;)V

    .line 24
    iget-object v2, v1, Lcom/shabakaty/downloader/so2;->f0:Lcom/shabakaty/downloader/so2$a;

    if-nez v2, :cond_5

    .line 25
    iput-object v0, v1, Lcom/shabakaty/downloader/so2;->f0:Lcom/shabakaty/downloader/so2$a;

    goto :goto_4

    .line 26
    :cond_5
    new-instance v3, Lcom/shabakaty/downloader/so2$a;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v4, v2, Lcom/shabakaty/downloader/so2$a;->r:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/shabakaty/downloader/so2$a;->s:Z

    iget-object v6, v2, Lcom/shabakaty/downloader/so2$a;->t:Lcom/shabakaty/downloader/ro2;

    iget-object v2, v2, Lcom/shabakaty/downloader/so2$a;->u:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Lcom/shabakaty/downloader/so2$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/shabakaty/downloader/ro2;Ljava/lang/String;Lcom/shabakaty/downloader/so2$a;)V

    .line 29
    iput-object v3, v1, Lcom/shabakaty/downloader/so2;->f0:Lcom/shabakaty/downloader/so2$a;

    .line 30
    :goto_4
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 31
    :cond_6
    iget-object v0, v1, Lcom/shabakaty/downloader/so2;->f0:Lcom/shabakaty/downloader/so2$a;

    throw v0

    .line 32
    :cond_7
    iput-object v11, v1, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    return-void

    .line 33
    :cond_8
    new-instance v0, Lcom/shabakaty/downloader/so2$a;

    iget-object v2, v1, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const v3, -0xc34f

    invoke-direct {v0, v2, v11, v10, v3}, Lcom/shabakaty/downloader/so2$a;-><init>(Lcom/shabakaty/downloader/wh1;Ljava/lang/Throwable;ZI)V

    throw v0
.end method

.method public d()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/downloader/bk;->A:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/dx3;->d()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/so2;->v0:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 6
    iget-wide v3, p0, Lcom/shabakaty/downloader/so2;->t0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/shabakaty/downloader/so2;->t0:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public abstract d0(Ljava/lang/Exception;)V
.end method

.method public abstract e0(Ljava/lang/String;JJ)V
.end method

.method public abstract f0(Ljava/lang/String;)V
.end method

.method public g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->N0:Z

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/shabakaty/downloader/wh1;

    .line 3
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v5, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/p01;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/so2;->u0(Lcom/shabakaty/downloader/p01;)V

    .line 6
    iput-object v5, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    .line 7
    iget-boolean p1, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->B0:Z

    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-nez p1, :cond_1

    .line 10
    iput-object v1, p0, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->b0()V

    return-object v1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->g0:Lcom/shabakaty/downloader/ro2;

    .line 13
    iget-object v4, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    .line 14
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    iget-object v6, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    const/16 v7, 0x17

    if-ne v3, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_9

    if-nez v3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    sget v8, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v8, v7, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    sget-object v8, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    invoke-interface {v3}, Lcom/shabakaty/downloader/p01;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 17
    invoke-interface {v6}, Lcom/shabakaty/downloader/p01;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, v6}, Lcom/shabakaty/downloader/so2;->X(Lcom/shabakaty/downloader/p01;)Lcom/shabakaty/downloader/tl1;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 19
    :cond_7
    iget-boolean v6, v1, Lcom/shabakaty/downloader/ro2;->f:Z

    if-nez v6, :cond_2

    .line 20
    iget-boolean v6, v3, Lcom/shabakaty/downloader/tl1;->t:Z

    if-eqz v6, :cond_8

    const/4 v3, 0x0

    goto :goto_0

    .line 21
    :cond_8
    :try_start_0
    new-instance v6, Landroid/media/MediaCrypto;

    iget-object v8, v3, Lcom/shabakaty/downloader/tl1;->r:Ljava/util/UUID;

    iget-object v3, v3, Lcom/shabakaty/downloader/tl1;->s:[B

    invoke-direct {v6, v8, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    iget-object v3, v5, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {v6}, Landroid/media/MediaCrypto;->release()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v6}, Landroid/media/MediaCrypto;->release()V

    .line 24
    throw p1

    :catch_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    :cond_9
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_a

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->N()V

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/cn0;

    iget-object v3, v1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object p1

    .line 27
    :cond_a
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    iget-object v6, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    if-eq v3, v6, :cond_b

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_d

    .line 28
    sget v6, Lcom/shabakaty/downloader/sy4;->a:I

    if-lt v6, v7, :cond_c

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 29
    invoke-virtual {p0, v1, v4, v5}, Lcom/shabakaty/downloader/so2;->K(Lcom/shabakaty/downloader/ro2;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/cn0;

    move-result-object v6

    .line 30
    iget v7, v6, Lcom/shabakaty/downloader/cn0;->d:I

    const/16 v8, 0x10

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v7, :cond_1a

    if-eq v7, v0, :cond_14

    if-eq v7, v10, :cond_10

    if-ne v7, v9, :cond_f

    .line 31
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/so2;->A0(Lcom/shabakaty/downloader/wh1;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 32
    :cond_e
    iput-object v5, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    if-eqz v3, :cond_1b

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    .line 34
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 35
    :cond_10
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/so2;->A0(Lcom/shabakaty/downloader/wh1;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_7

    .line 36
    :cond_11
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->C0:Z

    .line 37
    iput v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 38
    iget v7, p0, Lcom/shabakaty/downloader/so2;->h0:I

    if-eq v7, v10, :cond_13

    if-ne v7, v0, :cond_12

    iget v7, v5, Lcom/shabakaty/downloader/wh1;->H:I

    iget v8, v4, Lcom/shabakaty/downloader/wh1;->H:I

    if-ne v7, v8, :cond_12

    iget v7, v5, Lcom/shabakaty/downloader/wh1;->I:I

    iget v8, v4, Lcom/shabakaty/downloader/wh1;->I:I

    if-ne v7, v8, :cond_12

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->p0:Z

    .line 39
    iput-object v5, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    if-eqz v3, :cond_1b

    .line 40
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    .line 41
    :cond_14
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/so2;->A0(Lcom/shabakaty/downloader/wh1;)Z

    move-result v7

    if-nez v7, :cond_15

    :goto_7
    const/16 v7, 0x10

    goto :goto_b

    .line 42
    :cond_15
    iput-object v5, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    if-eqz v3, :cond_16

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    .line 44
    :cond_16
    iget-boolean v3, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    if-eqz v3, :cond_19

    .line 45
    iput v0, p0, Lcom/shabakaty/downloader/so2;->E0:I

    .line 46
    iget-boolean v3, p0, Lcom/shabakaty/downloader/so2;->j0:Z

    if-nez v3, :cond_18

    iget-boolean v3, p0, Lcom/shabakaty/downloader/so2;->l0:Z

    if-eqz v3, :cond_17

    goto :goto_8

    .line 47
    :cond_17
    iput v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    goto :goto_9

    .line 48
    :cond_18
    :goto_8
    iput v9, p0, Lcom/shabakaty/downloader/so2;->F0:I

    const/4 v0, 0x0

    :cond_19
    :goto_9
    if-nez v0, :cond_1b

    :goto_a
    const/4 v7, 0x2

    goto :goto_b

    .line 49
    :cond_1a
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->N()V

    :cond_1b
    const/4 v7, 0x0

    .line 50
    :goto_b
    iget v0, v6, Lcom/shabakaty/downloader/cn0;->d:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-ne v0, p1, :cond_1c

    iget p1, p0, Lcom/shabakaty/downloader/so2;->F0:I

    if-ne p1, v9, :cond_1d

    .line 51
    :cond_1c
    new-instance p1, Lcom/shabakaty/downloader/cn0;

    iget-object v3, v1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/cn0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;II)V

    return-object p1

    :cond_1d
    return-object v6

    .line 52
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 53
    invoke-virtual {p0, p1, v5, v2, v0}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    .line 54
    throw p1
.end method

.method public abstract h0(Lcom/shabakaty/downloader/wh1;Landroid/media/MediaFormat;)V
.end method

.method public i0(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/so2;->W0:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->P:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->N:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/shabakaty/downloader/so2;->U0:J

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->O:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/shabakaty/downloader/so2;->V0:J

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/so2;->W0:I

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->O:[J

    iget v1, p0, Lcom/shabakaty/downloader/so2;->W0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->P:[J

    iget v1, p0, Lcom/shabakaty/downloader/so2;->W0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->j0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract j0()V
.end method

.method public abstract k0(Lcom/shabakaty/downloader/bn0;)V
.end method

.method public final l0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/so2;->F0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->M0:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->p0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->o0()V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->b0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->R()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->B0()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->R()V

    :goto_0
    return-void
.end method

.method public m(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/so2;->X:F

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/so2;->Y:F

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/so2;->A0(Lcom/shabakaty/downloader/wh1;)Z

    return-void
.end method

.method public abstract m0(JJLcom/shabakaty/downloader/oo2;Ljava/nio/ByteBuffer;IIIJZZLcom/shabakaty/downloader/wh1;)Z
.end method

.method public final n()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final n0(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk;->A()Lcom/shabakaty/downloader/yh1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->G:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->G:Lcom/shabakaty/downloader/bn0;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/bk;->I(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->g0(Lcom/shabakaty/downloader/yh1;)Lcom/shabakaty/downloader/cn0;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->G:Lcom/shabakaty/downloader/bn0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->L0:Z

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->l0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public o(JJ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->O0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/shabakaty/downloader/so2;->O0:Z

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->l0()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->S0:Lcom/shabakaty/downloader/i71;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lcom/shabakaty/downloader/so2;->M0:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->p0()V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/so2;->n0(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->b0()V

    .line 9
    iget-boolean v2, p0, Lcom/shabakaty/downloader/so2;->z0:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 10
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/so2;->J(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-eqz v2, :cond_7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 15
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->a(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/so2;->P(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/so2;->v0(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->Q()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/so2;->v0(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {}, Lcom/shabakaty/downloader/md;->g()V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p3, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget p4, p3, Lcom/shabakaty/downloader/zm0;->d:I

    .line 21
    iget-object v2, p0, Lcom/shabakaty/downloader/bk;->w:Lcom/shabakaty/downloader/dx3;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-wide v3, p0, Lcom/shabakaty/downloader/bk;->y:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lcom/shabakaty/downloader/dx3;->i(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 24
    iput p4, p3, Lcom/shabakaty/downloader/zm0;->d:I

    .line 25
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->n0(I)Z

    .line 26
    :goto_3
    iget-object p1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    .line 27
    monitor-enter p1

    .line 28
    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 30
    instance-of p4, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p4, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p4

    .line 32
    array-length v2, p4

    if-lez v2, :cond_9

    aget-object p4, p4, v1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "android.media.MediaCodec"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :goto_4
    const/4 p4, 0x1

    goto :goto_5

    :cond_9
    const/4 p4, 0x0

    :goto_5
    if-eqz p4, :cond_d

    .line 33
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/so2;->d0(Ljava/lang/Exception;)V

    if-lt p2, p3, :cond_b

    .line 34
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_a

    .line 35
    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    goto :goto_6

    :cond_a
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_c

    .line 36
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->o0()V

    .line 37
    :cond_c
    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->g0:Lcom/shabakaty/downloader/ro2;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/so2;->L(Ljava/lang/Throwable;Lcom/shabakaty/downloader/ro2;)Lcom/shabakaty/downloader/qo2;

    move-result-object p1

    iget-object p2, p0, Lcom/shabakaty/downloader/so2;->Q:Lcom/shabakaty/downloader/wh1;

    const/16 p3, 0xfa3

    .line 39
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/shabakaty/downloader/bk;->z(Ljava/lang/Throwable;Lcom/shabakaty/downloader/wh1;ZI)Lcom/shabakaty/downloader/i71;

    move-result-object p1

    throw p1

    .line 40
    :cond_d
    throw p1

    :cond_e
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->S0:Lcom/shabakaty/downloader/i71;

    .line 42
    throw v0
.end method

.method public o0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/shabakaty/downloader/oo2;->a()V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->T0:Lcom/shabakaty/downloader/zm0;

    iget v2, v1, Lcom/shabakaty/downloader/zm0;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/shabakaty/downloader/zm0;->b:I

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->g0:Lcom/shabakaty/downloader/ro2;

    iget-object v1, v1, Lcom/shabakaty/downloader/ro2;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/so2;->f0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->r0()V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 13
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->r0()V

    .line 14
    throw v1

    :catchall_1
    move-exception v1

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->Z:Lcom/shabakaty/downloader/oo2;

    .line 16
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    .line 19
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->r0()V

    .line 21
    throw v1

    :catchall_2
    move-exception v1

    .line 22
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->U:Landroid/media/MediaCrypto;

    .line 23
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/so2;->t0(Lcom/shabakaty/downloader/p01;)V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->r0()V

    .line 25
    throw v1
.end method

.method public p0()V
    .locals 0

    return-void
.end method

.method public q0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->s0()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/so2;->v0:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->w0:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->t0:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->H0:Z

    .line 6
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->G0:Z

    .line 7
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->p0:Z

    .line 8
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->q0:Z

    .line 9
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->x0:Z

    .line 10
    iput-boolean v2, p0, Lcom/shabakaty/downloader/so2;->y0:Z

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/so2;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 12
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->J0:J

    .line 13
    iput-wide v0, p0, Lcom/shabakaty/downloader/so2;->K0:J

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->s0:Lcom/shabakaty/downloader/ip;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    .line 15
    iput-wide v3, v0, Lcom/shabakaty/downloader/ip;->a:J

    .line 16
    iput-wide v3, v0, Lcom/shabakaty/downloader/ip;->b:J

    .line 17
    iput-boolean v2, v0, Lcom/shabakaty/downloader/ip;->c:Z

    .line 18
    :cond_0
    iput v2, p0, Lcom/shabakaty/downloader/so2;->E0:I

    .line 19
    iput v2, p0, Lcom/shabakaty/downloader/so2;->F0:I

    .line 20
    iget-boolean v0, p0, Lcom/shabakaty/downloader/so2;->C0:Z

    iput v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    return-void
.end method

.method public r0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/so2;->q0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->S0:Lcom/shabakaty/downloader/i71;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->s0:Lcom/shabakaty/downloader/ip;

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->e0:Ljava/util/ArrayDeque;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->g0:Lcom/shabakaty/downloader/ro2;

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->a0:Lcom/shabakaty/downloader/wh1;

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/so2;->b0:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->c0:Z

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->I0:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    iput v1, p0, Lcom/shabakaty/downloader/so2;->d0:F

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/so2;->h0:I

    .line 12
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->i0:Z

    .line 13
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->j0:Z

    .line 14
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->k0:Z

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->l0:Z

    .line 16
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->m0:Z

    .line 17
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->n0:Z

    .line 18
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->o0:Z

    .line 19
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->r0:Z

    .line 20
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->C0:Z

    .line 21
    iput v0, p0, Lcom/shabakaty/downloader/so2;->D0:I

    .line 22
    iput-boolean v0, p0, Lcom/shabakaty/downloader/so2;->V:Z

    return-void
.end method

.method public final s0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/so2;->u0:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->H:Lcom/shabakaty/downloader/bn0;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/bn0;->t:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final t0(Lcom/shabakaty/downloader/p01;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/p01;->d(Lcom/shabakaty/downloader/s01$a;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p01;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->S:Lcom/shabakaty/downloader/p01;

    return-void
.end method

.method public final u0(Lcom/shabakaty/downloader/p01;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/p01;->d(Lcom/shabakaty/downloader/s01$a;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/p01;->b(Lcom/shabakaty/downloader/s01$a;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/so2;->T:Lcom/shabakaty/downloader/p01;

    return-void
.end method

.method public final v0(J)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/so2;->W:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/shabakaty/downloader/so2;->W:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public w0(Lcom/shabakaty/downloader/ro2;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public x0(Lcom/shabakaty/downloader/wh1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract y0(Lcom/shabakaty/downloader/uo2;Lcom/shabakaty/downloader/wh1;)I
.end method
