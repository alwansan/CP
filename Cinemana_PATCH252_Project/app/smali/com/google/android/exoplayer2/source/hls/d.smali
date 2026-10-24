.class public final Lcom/google/android/exoplayer2/source/hls/d;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$b;
.implements Lcom/shabakaty/downloader/ij2$f;
.implements Lcom/shabakaty/downloader/o04;
.implements Lcom/shabakaty/downloader/p91;
.implements Lcom/shabakaty/downloader/bx3$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/d$c;,
        Lcom/google/android/exoplayer2/source/hls/d$d;,
        Lcom/google/android/exoplayer2/source/hls/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ij2$b<",
        "Lcom/shabakaty/downloader/zz;",
        ">;",
        "Lcom/shabakaty/downloader/ij2$f;",
        "Lcom/shabakaty/downloader/o04;",
        "Lcom/shabakaty/downloader/p91;",
        "Lcom/shabakaty/downloader/bx3$d;"
    }
.end annotation


# static fields
.field public static final o0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/shabakaty/downloader/yq2$a;

.field public final B:I

.field public final C:Lcom/google/android/exoplayer2/source/hls/a$b;

.field public final D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/b;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/b;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public final H:Landroid/os/Handler;

.field public final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/pt1;",
            ">;"
        }
    .end annotation
.end field

.field public final J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o01;",
            ">;"
        }
    .end annotation
.end field

.field public K:Lcom/shabakaty/downloader/zz;

