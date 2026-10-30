.class public final Lcom/google/android/exoplayer2/source/rtsp/f;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/kp2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/f$d;,
        Lcom/google/android/exoplayer2/source/rtsp/f$e;,
        Lcom/google/android/exoplayer2/source/rtsp/f$f;,
        Lcom/google/android/exoplayer2/source/rtsp/f$b;,
        Lcom/google/android/exoplayer2/source/rtsp/f$c;
    }
.end annotation


# instance fields
.field public A:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/bp4;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/io/IOException;

.field public C:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$b;

.field public D:J

.field public E:J

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:Z

.field public final r:Lcom/shabakaty/downloader/fn0;

.field public final s:Landroid/os/Handler;

.field public final t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

.field public final u:Lcom/google/android/exoplayer2/source/rtsp/d;

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/rtsp/f$e;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/rtsp/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/google/android/exoplayer2/source/rtsp/f$c;

.field public final y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

.field public z:Lcom/shabakaty/downloader/kp2$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fn0;Lcom/google/android/exoplayer2/source/rtsp/a$a;Landroid/net/Uri;Lcom/google/android/exoplayer2/source/rtsp/f$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->r:Lcom/shabakaty/downloader/fn0;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->y:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->s:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/f$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/rtsp/f$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lcom/google/android/exoplayer2/source/rtsp/f$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->t:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 7
    new-instance p2, Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {p2, p1, p1, p5, p3}, Lcom/google/android/exoplayer2/source/rtsp/d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d$f;Lcom/google/android/exoplayer2/source/rtsp/d$e;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/source/rtsp/f;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->G:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->H:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 4
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->H:Z

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "initialCapacity"

    .line 8
    invoke-static {v3, v4}, Lcom/google/common/collect/f;->b(ILjava/lang/String;)I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 10
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 11
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/bp4;

    new-array v8, v1, [Lcom/shabakaty/downloader/wh1;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/bx3;->t()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v6, v8, v0

    .line 14
    invoke-direct {v7, v8}, Lcom/shabakaty/downloader/bp4;-><init>([Lcom/shabakaty/downloader/wh1;)V

    add-int/lit8 v6, v5, 0x1

    .line 15
    array-length v8, v3

    if-ge v8, v6, :cond_3

    .line 16
    array-length v8, v3

    .line 17
    invoke-static {v8, v6}, Lcom/google/common/collect/n$b;->a(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 18
    :cond_3
    aput-object v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v3, v5}, Lcom/google/common/collect/p;->s([Ljava/lang/Object;I)Lcom/google/common/collect/p;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->A:Lcom/google/common/collect/p;

    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->z:Lcom/shabakaty/downloader/kp2$a;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/kp2$a;->f(Lcom/shabakaty/downloader/kp2;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/kp2$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->z:Lcom/shabakaty/downloader/kp2$a;

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/d;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->B:Ljava/io/IOException;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    sget p2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/d;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public C0([Lcom/shabakaty/downloader/f81;[Z[Lcom/shabakaty/downloader/dx3;[ZJ)J
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 3
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 5
    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_5

    .line 6
    aget-object v1, p1, p2

    if-nez v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {v1}, Lcom/shabakaty/downloader/hp4;->b()Lcom/shabakaty/downloader/bp4;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->A:Lcom/google/common/collect/p;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v1}, Lcom/google/common/collect/p;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 12
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->A:Lcom/google/common/collect/p;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/p;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    aget-object v1, p3, p2

    if-nez v1, :cond_4

    .line 16
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/f$f;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/source/rtsp/f$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;I)V

    aput-object v1, p3, p2

    .line 17
    aput-boolean v2, p4, p2

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 18
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 20
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 22
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->I:Z

    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/f;->d()V

    return-wide p5
.end method

.method public D0()Lcom/shabakaty/downloader/cp4;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->H:Z

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/cp4;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->A:Lcom/google/common/collect/p;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/shabakaty/downloader/bp4;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/common/collect/n;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/bp4;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/cp4;-><init>([Lcom/shabakaty/downloader/bp4;)V

    return-object v0
.end method

.method public M0(JZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 4
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v2, :cond_1

    .line 5
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/shabakaty/downloader/bx3;->i(JZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

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

.method public c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/f;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 3
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->I:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Ljava/util/List;

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->w:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/d;->b()V

    :cond_2
    return-void
.end method

.method public d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->B:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method

.method public e(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(JLcom/shabakaty/downloader/wz3;)J
    .locals 0

    return-wide p1
.end method

.method public o()J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->F:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

    return-wide v0

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 5
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 6
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v8, :cond_2

    .line 7
    iget-object v5, v7, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/bx3;->o()J

    move-result-wide v7

    .line 8
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 9
    :cond_4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->D:J

    :cond_5
    return-wide v3

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public p0(J)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 5
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 6
    invoke-virtual {v2, p1, p2, v0}, Lcom/shabakaty/downloader/bx3;->G(JZ)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    return-wide p1

    .line 7
    :cond_3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->D:J

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->E:J

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->u:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 10
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->y:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Landroid/net/Uri;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->A:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v6, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    const/4 v7, 0x5

    .line 13
    invoke-virtual {v2, v7, v5, v6, v4}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->a(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/shabakaty/downloader/ev3;

    move-result-object v4

    .line 14
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/rtsp/d$d;->c(Lcom/shabakaty/downloader/ev3;)V

    .line 15
    iput-wide p1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->F:J

    const/4 v1, 0x0

    .line 16
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/f;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;

    .line 18
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->d:Z

    if-nez v4, :cond_4

    .line 19
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->a:Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 20
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 21
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 22
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v5, v4, Lcom/shabakaty/downloader/uu3;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 24
    :try_start_0
    iput-boolean v3, v4, Lcom/shabakaty/downloader/uu3;->k:Z

    .line 25
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 27
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/bx3;->E(Z)V

    .line 28
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/rtsp/f$e;->c:Lcom/shabakaty/downloader/bx3;

    .line 29
    iput-wide p1, v2, Lcom/shabakaty/downloader/bx3;->u:J

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-wide p1
.end method

.method public t(J)V
    .locals 0

    return-void
.end method

.method public x0()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