.field public L:[Lcom/google/android/exoplayer2/source/hls/d$d;

.field public M:[I

.field public N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public O:Landroid/util/SparseIntArray;

.field public P:Lcom/shabakaty/downloader/fp4;

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:I

.field public V:Lcom/shabakaty/downloader/wh1;

.field public W:Lcom/shabakaty/downloader/wh1;

.field public X:Z

.field public Y:Lcom/shabakaty/downloader/cp4;

.field public Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/bp4;",
            ">;"
        }
    .end annotation
.end field

.field public a0:[I

.field public b0:I

.field public c0:Z

.field public d0:[Z

.field public e0:[Z

.field public f0:J

.field public g0:J

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:J

.field public m0:Lcom/shabakaty/downloader/o01;

.field public n0:Lcom/google/android/exoplayer2/source/hls/b;

.field public final r:I

.field public final s:Lcom/google/android/exoplayer2/source/hls/d$b;

.field public final t:Lcom/google/android/exoplayer2/source/hls/a;

.field public final u:Lcom/shabakaty/downloader/fn0;

.field public final v:Lcom/shabakaty/downloader/wh1;

.field public final w:Lcom/shabakaty/downloader/u01;

.field public final x:Lcom/shabakaty/downloader/s01$a;

.field public final y:Lcom/shabakaty/downloader/gj2;

.field public final z:Lcom/shabakaty/downloader/ij2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/d;->o0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/source/hls/d$b;Lcom/google/android/exoplayer2/source/hls/a;Ljava/util/Map;Lcom/shabakaty/downloader/fn0;JLcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/hls/d$b;",
            "Lcom/google/android/exoplayer2/source/hls/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/o01;",
            ">;",
            "Lcom/shabakaty/downloader/fn0;",
            "J",
            "Lcom/shabakaty/downloader/wh1;",
            "Lcom/shabakaty/downloader/u01;",
            "Lcom/shabakaty/downloader/s01$a;",
            "Lcom/shabakaty/downloader/gj2;",
            "Lcom/shabakaty/downloader/yq2$a;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/d;->J:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/d;->u:Lcom/shabakaty/downloader/fn0;

    .line 7
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/d;->v:Lcom/shabakaty/downloader/wh1;

    .line 8
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/d;->w:Lcom/shabakaty/downloader/u01;

    .line 9
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/d;->x:Lcom/shabakaty/downloader/s01$a;

    .line 10
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    .line 11
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    .line 12
    iput p13, p0, Lcom/google/android/exoplayer2/source/hls/d;->B:I

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/a$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->C:Lcom/google/android/exoplayer2/source/hls/a$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 15
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    .line 16
    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lcom/google/android/exoplayer2/source/hls/d;->o0:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->N:Ljava/util/Set;

    .line 17
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->O:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/d$d;

    .line 18
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    new-array p2, p1, [Z

    .line 19
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->e0:[Z

    new-array p2, p1, [Z

    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    .line 22
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    .line 23
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->I:Ljava/util/ArrayList;

    .line 24
    new-instance p2, Lcom/shabakaty/downloader/qt1;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/qt1;-><init>(Lcom/google/android/exoplayer2/source/hls/d;I)V

    .line 25
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->F:Ljava/lang/Runnable;

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/qt1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/qt1;-><init>(Lcom/google/android/exoplayer2/source/hls/d;I)V

    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->G:Ljava/lang/Runnable;

    .line 28
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    .line 29
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    .line 30
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    return-void
.end method

.method public static n(II)Lcom/shabakaty/downloader/o11;
    .locals 3

    const/16 v0, 0x36

    const-string v1, "Unmapped track with id "

    const-string v2, " of type "

    .line 1
    invoke-static {v0, v1, p0, v2, p1}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    .line 2
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p0, Lcom/shabakaty/downloader/o11;

    invoke-direct {p0}, Lcom/shabakaty/downloader/o11;-><init>()V

    return-object p0
.end method

.method public static q(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/sy4;->r(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/sy4;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/shabakaty/downloader/nt2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/nt2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v3, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    .line 9
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 10
    iget-object v5, p0, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    .line 11
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 12
    iget-object v5, p0, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    .line 13
    iput-object v5, v4, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 14
    iget v5, p0, Lcom/shabakaty/downloader/wh1;->u:I

    .line 15
    iput v5, v4, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 16
    iget v5, p0, Lcom/shabakaty/downloader/wh1;->v:I

    .line 17
    iput v5, v4, Lcom/shabakaty/downloader/wh1$b;->e:I

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    .line 18
    iget v6, p0, Lcom/shabakaty/downloader/wh1;->w:I

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    .line 19
    :goto_1
    iput v6, v4, Lcom/shabakaty/downloader/wh1$b;->f:I

    if-eqz p2, :cond_3

    .line 20
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->x:I

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    .line 21
    :goto_2
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 22
    iput-object v1, v4, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    const/4 p2, 0x2

    if-ne v0, p2, :cond_4

    .line 23
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->H:I

    .line 24
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 25
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->I:I

    .line 26
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 27
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->J:F

    .line 28
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->r:F

    :cond_4
    if-eqz v3, :cond_5

    .line 29
    iput-object v3, v4, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 30
    :cond_5
    iget p2, p0, Lcom/shabakaty/downloader/wh1;->P:I

    if-eq p2, v5, :cond_6

    if-ne v0, v2, :cond_6

    .line 31
    iput p2, v4, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 32
    :cond_6
    iget-object p0, p0, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-eqz p0, :cond_8

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    if-eqz p1, :cond_7

    .line 34
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ps2;->b(Lcom/shabakaty/downloader/ps2;)Lcom/shabakaty/downloader/ps2;

    move-result-object p0

    .line 35
    :cond_7
    iput-object p0, v4, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 36
    :cond_8
    invoke-virtual {v4}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p0

    return-object p0
.end method

.method public static u(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method


# virtual methods
.method public A(JZ)Z
    .locals 4

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length p3, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v3, v3, v0

    .line 7
    invoke-virtual {v3, p1, p2, v2}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->e0:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->c0:Z

    if-nez v3, :cond_2

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_4

    return v2

    .line 9
    :cond_4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    .line 10
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_5

    aget-object p3, p1, v2

    .line 15
    invoke-virtual {p3}, Lcom/shabakaty/downloader/bx3;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->a()V

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->z()V

    :goto_3
    return v1
.end method

.method public B(J)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->l0:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->l0:J

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-wide v4, v3, Lcom/shabakaty/downloader/bx3;->G:J

    cmp-long v6, v4, p1

    if-eqz v6, :cond_0

    .line 5
    iput-wide p1, v3, Lcom/shabakaty/downloader/bx3;->G:J

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v3, Lcom/shabakaty/downloader/bx3;->A:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/shabakaty/downloader/bx3;->D()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->k0:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->s()Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object v0

    iget-wide v0, v0, Lcom/shabakaty/downloader/zz;->h:J

    :goto_0
    return-wide v0
.end method

.method public d(Lcom/shabakaty/downloader/vz3;)V
    .locals 0

    return-void
.end method

.method public e(J)Z
    .locals 56

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    const/4 v10, 0x0

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2f

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    .line 5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 6
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    .line 7
    iput-wide v8, v7, Lcom/shabakaty/downloader/bx3;->u:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/d;->s()Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    if-eqz v3, :cond_2

    .line 11
    iget-wide v2, v2, Lcom/shabakaty/downloader/zz;->h:J

    goto :goto_1

    .line 12
    :cond_2
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    iget-wide v5, v2, Lcom/shabakaty/downloader/zz;->g:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_3
    :goto_1
    move-object v8, v1

    move-wide v14, v2

    .line 13
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->C:Lcom/google/android/exoplayer2/source/hls/a$b;

    const/4 v13, 0x0

    .line 14
    iput-object v13, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    .line 15
    iput-boolean v10, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->b:Z

    .line 16
    iput-object v13, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->c:Landroid/net/Uri;

    .line 17
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-nez v1, :cond_5

    .line 18
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v19, 0x1

    :goto_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/d;->C:Lcom/google/android/exoplayer2/source/hls/a$b;

    .line 19
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v6, v13

    goto :goto_4

    :cond_6
    invoke-static {v8}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/b;

    move-object v6, v1

    :goto_4
    if-nez v6, :cond_7

    const/4 v4, -0x1

    goto :goto_5

    .line 21
    :cond_7
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    iget-object v2, v6, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/bp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v1

    move v4, v1

    :goto_5
    sub-long v1, v14, p1

    .line 22
    iget-wide v10, v12, Lcom/google/android/exoplayer2/source/hls/a;->q:J

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v8

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    sub-long v10, v10, p1

    goto :goto_7

    :cond_9
    move-wide v10, v8

    :goto_7
    if-eqz v6, :cond_a

    .line 23
    iget-boolean v3, v12, Lcom/google/android/exoplayer2/source/hls/a;->o:Z

    if-nez v3, :cond_a

    move-wide/from16 v21, v14

    .line 24
    iget-wide v13, v6, Lcom/shabakaty/downloader/zz;->h:J

    iget-wide v7, v6, Lcom/shabakaty/downloader/zz;->g:J

    sub-long/2addr v13, v7

    sub-long/2addr v1, v13

    const-wide/16 v7, 0x0

    .line 25
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v24

    if-eqz v3, :cond_b

    sub-long/2addr v10, v13

    .line 26
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v10, v7

    move-wide/from16 v13, v21

    move-wide v7, v1

    goto :goto_8

    :cond_a
    move-wide/from16 v24, v8

    move-wide/from16 v21, v14

    :cond_b
    move-wide v7, v1

    move-wide/from16 v13, v21

    .line 27
    :goto_8
    invoke-virtual {v12, v6, v13, v14}, Lcom/google/android/exoplayer2/source/hls/a;->a(Lcom/google/android/exoplayer2/source/hls/b;J)[Lcom/shabakaty/downloader/mo2;

    move-result-object v9

    .line 28
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    move-wide/from16 v2, p1

    move v0, v4

    move-wide v4, v7

    move-object v8, v6

    move-wide v6, v10

    move-object/from16 p1, v8

    move-wide/from16 v10, v24

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    invoke-interface/range {v1 .. v9}, Lcom/shabakaty/downloader/f81;->h(JJJLjava/util/List;[Lcom/shabakaty/downloader/mo2;)V

    .line 29
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v1}, Lcom/shabakaty/downloader/f81;->o()I

    move-result v4

    if-eq v0, v4, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    .line 30
    :goto_9
    iget-object v2, v12, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    aget-object v2, v2, v4

    .line 31
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/ot1;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 32
    iput-object v2, v10, Lcom/google/android/exoplayer2/source/hls/a$b;->c:Landroid/net/Uri;

    .line 33
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    iget-object v1, v12, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    .line 34
    iput-object v2, v12, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    :goto_a
    move-object/from16 v0, p0

    goto/16 :goto_2c

    .line 35
    :cond_d
    iget-object v3, v12, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    const/4 v5, 0x1

    .line 36
    invoke-interface {v3, v2, v5}, Lcom/shabakaty/downloader/ot1;->o(Landroid/net/Uri;Z)Lcom/shabakaty/downloader/kt1;

    move-result-object v3

    .line 37
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-boolean v6, v3, Lcom/shabakaty/downloader/lt1;->c:Z

    iput-boolean v6, v12, Lcom/google/android/exoplayer2/source/hls/a;->o:Z

    .line 39
    iget-boolean v6, v3, Lcom/shabakaty/downloader/kt1;->o:Z

    if-eqz v6, :cond_e

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_b

    .line 40
    :cond_e
    invoke-virtual {v3}, Lcom/shabakaty/downloader/kt1;->b()J

    move-result-wide v6

    iget-object v8, v12, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v8}, Lcom/shabakaty/downloader/ot1;->d()J

    move-result-wide v8

    sub-long v8, v6, v8

    :goto_b
    iput-wide v8, v12, Lcom/google/android/exoplayer2/source/hls/a;->q:J

    .line 41
    iget-wide v6, v3, Lcom/shabakaty/downloader/kt1;->h:J

    iget-object v8, v12, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v8}, Lcom/shabakaty/downloader/ot1;->d()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v11, v12

    move-object v8, v12

    move-object/from16 v12, p1

    move-wide v14, v13

    const/4 v9, 0x0

    move v13, v1

    move-wide/from16 v21, v14

    move-object v14, v3

    move-wide v15, v6

    move-wide/from16 v17, v21

    .line 42
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/exoplayer2/source/hls/a;->c(Lcom/google/android/exoplayer2/source/hls/b;ZLcom/shabakaty/downloader/kt1;JJ)Landroid/util/Pair;

    move-result-object v11

    .line 43
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 44
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 45
    iget-wide v14, v3, Lcom/shabakaty/downloader/kt1;->k:J

    cmp-long v16, v12, v14

    if-gez v16, :cond_10

    move-object/from16 v15, p1

    if-eqz v15, :cond_f

    if-eqz v1, :cond_f

    .line 46
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/a;->e:[Landroid/net/Uri;

    aget-object v2, v1, v0

    .line 47
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    .line 48
    invoke-interface {v1, v2, v5}, Lcom/shabakaty/downloader/ot1;->o(Landroid/net/Uri;Z)Lcom/shabakaty/downloader/kt1;

    move-result-object v3

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-wide v6, v3, Lcom/shabakaty/downloader/kt1;->h:J

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ot1;->d()J

    move-result-wide v11

    sub-long/2addr v6, v11

    const/4 v13, 0x0

    move-object v11, v8

    move-object v12, v15

    move-object v14, v3

    move-object v1, v15

    move-wide v15, v6

    move-wide/from16 v17, v21

    .line 51
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/exoplayer2/source/hls/a;->c(Lcom/google/android/exoplayer2/source/hls/b;ZLcom/shabakaty/downloader/kt1;JJ)Landroid/util/Pair;

    move-result-object v4

    .line 52
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 53
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    move v4, v0

    goto :goto_c

    :cond_f
    move-object v1, v15

    goto :goto_c

    :cond_10
    move-object/from16 v1, p1

    .line 54
    :goto_c
    iget-wide v14, v3, Lcom/shabakaty/downloader/kt1;->k:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_11

    .line 55
    new-instance v0, Lcom/shabakaty/downloader/tl;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tl;-><init>()V

    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->m:Ljava/io/IOException;

    goto/16 :goto_a

    :cond_11
    sub-long v14, v12, v14

    long-to-int v0, v14

    .line 56
    iget-object v14, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const-wide/16 v15, 0x1

    if-ne v0, v14, :cond_13

    const/4 v14, -0x1

    if-eq v11, v14, :cond_12

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    .line 57
    :goto_d
    iget-object v0, v3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_17

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/a$e;

    iget-object v9, v3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/kt1$e;

    invoke-direct {v0, v9, v12, v13, v11}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    goto :goto_e

    :cond_13
    const/4 v14, -0x1

    .line 59
    iget-object v9, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/kt1$d;

    if-ne v11, v14, :cond_14

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/a$e;

    invoke-direct {v0, v9, v12, v13, v14}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    :goto_e
    move-object v13, v0

    goto :goto_f

    .line 61
    :cond_14
    iget-object v14, v9, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_15

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/a$e;

    iget-object v9, v9, Lcom/shabakaty/downloader/kt1$d;->D:Ljava/util/List;

    .line 63
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/kt1$e;

    invoke-direct {v0, v9, v12, v13, v11}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    goto :goto_e

    :cond_15
    add-int/2addr v0, v5

    .line 64
    iget-object v9, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_16

    .line 65
    new-instance v9, Lcom/google/android/exoplayer2/source/hls/a$e;

    iget-object v11, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 66
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt1$e;

    add-long/2addr v12, v15

    const/4 v11, -0x1

    invoke-direct {v9, v0, v12, v13, v11}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    move-object v13, v9

    goto :goto_f

    .line 67
    :cond_16
    iget-object v0, v3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/a$e;

    iget-object v9, v3, Lcom/shabakaty/downloader/kt1;->s:Ljava/util/List;

    const/4 v11, 0x0

    .line 69
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/kt1$e;

    add-long/2addr v12, v15

    invoke-direct {v0, v9, v12, v13, v11}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    goto :goto_e

    :cond_17
    const/4 v13, 0x0

    :goto_f
    if-nez v13, :cond_1b

    .line 70
    iget-boolean v0, v3, Lcom/shabakaty/downloader/kt1;->o:Z

    if-nez v0, :cond_18

    .line 71
    iput-object v2, v10, Lcom/google/android/exoplayer2/source/hls/a$b;->c:Landroid/net/Uri;

    .line 72
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    iget-object v1, v8, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    .line 73
    iput-object v2, v8, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    goto/16 :goto_a

    :cond_18
    if-nez v19, :cond_1a

    .line 74
    iget-object v0, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_10

    .line 75
    :cond_19
    new-instance v13, Lcom/google/android/exoplayer2/source/hls/a$e;

    iget-object v0, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 76
    invoke-static {v0}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kt1$e;

    iget-wide v11, v3, Lcom/shabakaty/downloader/kt1;->k:J

    iget-object v9, v3, Lcom/shabakaty/downloader/kt1;->r:Ljava/util/List;

    .line 77
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-wide/from16 p1, v6

    int-to-long v5, v9

    add-long/2addr v11, v5

    sub-long/2addr v11, v15

    const/4 v5, -0x1

    invoke-direct {v13, v0, v11, v12, v5}, Lcom/google/android/exoplayer2/source/hls/a$e;-><init>(Lcom/shabakaty/downloader/kt1$e;JI)V

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, v10, Lcom/google/android/exoplayer2/source/hls/a$b;->b:Z

    goto/16 :goto_a

    :cond_1b
    move-wide/from16 p1, v6

    :goto_11
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    const/4 v0, 0x0

    .line 80
    iput-object v0, v8, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    .line 81
    iget-object v5, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->a:Lcom/shabakaty/downloader/kt1$e;

    iget-object v5, v5, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    if-eqz v5, :cond_1d

    .line 82
    iget-object v5, v5, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    if-nez v5, :cond_1c

    goto :goto_12

    .line 83
    :cond_1c
    iget-object v6, v3, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_13

    :cond_1d
    :goto_12
    move-object v5, v0

    .line 84
    :goto_13
    invoke-virtual {v8, v5, v4}, Lcom/google/android/exoplayer2/source/hls/a;->d(Landroid/net/Uri;I)Lcom/shabakaty/downloader/zz;

    move-result-object v6

    iput-object v6, v10, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    if-eqz v6, :cond_1e

    :goto_14
    goto/16 :goto_a

    .line 85
    :cond_1e
    iget-object v6, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->a:Lcom/shabakaty/downloader/kt1$e;

    if-eqz v6, :cond_20

    .line 86
    iget-object v6, v6, Lcom/shabakaty/downloader/kt1$e;->x:Ljava/lang/String;

    if-nez v6, :cond_1f

    goto :goto_15

    .line 87
    :cond_1f
    iget-object v7, v3, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_16

    :cond_20
    :goto_15
    move-object v6, v0

    .line 88
    :goto_16
    invoke-virtual {v8, v6, v4}, Lcom/google/android/exoplayer2/source/hls/a;->d(Landroid/net/Uri;I)Lcom/shabakaty/downloader/zz;

    move-result-object v7

    iput-object v7, v10, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    if-eqz v7, :cond_21

    goto :goto_14

    .line 89
    :cond_21
    sget-object v7, Lcom/google/android/exoplayer2/source/hls/b;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_22

    goto :goto_17

    .line 90
    :cond_22
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->m:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    if-eqz v7, :cond_23

    :goto_17
    move-wide/from16 v17, p1

    const/16 v55, 0x0

    goto :goto_1c

    .line 91
    :cond_23
    iget-object v7, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->a:Lcom/shabakaty/downloader/kt1$e;

    iget-wide v11, v7, Lcom/shabakaty/downloader/kt1$e;->v:J

    move-wide/from16 v15, p1

    add-long/2addr v11, v15

    .line 92
    instance-of v9, v7, Lcom/shabakaty/downloader/kt1$b;

    if-eqz v9, :cond_26

    .line 93
    check-cast v7, Lcom/shabakaty/downloader/kt1$b;

    iget-boolean v7, v7, Lcom/shabakaty/downloader/kt1$b;->C:Z

    if-nez v7, :cond_25

    iget v7, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->c:I

    if-nez v7, :cond_24

    iget-boolean v7, v3, Lcom/shabakaty/downloader/lt1;->c:Z

    if-eqz v7, :cond_24

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v7, 0x1

    goto :goto_19

    .line 94
    :cond_26
    iget-boolean v7, v3, Lcom/shabakaty/downloader/lt1;->c:Z

    :goto_19
    move-wide/from16 v17, v15

    if-eqz v7, :cond_28

    .line 95
    iget-wide v14, v1, Lcom/shabakaty/downloader/zz;->h:J

    cmp-long v7, v11, v14

    if-gez v7, :cond_27

    goto :goto_1a

    :cond_27
    const/4 v11, 0x0

    goto :goto_1b

    :cond_28
    :goto_1a
    const/4 v11, 0x1

    :goto_1b
    move/from16 v55, v11

    :goto_1c
    if-eqz v55, :cond_29

    .line 96
    iget-boolean v7, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->d:Z

    if-eqz v7, :cond_29

    goto :goto_14

    .line 97
    :cond_29
    iget-object v7, v8, Lcom/google/android/exoplayer2/source/hls/a;->a:Lcom/shabakaty/downloader/ht1;

    iget-object v9, v8, Lcom/google/android/exoplayer2/source/hls/a;->b:Lcom/shabakaty/downloader/vl0;

    iget-object v11, v8, Lcom/google/android/exoplayer2/source/hls/a;->f:[Lcom/shabakaty/downloader/wh1;

    aget-object v30, v11, v4

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/hls/a;->i:Ljava/util/List;

    iget-object v11, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 98
    invoke-interface {v11}, Lcom/shabakaty/downloader/f81;->q()I

    move-result v37

    iget-object v11, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 99
    invoke-interface {v11}, Lcom/shabakaty/downloader/f81;->s()Ljava/lang/Object;

    move-result-object v38

    iget-boolean v11, v8, Lcom/google/android/exoplayer2/source/hls/a;->k:Z

    iget-object v12, v8, Lcom/google/android/exoplayer2/source/hls/a;->d:Lcom/shabakaty/downloader/rn4;

    iget-object v14, v8, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    .line 100
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_2a

    move-object v6, v0

    goto :goto_1d

    .line 101
    :cond_2a
    iget-object v14, v14, Lcom/shabakaty/downloader/pm1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 102
    :goto_1d
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    .line 103
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_2b

    move-object v5, v0

    goto :goto_1e

    .line 104
    :cond_2b
    iget-object v8, v8, Lcom/shabakaty/downloader/pm1;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 105
    :goto_1e
    iget-object v8, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->a:Lcom/shabakaty/downloader/kt1$e;

    const/16 v43, 0x1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v45

    .line 107
    iget-object v14, v3, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    iget-object v15, v8, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    .line 108
    invoke-static {v14, v15}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    iget-wide v14, v8, Lcom/shabakaty/downloader/kt1$e;->z:J

    move-object/from16 p2, v1

    .line 109
    iget-wide v0, v8, Lcom/shabakaty/downloader/kt1$e;->A:J

    move-object/from16 v19, v10

    .line 110
    iget-boolean v10, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->d:Z

    if-eqz v10, :cond_2c

    const/16 v10, 0x8

    const/16 v51, 0x8

    goto :goto_1f

    :cond_2c
    const/16 v51, 0x0

    :goto_1f
    if-eqz v40, :cond_41

    .line 111
    new-instance v29, Lcom/shabakaty/downloader/yl0;

    const-wide/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v50, 0x0

    const/16 v52, 0x0

    move-object/from16 v39, v29

    move-wide/from16 v46, v14

    move-wide/from16 v48, v0

    .line 112
    invoke-direct/range {v39 .. v52}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v6, :cond_2d

    const/16 v31, 0x1

    goto :goto_20

    :cond_2d
    const/16 v31, 0x0

    :goto_20
    if-eqz v31, :cond_2e

    .line 113
    iget-object v0, v8, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/b;->f(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_21

    :cond_2e
    const/4 v0, 0x0

    :goto_21
    if-eqz v6, :cond_2f

    .line 116
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Lcom/shabakaty/downloader/y4;

    invoke-direct {v1, v9, v6, v0}, Lcom/shabakaty/downloader/y4;-><init>(Lcom/shabakaty/downloader/vl0;[B[B)V

    move-object/from16 v28, v1

    goto :goto_22

    :cond_2f
    move-object/from16 v28, v9

    .line 118
    :goto_22
    iget-object v0, v8, Lcom/shabakaty/downloader/kt1$e;->s:Lcom/shabakaty/downloader/kt1$d;

    if-eqz v0, :cond_33

    if-eqz v5, :cond_30

    const/4 v1, 0x1

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_31

    .line 119
    iget-object v6, v0, Lcom/shabakaty/downloader/kt1$e;->y:Ljava/lang/String;

    .line 120
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v6}, Lcom/google/android/exoplayer2/source/hls/b;->f(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_24

    :cond_31
    const/4 v6, 0x0

    .line 122
    :goto_24
    iget-object v10, v3, Lcom/shabakaty/downloader/lt1;->a:Ljava/lang/String;

    iget-object v14, v0, Lcom/shabakaty/downloader/kt1$e;->r:Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/shabakaty/downloader/zw4;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    .line 123
    new-instance v10, Lcom/shabakaty/downloader/yl0;

    iget-wide v14, v0, Lcom/shabakaty/downloader/kt1$e;->z:J

    move/from16 v21, v1

    iget-wide v0, v0, Lcom/shabakaty/downloader/kt1$e;->A:J

    move-object/from16 v39, v10

    move-wide/from16 v41, v14

    move-wide/from16 v43, v0

    invoke-direct/range {v39 .. v44}, Lcom/shabakaty/downloader/yl0;-><init>(Landroid/net/Uri;JJ)V

    if-eqz v5, :cond_32

    .line 124
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/shabakaty/downloader/y4;

    invoke-direct {v0, v9, v5, v6}, Lcom/shabakaty/downloader/y4;-><init>(Lcom/shabakaty/downloader/vl0;[B[B)V

    goto :goto_25

    :cond_32
    move-object v0, v9

    :goto_25
    move-object/from16 v32, v0

    move/from16 v34, v21

    goto :goto_26

    :cond_33
    const/4 v10, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    .line 126
    :goto_26
    iget-wide v0, v8, Lcom/shabakaty/downloader/kt1$e;->v:J

    add-long v39, v17, v0

    .line 127
    iget-wide v0, v8, Lcom/shabakaty/downloader/kt1$e;->t:J

    add-long v41, v39, v0

    .line 128
    iget v0, v3, Lcom/shabakaty/downloader/kt1;->j:I

    iget v1, v8, Lcom/shabakaty/downloader/kt1$e;->u:I

    add-int/2addr v0, v1

    if-eqz p2, :cond_38

    move-object/from16 v1, p2

    .line 129
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/b;->q:Lcom/shabakaty/downloader/yl0;

    if-eq v10, v3, :cond_35

    if-eqz v10, :cond_34

    if-eqz v3, :cond_34

    iget-object v5, v10, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    iget-object v3, v3, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    .line 130
    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-wide v5, v10, Lcom/shabakaty/downloader/yl0;->f:J

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/b;->q:Lcom/shabakaty/downloader/yl0;

    iget-wide v14, v3, Lcom/shabakaty/downloader/yl0;->f:J

    cmp-long v3, v5, v14

    if-nez v3, :cond_34

    goto :goto_27

    :cond_34
    const/4 v3, 0x0

    goto :goto_28

    :cond_35
    :goto_27
    const/4 v3, 0x1

    .line 131
    :goto_28
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/b;->m:Landroid/net/Uri;

    .line 132
    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    if-eqz v5, :cond_36

    const/4 v5, 0x1

    goto :goto_29

    :cond_36
    const/4 v5, 0x0

    .line 133
    :goto_29
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/b;->y:Lcom/shabakaty/downloader/px1;

    .line 134
    iget-object v9, v1, Lcom/google/android/exoplayer2/source/hls/b;->z:Lcom/shabakaty/downloader/ka3;

    if-eqz v3, :cond_37

    if-eqz v5, :cond_37

    .line 135
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/hls/b;->J:Z

    if-nez v3, :cond_37

    iget v3, v1, Lcom/google/android/exoplayer2/source/hls/b;->l:I

    if-ne v3, v0, :cond_37

    .line 136
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/b;->C:Lcom/shabakaty/downloader/jt1;

    move-object/from16 v16, v1

    goto :goto_2a

    :cond_37
    const/16 v16, 0x0

    :goto_2a
    move-object/from16 v53, v6

    move-object/from16 v54, v9

    move-object/from16 v52, v16

    goto :goto_2b

    .line 137
    :cond_38
    new-instance v1, Lcom/shabakaty/downloader/px1;

    invoke-direct {v1}, Lcom/shabakaty/downloader/px1;-><init>()V

    .line 138
    new-instance v3, Lcom/shabakaty/downloader/ka3;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    move-object/from16 v53, v1

    move-object/from16 v54, v3

    const/16 v52, 0x0

    .line 139
    :goto_2b
    new-instance v1, Lcom/google/android/exoplayer2/source/hls/b;

    iget-wide v5, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->b:J

    iget v3, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->c:I

    iget-boolean v9, v13, Lcom/google/android/exoplayer2/source/hls/a$e;->d:Z

    const/4 v13, 0x1

    xor-int/lit8 v46, v9, 0x1

    iget-boolean v9, v8, Lcom/shabakaty/downloader/kt1$e;->B:Z

    .line 140
    iget-object v13, v12, Lcom/shabakaty/downloader/rn4;->a:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shabakaty/downloader/qn4;

    if-nez v13, :cond_39

    .line 141
    new-instance v13, Lcom/shabakaty/downloader/qn4;

    const-wide v14, 0x7ffffffffffffffeL

    invoke-direct {v13, v14, v15}, Lcom/shabakaty/downloader/qn4;-><init>(J)V

    .line 142
    iget-object v12, v12, Lcom/shabakaty/downloader/rn4;->a:Landroid/util/SparseArray;

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    move-object/from16 v50, v13

    .line 143
    iget-object v8, v8, Lcom/shabakaty/downloader/kt1$e;->w:Lcom/shabakaty/downloader/o01;

    move-object/from16 v51, v8

    move-object/from16 v26, v1

    move-object/from16 v27, v7

    move-object/from16 v33, v10

    move-object/from16 v35, v2

    move-object/from16 v36, v4

    move-wide/from16 v43, v5

    move/from16 v45, v3

    move/from16 v47, v0

    move/from16 v48, v9

    move/from16 v49, v11

    invoke-direct/range {v26 .. v55}, Lcom/google/android/exoplayer2/source/hls/b;-><init>(Lcom/shabakaty/downloader/ht1;Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;Lcom/shabakaty/downloader/wh1;ZLcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/yl0;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/o01;Lcom/shabakaty/downloader/jt1;Lcom/shabakaty/downloader/px1;Lcom/shabakaty/downloader/ka3;Z)V

    move-object/from16 v0, v19

    .line 144
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    goto/16 :goto_a

    .line 145
    :goto_2c
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->C:Lcom/google/android/exoplayer2/source/hls/a$b;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->b:Z

    .line 146
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->a:Lcom/shabakaty/downloader/zz;

    .line 147
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/a$b;->c:Landroid/net/Uri;

    if-eqz v2, :cond_3a

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    return v1

    :cond_3a
    if-nez v3, :cond_3c

    if-eqz v1, :cond_3b

    .line 150
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/c;

    .line 151
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/c;->s:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/ot1;->n(Landroid/net/Uri;)V

    :cond_3b
    const/4 v1, 0x0

    return v1

    .line 152
    :cond_3c
    instance-of v1, v3, Lcom/google/android/exoplayer2/source/hls/b;

    if-eqz v1, :cond_40

    .line 153
    move-object v1, v3

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/b;

    .line 154
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->n0:Lcom/google/android/exoplayer2/source/hls/b;

    .line 155
    iget-object v2, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->V:Lcom/shabakaty/downloader/wh1;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    .line 157
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v2, Lcom/google/common/collect/p;->s:Lcom/shabakaty/downloader/c0;

    const/4 v2, 0x4

    const-string v4, "initialCapacity"

    .line 159
    invoke-static {v2, v4}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 160
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v5, :cond_3e

    aget-object v7, v4, v11

    .line 161
    invoke-virtual {v7}, Lcom/shabakaty/downloader/bx3;->u()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 162
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v6, 0x1

    .line 163
    array-length v9, v2

    if-ge v9, v8, :cond_3d

    .line 164
    array-length v9, v2

    .line 165
    invoke-static {v9, v8}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 166
    :cond_3d
    aput-object v7, v2, v6

    add-int/lit8 v11, v11, 0x1

    move v6, v8

    goto :goto_2d

    .line 167
    :cond_3e
    invoke-static {v2, v6}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object v2

    .line 168
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/hls/b;->D:Lcom/google/android/exoplayer2/source/hls/d;

    .line 169
    iput-object v2, v1, Lcom/google/android/exoplayer2/source/hls/b;->I:Lcom/google/common/collect/p;

    .line 170
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v4, v2

    const/4 v10, 0x0

    :goto_2e
    if-ge v10, v4, :cond_40

    aget-object v5, v2, v10

    .line 171
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget v6, v1, Lcom/google/android/exoplayer2/source/hls/b;->k:I

    .line 173
    iput v6, v5, Lcom/shabakaty/downloader/bx3;->D:I

    .line 174
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/hls/b;->n:Z

    if-eqz v6, :cond_3f

    const/4 v6, 0x1

    .line 175
    iput-boolean v6, v5, Lcom/shabakaty/downloader/bx3;->H:Z

    :cond_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 176
    :cond_40
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    .line 177
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    iget v4, v3, Lcom/shabakaty/downloader/zz;->c:I

    .line 178
    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v2

    .line 179
    invoke-virtual {v1, v3, v0, v2}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v8

    .line 180
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    new-instance v16, Lcom/shabakaty/downloader/hj2;

    iget-wide v5, v3, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v7, v3, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget v1, v3, Lcom/shabakaty/downloader/zz;->c:I

    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    iget-object v4, v3, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v5, v3, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v6, v3, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v7, v3, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v9, v3, Lcom/shabakaty/downloader/zz;->h:J

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-virtual/range {v15 .. v25}, Lcom/shabakaty/downloader/yq2$a;->n(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    const/4 v1, 0x1

    return v1

    :cond_41
    move-object/from16 v0, p0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    :goto_2f
    const/4 v1, 0x0

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/ij2$e;JJLjava/io/IOException;I)Lcom/shabakaty/downloader/ij2$c;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    .line 2
    instance-of v2, v1, Lcom/google/android/exoplayer2/source/hls/b;

    if-eqz v2, :cond_1

    .line 3
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/b;

    .line 4
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/hls/b;->K:Z

    if-nez v3, :cond_1

    .line 5
    instance-of v3, v12, Lcom/shabakaty/downloader/fw1$e;

    if-eqz v3, :cond_1

    .line 6
    move-object v3, v12

    check-cast v3, Lcom/shabakaty/downloader/fw1$e;

    iget v3, v3, Lcom/shabakaty/downloader/fw1$e;->s:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    .line 7
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/ij2;->d:Lcom/shabakaty/downloader/ij2$c;

    goto/16 :goto_4

    .line 8
    :cond_1
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 9
    iget-wide v3, v3, Lcom/shabakaty/downloader/uc4;->b:J

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/hj2;

    iget-wide v14, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 11
    iget-object v7, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 12
    iget-object v8, v7, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 13
    iget-object v7, v7, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    move-object v13, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    move-wide/from16 v23, v3

    .line 14
    invoke-direct/range {v13 .. v24}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 15
    new-instance v6, Lcom/shabakaty/downloader/fp2;

    iget v7, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v10, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v11, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v13, v1, Lcom/shabakaty/downloader/zz;->g:J

    .line 16
    invoke-static {v13, v14}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v22

    iget-wide v13, v1, Lcom/shabakaty/downloader/zz;->h:J

    .line 17
    invoke-static {v13, v14}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v24

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v25}, Lcom/shabakaty/downloader/fp2;-><init>(IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    .line 18
    new-instance v7, Lcom/shabakaty/downloader/gj2$c;

    move/from16 v8, p7

    invoke-direct {v7, v5, v6, v12, v8}, Lcom/shabakaty/downloader/gj2$c;-><init>(Lcom/shabakaty/downloader/hj2;Lcom/shabakaty/downloader/fp2;Ljava/io/IOException;I)V

    .line 19
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 20
    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    .line 21
    invoke-static {v8}, Lcom/shabakaty/downloader/kp4;->a(Lcom/shabakaty/downloader/f81;)Lcom/shabakaty/downloader/gj2$a;

    move-result-object v8

    .line 22
    check-cast v6, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v6, v8, v7}, Lcom/shabakaty/downloader/po0;->a(Lcom/shabakaty/downloader/gj2$a;Lcom/shabakaty/downloader/gj2$c;)Lcom/shabakaty/downloader/gj2$b;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 23
    iget v9, v6, Lcom/shabakaty/downloader/gj2$b;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 24
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    iget-wide v10, v6, Lcom/shabakaty/downloader/gj2$b;->b:J

    .line 25
    iget-object v6, v9, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    iget-object v13, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    .line 26
    invoke-virtual {v9, v13}, Lcom/shabakaty/downloader/bp4;->a(Lcom/shabakaty/downloader/wh1;)I

    move-result v9

    invoke-interface {v6, v9}, Lcom/shabakaty/downloader/hp4;->e(I)I

    move-result v9

    .line 27
    invoke-interface {v6, v9, v10, v11}, Lcom/shabakaty/downloader/f81;->j(IJ)Z

    move-result v6

    move v14, v6

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_0
    const/4 v6, 0x1

    if-eqz v14, :cond_6

    if-eqz v2, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-nez v2, :cond_5

    .line 28
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/b;

    if-ne v2, v1, :cond_3

    const/4 v8, 0x1

    .line 29
    :cond_3
    invoke-static {v8}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 30
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    goto :goto_1

    .line 32
    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/b;

    .line 33
    iput-boolean v6, v2, Lcom/google/android/exoplayer2/source/hls/b;->J:Z

    .line 34
    :cond_5
    :goto_1
    sget-object v2, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    goto :goto_2

    .line 35
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v7}, Lcom/shabakaty/downloader/po0;->c(Lcom/shabakaty/downloader/gj2$c;)J

    move-result-wide v2

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v9

    if-eqz v4, :cond_7

    .line 36
    invoke-static {v8, v2, v3}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v2

    goto :goto_2

    .line 37
    :cond_7
    sget-object v2, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    :goto_2
    move-object v15, v2

    .line 38
    invoke-virtual {v15}, Lcom/shabakaty/downloader/ij2$c;->a()Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    .line 39
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    iget v3, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v7, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v8, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v11, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object/from16 v12, p6

    move/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lcom/shabakaty/downloader/yq2$a;->j(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_8

    const/4 v1, 0x0

    .line 40
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    .line 41
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v14, :cond_a

    .line 42
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-nez v1, :cond_9

    .line 43
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/d;->e(J)Z

    goto :goto_3

    .line 44
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/c;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/c;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_a
    :goto_3
    move-object v1, v15

    :goto_4
    return-object v1
.end method

.method public g(Lcom/shabakaty/downloader/ij2$e;JJ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v3, v1, Lcom/google/android/exoplayer2/source/hls/a$a;

    if-eqz v3, :cond_0

    .line 5
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/a$a;

    .line 6
    iget-object v4, v3, Lcom/shabakaty/downloader/il0;->j:[B

    .line 7
    iput-object v4, v2, Lcom/google/android/exoplayer2/source/hls/a;->l:[B

    .line 8
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/a;->j:Lcom/shabakaty/downloader/pm1;

    iget-object v4, v3, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    iget-object v4, v4, Lcom/shabakaty/downloader/yl0;->a:Landroid/net/Uri;

    .line 9
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/hls/a$a;->l:[B

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/pm1;->a:Ljava/util/LinkedHashMap;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 14
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 15
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 16
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 17
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 18
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 19
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 20
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    iget v5, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    iget-object v7, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v8, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v12, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->h(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    .line 22
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    if-nez v1, :cond_1

    .line 23
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/d;->e(J)Z

    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/c;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/hls/c;->b(Lcom/shabakaty/downloader/o04;)V

    :goto_0
    return-void
.end method

.method public h(II)Lcom/shabakaty/downloader/fp4;
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/d;->o0:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->O:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->N:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    aput p1, v1, v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v0, v1, v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/d;->n(II)Lcom/shabakaty/downloader/o11;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v4, v1

    if-ge v0, v4, :cond_5

    .line 10
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_4

    .line 11
    aget-object v3, v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v3, :cond_c

    .line 12
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->k0:Z

    if-eqz v0, :cond_6

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/d;->n(II)Lcom/shabakaty/downloader/o11;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v3, 0x2

    if-ne p2, v3, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 15
    :cond_8
    new-instance v10, Lcom/google/android/exoplayer2/source/hls/d$d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->u:Lcom/shabakaty/downloader/fn0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    .line 16
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->w:Lcom/shabakaty/downloader/u01;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/d;->x:Lcom/shabakaty/downloader/s01$a;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/d;->J:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/hls/d$d;-><init>(Lcom/shabakaty/downloader/fn0;Landroid/os/Looper;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/d$a;)V

    .line 17
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    .line 18
    iput-wide v3, v10, Lcom/shabakaty/downloader/bx3;->u:J

    if-eqz v2, :cond_9

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->m0:Lcom/shabakaty/downloader/o01;

    .line 20
    iput-object v3, v10, Lcom/google/android/exoplayer2/source/hls/d$d;->J:Lcom/shabakaty/downloader/o01;

    .line 21
    iput-boolean v1, v10, Lcom/shabakaty/downloader/bx3;->A:Z

    .line 22
    :cond_9
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->l0:J

    invoke-virtual {v10, v3, v4}, Lcom/shabakaty/downloader/bx3;->H(J)V

    .line 23
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->n0:Lcom/google/android/exoplayer2/source/hls/b;

    if-eqz v3, :cond_a

    .line 24
    iget v3, v3, Lcom/google/android/exoplayer2/source/hls/b;->k:I

    .line 25
    iput v3, v10, Lcom/shabakaty/downloader/bx3;->D:I

    .line 26
    :cond_a
    iput-object p0, v10, Lcom/shabakaty/downloader/bx3;->g:Lcom/shabakaty/downloader/bx3$d;

    .line 27
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->M:[I

    .line 28
    aput p1, v3, v0

    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    .line 30
    array-length v3, p1

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 31
    array-length p1, p1

    aput-object v10, v1, p1

    .line 32
    check-cast v1, [Lcom/google/android/exoplayer2/source/hls/d$d;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    .line 33
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->e0:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->e0:[Z

    .line 34
    aput-boolean v2, p1, v0

    .line 35
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->c0:Z

    aget-boolean p1, p1, v0

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->c0:Z

    .line 36
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->N:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->O:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/d;->u(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->Q:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/d;->u(I)I

    move-result v1

    if-le p1, v1, :cond_b

    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->R:I

    .line 40
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->Q:I

    .line 41
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->d0:[Z

    move-object v3, v10

    :cond_c
    const/4 p1, 0x5

    if-ne p2, p1, :cond_e

    .line 42
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->P:Lcom/shabakaty/downloader/fp4;

    if-nez p1, :cond_d

    .line 43
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/d$c;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->B:I

    invoke-direct {p1, v3, p2}, Lcom/google/android/exoplayer2/source/hls/d$c;-><init>(Lcom/shabakaty/downloader/fp4;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->P:Lcom/shabakaty/downloader/fp4;

    .line 44
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->P:Lcom/shabakaty/downloader/fp4;

    return-object p1

    :cond_e
    return-object v3
.end method

.method public i(Lcom/shabakaty/downloader/wh1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    return v0
.end method

.method public l(Lcom/shabakaty/downloader/ij2$e;JJZ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/shabakaty/downloader/zz;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/hj2;

    iget-wide v4, v1, Lcom/shabakaty/downloader/zz;->a:J

    iget-object v6, v1, Lcom/shabakaty/downloader/zz;->b:Lcom/shabakaty/downloader/yl0;

    .line 4
    iget-object v3, v1, Lcom/shabakaty/downloader/zz;->i:Lcom/shabakaty/downloader/uc4;

    .line 5
    iget-object v7, v3, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 6
    iget-object v8, v3, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 7
    iget-wide v13, v3, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 8
    invoke-direct/range {v3 .. v14}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 9
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->y:Lcom/shabakaty/downloader/gj2;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    iget v5, v1, Lcom/shabakaty/downloader/zz;->c:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/d;->r:I

    iget-object v7, v1, Lcom/shabakaty/downloader/zz;->d:Lcom/shabakaty/downloader/wh1;

    iget v8, v1, Lcom/shabakaty/downloader/zz;->e:I

    iget-object v9, v1, Lcom/shabakaty/downloader/zz;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/shabakaty/downloader/zz;->g:J

    iget-wide v12, v1, Lcom/shabakaty/downloader/zz;->h:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/shabakaty/downloader/yq2$a;->e(Lcom/shabakaty/downloader/hj2;IILcom/shabakaty/downloader/wh1;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    if-nez v1, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->z()V

    .line 13
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->U:I

    if-lez v1, :cond_2

    .line 14
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/c;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/hls/c;->b(Lcom/shabakaty/downloader/o04;)V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Z:Ljava/util/Set;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public o()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->s()Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/source/hls/b;->H:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/b;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lcom/shabakaty/downloader/zz;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 11
    invoke-virtual {v5}, Lcom/shabakaty/downloader/bx3;->o()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final p([Lcom/shabakaty/downloader/bp4;)Lcom/shabakaty/downloader/cp4;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p1, v1

    .line 3
    iget v3, v2, Lcom/shabakaty/downloader/bp4;->r:I

    new-array v3, v3, [Lcom/shabakaty/downloader/wh1;

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget v5, v2, Lcom/shabakaty/downloader/bp4;->r:I

    if-ge v4, v5, :cond_0

    .line 5
    iget-object v5, v2, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v5, v5, v4

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->w:Lcom/shabakaty/downloader/u01;

    .line 7
    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/u01;->d(Lcom/shabakaty/downloader/wh1;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/wh1;->b(Ljava/lang/Class;)Lcom/shabakaty/downloader/wh1;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/cp4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    return-object v0
.end method

.method public final r(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_5

    move v0, p1

    .line 3
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/b;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/hls/b;->n:Z

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/b;

    const/4 v4, 0x0

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/hls/b;->g(I)I

    move-result v5

    .line 8
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v6

    if-le v6, v5, :cond_2

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_5
    if-ne p1, v2, :cond_6

    return-void

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->s()Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object v0

    iget-wide v8, v0, Lcom/shabakaty/downloader/zz;->h:J

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/b;

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/shabakaty/downloader/sy4;->M(Ljava/util/List;II)V

    const/4 p1, 0x0

    .line 12
    :goto_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v2, v2

    if-ge p1, v2, :cond_7

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/b;->g(I)I

    move-result v2

    .line 14
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/bx3;->l(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->f0:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    goto :goto_7

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/collect/u;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/b;

    .line 18
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/source/hls/b;->J:Z

    .line 19
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->j0:Z

    .line 20
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->A:Lcom/shabakaty/downloader/yq2$a;

    iget v5, p0, Lcom/google/android/exoplayer2/source/hls/d;->Q:I

    iget-wide v6, v0, Lcom/shabakaty/downloader/zz;->g:J

    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/yq2$a;->p(IJJ)V

    return-void
.end method

.method public final s()Lcom/google/android/exoplayer2/source/hls/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/b;

    return-object v0
.end method

.method public t(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->K:Lcom/shabakaty/downloader/zz;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->m:Ljava/io/IOException;

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/f81;->u(JLcom/shabakaty/downloader/zz;Ljava/util/List;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij2;->a()V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-lez v0, :cond_4

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/b;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/hls/a;->b(Lcom/google/android/exoplayer2/source/hls/b;)I

    move-result v2

    if-ne v2, v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/d;->r(I)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->E:Ljava/util/List;

    .line 15
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->m:Ljava/io/IOException;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v3}, Lcom/shabakaty/downloader/hp4;->length()I

    move-result v3

    if-ge v3, v1, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/a;->p:Lcom/shabakaty/downloader/f81;

    invoke-interface {v0, p1, p2, v2}, Lcom/shabakaty/downloader/f81;->n(JLjava/util/List;)I

    move-result p1

    goto :goto_3

    .line 17
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 18
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->D:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/d;->r(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final v()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->g0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->X:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->S:Z

    if-nez v0, :cond_0

    goto/16 :goto_11

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    .line 5
    iget v0, v0, Lcom/shabakaty/downloader/cp4;->r:I

    .line 6
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    .line 7
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_a

    const/4 v5, 0x0

    .line 8
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 9
    aget-object v6, v6, v5

    .line 10
    invoke-virtual {v6}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 12
    iget-object v7, v7, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v7, v7, v3

    .line 13
    iget-object v7, v7, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v7, v7, v2

    .line 14
    iget-object v8, v6, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 15
    iget-object v9, v7, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 16
    invoke-static {v8}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v1, :cond_3

    .line 17
    invoke-static {v9}, Lcom/shabakaty/downloader/nt2;->i(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    .line 20
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 21
    :cond_5
    iget v6, v6, Lcom/shabakaty/downloader/wh1;->U:I

    iget v7, v7, Lcom/shabakaty/downloader/wh1;->U:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_8

    .line 22
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    aput v5, v6, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pt1;

    .line 24
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pt1;->a()V

    goto :goto_7

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v0, v0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, -0x1

    :goto_8
    const/4 v9, 0x2

    if-ge v6, v0, :cond_11

    .line 26
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v10, v10, v6

    .line 27
    invoke-virtual {v10}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    invoke-static {v10}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v10, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    .line 28
    invoke-static {v10}, Lcom/shabakaty/downloader/nt2;->m(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_9

    .line 29
    :cond_c
    invoke-static {v10}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    .line 30
    :cond_d
    invoke-static {v10}, Lcom/shabakaty/downloader/nt2;->l(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x3

    goto :goto_9

    :cond_e
    const/4 v9, 0x7

    .line 31
    :goto_9
    invoke-static {v9}, Lcom/google/android/exoplayer2/source/hls/d;->u(I)I

    move-result v10

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/d;->u(I)I

    move-result v11

    if-le v10, v11, :cond_f

    move v8, v6

    move v7, v9

    goto :goto_a

    :cond_f
    if-ne v9, v7, :cond_10

    if-eq v8, v3, :cond_10

    const/4 v8, -0x1

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 32
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 33
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/a;->h:Lcom/shabakaty/downloader/bp4;

    .line 34
    iget v5, v1, Lcom/shabakaty/downloader/bp4;->r:I

    .line 35
    iput v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->b0:I

    .line 36
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_12

    .line 37
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->a0:[I

    aput v3, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 38
    :cond_12
    new-array v3, v0, [Lcom/shabakaty/downloader/bp4;

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v0, :cond_17

    .line 39
    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    invoke-static {v10}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v6, v8, :cond_15

    .line 40
    new-array v11, v5, [Lcom/shabakaty/downloader/wh1;

    if-ne v5, v4, :cond_13

    .line 41
    iget-object v12, v1, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v12, v12, v2

    .line 42
    invoke-virtual {v10, v12}, Lcom/shabakaty/downloader/wh1;->e(Lcom/shabakaty/downloader/wh1;)Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    aput-object v10, v11, v2

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    :goto_d
    if-ge v12, v5, :cond_14

    .line 43
    iget-object v13, v1, Lcom/shabakaty/downloader/bp4;->s:[Lcom/shabakaty/downloader/wh1;

    aget-object v13, v13, v12

    .line 44
    invoke-static {v13, v10, v4}, Lcom/google/android/exoplayer2/source/hls/d;->q(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 45
    :cond_14
    :goto_e
    new-instance v10, Lcom/shabakaty/downloader/bp4;

    invoke-direct {v10, v11}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v10, v3, v6

    .line 46
    iput v6, p0, Lcom/google/android/exoplayer2/source/hls/d;->b0:I

    goto :goto_10

    :cond_15
    if-ne v7, v9, :cond_16

    .line 47
    iget-object v11, v10, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-static {v11}, Lcom/shabakaty/downloader/nt2;->k(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 48
    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/d;->v:Lcom/shabakaty/downloader/wh1;

    goto :goto_f

    :cond_16
    const/4 v11, 0x0

    .line 49
    :goto_f
    new-instance v12, Lcom/shabakaty/downloader/bp4;

    new-array v13, v4, [Lcom/shabakaty/downloader/wh1;

    invoke-static {v11, v10, v2}, Lcom/google/android/exoplayer2/source/hls/d;->q(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1;Z)Lcom/shabakaty/downloader/wh1;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    aput-object v12, v3, v6

    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 50
    :cond_17
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/hls/d;->p([Lcom/shabakaty/downloader/bp4;)Lcom/shabakaty/downloader/cp4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Z:Ljava/util/Set;

    if-nez v0, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->Z:Ljava/util/Set;

    .line 53
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/c;->i()V

    :cond_19
    :goto_11
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->z:Lcom/shabakaty/downloader/ij2;

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2;->f(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->t:Lcom/google/android/exoplayer2/source/hls/a;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/a;->m:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/a;->n:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/hls/a;->r:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/a;->g:Lcom/shabakaty/downloader/ot1;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ot1;->b(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    throw v1
.end method

.method public varargs y([Lcom/shabakaty/downloader/bp4;I[I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/d;->p([Lcom/shabakaty/downloader/bp4;)Lcom/shabakaty/downloader/cp4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->Z:Ljava/util/Set;

    .line 3
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p3, v0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->Z:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/d;->Y:Lcom/shabakaty/downloader/cp4;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/cp4;->s:[Lcom/shabakaty/downloader/bp4;

    aget-object v1, v3, v1

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->b0:I

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->H:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->s:Lcom/google/android/exoplayer2/source/hls/d$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/shabakaty/downloader/rr;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/google/android/exoplayer2/source/hls/d$b;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->T:Z

    return-void
.end method

.method public final z()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->L:[Lcom/google/android/exoplayer2/source/hls/d$d;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/d;->h0:Z

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/d;->h0:Z

    return-void
.end method
