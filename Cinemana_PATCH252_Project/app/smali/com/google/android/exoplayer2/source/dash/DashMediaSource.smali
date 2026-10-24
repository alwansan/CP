.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/shabakaty/downloader/rj;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final A:Lcom/google/android/exoplayer2/source/dash/a$a;

.field public final B:Lcom/shabakaty/downloader/kd;

.field public final C:Lcom/shabakaty/downloader/u01;

.field public final D:Lcom/shabakaty/downloader/gj2;

.field public final E:Lcom/shabakaty/downloader/ok;

.field public final F:J

.field public final G:Lcom/shabakaty/downloader/yq2$a;

.field public final H:Lcom/shabakaty/downloader/ra3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ra3$a<",
            "+",
            "Lcom/shabakaty/downloader/zk0;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

.field public final J:Ljava/lang/Object;

.field public final K:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/b;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Ljava/lang/Runnable;

.field public final M:Ljava/lang/Runnable;

.field public final N:Lcom/google/android/exoplayer2/source/dash/d$b;

.field public final O:Lcom/shabakaty/downloader/kj2;

.field public P:Lcom/shabakaty/downloader/vl0;

.field public Q:Lcom/shabakaty/downloader/ij2;

.field public R:Lcom/shabakaty/downloader/sp4;

.field public S:Ljava/io/IOException;

.field public T:Landroid/os/Handler;

.field public U:Lcom/shabakaty/downloader/dp2$f;

.field public V:Landroid/net/Uri;

.field public W:Landroid/net/Uri;

.field public X:Lcom/shabakaty/downloader/zk0;

.field public Y:Z

.field public Z:J

.field public a0:J

.field public b0:J

.field public c0:I

.field public d0:J

.field public e0:I

.field public final x:Lcom/shabakaty/downloader/dp2;

.field public final y:Z

.field public final z:Lcom/shabakaty/downloader/vl0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/t71;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/vl0$a;Lcom/shabakaty/downloader/ra3$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/shabakaty/downloader/kd;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/gj2;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/rj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:Lcom/shabakaty/downloader/dp2$f;

    .line 4
    iget-object p2, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:Landroid/net/Uri;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/dp2;->b:Lcom/shabakaty/downloader/dp2$g;

    iget-object p1, p1, Lcom/shabakaty/downloader/dp2$g;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->W:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lcom/shabakaty/downloader/vl0$a;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lcom/shabakaty/downloader/ra3$a;

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 12
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Lcom/shabakaty/downloader/u01;

    .line 13
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    .line 14
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:J

    .line 15
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Lcom/shabakaty/downloader/kd;

    .line 16
    new-instance p2, Lcom/shabakaty/downloader/ok;

    invoke-direct {p2}, Lcom/shabakaty/downloader/ok;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lcom/shabakaty/downloader/ok;

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->s(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yq2$a;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    .line 19
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:Ljava/lang/Object;

    .line 20
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    .line 21
    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    invoke-direct {p3, p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:Lcom/google/android/exoplayer2/source/dash/d$b;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0:J

    .line 23
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    .line 24
    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    invoke-direct {p3, p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lcom/shabakaty/downloader/kj2;

    .line 26
    new-instance p1, Lcom/shabakaty/downloader/cl0;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/cl0;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ljava/lang/Runnable;

    .line 27
    new-instance p1, Lcom/shabakaty/downloader/cl0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/cl0;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Ljava/lang/Runnable;

    return-void
.end method

.method public static y(Lcom/shabakaty/downloader/vb3;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l4;

    iget v2, v2, Lcom/shabakaty/downloader/l4;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v0
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/ra3;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ra3<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v14, Lcom/shabakaty/downloader/hj2;

    iget-wide v3, v1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v5, v1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ra3;->d:Lcom/shabakaty/downloader/uc4;

    .line 3
    iget-object v6, v2, Lcom/shabakaty/downloader/uc4;->c:Landroid/net/Uri;

    .line 4
    iget-object v7, v2, Lcom/shabakaty/downloader/uc4;->d:Ljava/util/Map;

    .line 5
    iget-wide v12, v2, Lcom/shabakaty/downloader/uc4;->b:J

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 6
    invoke-direct/range {v2 .. v13}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 7
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    iget v1, v1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {v2, v14, v1}, Lcom/shabakaty/downloader/yq2$a;->d(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public final B(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    return-void
.end method

.method public final C(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    return-void
.end method

.method public final D(Z)V
    .locals 39

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ge v2, v3, :cond_8

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3
    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    if-lt v3, v7, :cond_7

    .line 4
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/b;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    sub-int/2addr v3, v9

    .line 5
    iput-object v8, v7, Lcom/google/android/exoplayer2/source/dash/b;->L:Lcom/shabakaty/downloader/zk0;

    .line 6
    iput v3, v7, Lcom/google/android/exoplayer2/source/dash/b;->M:I

    .line 7
    iget-object v9, v7, Lcom/google/android/exoplayer2/source/dash/b;->D:Lcom/google/android/exoplayer2/source/dash/d;

    .line 8
    iput-boolean v1, v9, Lcom/google/android/exoplayer2/source/dash/d;->z:Z

    .line 9
    iput-wide v4, v9, Lcom/google/android/exoplayer2/source/dash/d;->x:J

    .line 10
    iput-object v8, v9, Lcom/google/android/exoplayer2/source/dash/d;->w:Lcom/shabakaty/downloader/zk0;

    .line 11
    iget-object v4, v9, Lcom/google/android/exoplayer2/source/dash/d;->v:Ljava/util/TreeMap;

    .line 12
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 13
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 16
    iget-object v5, v9, Lcom/google/android/exoplayer2/source/dash/d;->w:Lcom/shabakaty/downloader/zk0;

    iget-wide v12, v5, Lcom/shabakaty/downloader/zk0;->h:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_0

    .line 17
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    if-eqz v4, :cond_3

    .line 19
    array-length v5, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_2

    aget-object v10, v4, v9

    .line 20
    iget-object v10, v10, Lcom/shabakaty/downloader/d00;->v:Lcom/shabakaty/downloader/e00;

    .line 21
    check-cast v10, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v10, v8, v3}, Lcom/google/android/exoplayer2/source/dash/a;->d(Lcom/shabakaty/downloader/zk0;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 22
    :cond_2
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/dash/b;->H:Lcom/shabakaty/downloader/kp2$a;

    invoke-interface {v4, v7}, Lcom/shabakaty/downloader/o04$a;->b(Lcom/shabakaty/downloader/o04;)V

    .line 23
    :cond_3
    iget-object v4, v8, Lcom/shabakaty/downloader/zk0;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/vb3;

    .line 24
    iget-object v4, v4, Lcom/shabakaty/downloader/vb3;->d:Ljava/util/List;

    iput-object v4, v7, Lcom/google/android/exoplayer2/source/dash/b;->N:Ljava/util/List;

    .line 25
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/dash/b;->J:[Lcom/shabakaty/downloader/w51;

    array-length v5, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_7

    aget-object v10, v4, v9

    .line 26
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/dash/b;->N:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/c61;

    .line 27
    invoke-virtual {v12}, Lcom/shabakaty/downloader/c61;->a()Ljava/lang/String;

    move-result-object v13

    .line 28
    iget-object v14, v10, Lcom/shabakaty/downloader/w51;->v:Lcom/shabakaty/downloader/c61;

    invoke-virtual {v14}, Lcom/shabakaty/downloader/c61;->a()Ljava/lang/String;

    move-result-object v14

    .line 29
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 30
    invoke-virtual {v8}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v11

    sub-int/2addr v11, v6

    .line 31
    iget-boolean v13, v8, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v13, :cond_5

    if-ne v3, v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v10, v12, v11}, Lcom/shabakaty/downloader/w51;->c(Lcom/shabakaty/downloader/c61;Z)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 32
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v2

    .line 33
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v3

    sub-int/2addr v3, v6

    .line 34
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v7, v3}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v7

    .line 35
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    invoke-virtual {v8, v3}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide v8

    .line 36
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/sy4;->v(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v10

    .line 37
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 38
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide v12

    .line 39
    iget-wide v14, v2, Lcom/shabakaty/downloader/vb3;->b:J

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v14

    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y(Lcom/shabakaty/downloader/vb3;)Z

    move-result v3

    move-wide v4, v14

    const/4 v6, 0x0

    .line 41
    :goto_5
    iget-object v1, v2, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x3

    move-wide/from16 v17, v8

    if-ge v6, v1, :cond_e

    .line 42
    iget-object v1, v2, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/l4;

    .line 43
    iget-object v8, v1, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 44
    iget v1, v1, Lcom/shabakaty/downloader/l4;->b:I

    if-eq v1, v0, :cond_d

    .line 45
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 46
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/ur3;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 47
    :cond_b
    invoke-interface {v1, v12, v13, v10, v11}, Lcom/shabakaty/downloader/dl0;->P0(JJ)J

    move-result-wide v8

    const-wide/16 v19, 0x0

    cmp-long v21, v8, v19

    if-nez v21, :cond_c

    goto :goto_7

    .line 48
    :cond_c
    invoke-interface {v1, v12, v13, v10, v11}, Lcom/shabakaty/downloader/dl0;->K(JJ)J

    move-result-wide v8

    .line 49
    invoke-interface {v1, v8, v9}, Lcom/shabakaty/downloader/dl0;->d(J)J

    move-result-wide v0

    add-long/2addr v0, v14

    .line 50
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_d
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v8, v17

    goto :goto_5

    :cond_e
    move-wide v14, v4

    .line 51
    :goto_7
    iget-wide v3, v7, Lcom/shabakaty/downloader/vb3;->b:J

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v3

    .line 52
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y(Lcom/shabakaty/downloader/vb3;)Z

    move-result v1

    const-wide v5, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 53
    :goto_8
    iget-object v9, v7, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_14

    .line 54
    iget-object v9, v7, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/l4;

    .line 55
    iget-object v12, v9, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    if-eqz v1, :cond_f

    .line 56
    iget v9, v9, Lcom/shabakaty/downloader/l4;->b:I

    if-eq v9, v0, :cond_10

    .line 57
    :cond_f
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_10
    move/from16 v25, v1

    move-wide/from16 v12, v17

    goto :goto_a

    :cond_11
    const/4 v9, 0x0

    .line 58
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ur3;

    invoke-virtual {v12}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v9

    if-nez v9, :cond_12

    add-long v3, v3, v17

    :goto_9
    move-object/from16 v0, p0

    goto :goto_b

    :cond_12
    move-wide/from16 v12, v17

    .line 59
    invoke-interface {v9, v12, v13, v10, v11}, Lcom/shabakaty/downloader/dl0;->P0(JJ)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v22, v17, v19

    if-nez v22, :cond_13

    goto :goto_9

    .line 60
    :cond_13
    invoke-interface {v9, v12, v13, v10, v11}, Lcom/shabakaty/downloader/dl0;->K(JJ)J

    move-result-wide v22

    add-long v22, v22, v17

    move/from16 v25, v1

    const-wide/16 v17, 0x1

    sub-long v0, v22, v17

    .line 61
    invoke-interface {v9, v0, v1}, Lcom/shabakaty/downloader/dl0;->d(J)J

    move-result-wide v17

    add-long v17, v17, v3

    .line 62
    invoke-interface {v9, v0, v1, v12, v13}, Lcom/shabakaty/downloader/dl0;->D(JJ)J

    move-result-wide v0

    add-long v0, v0, v17

    .line 63
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v5, v0

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v17, v12

    move/from16 v1, v25

    const/4 v0, 0x3

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    move-wide v3, v5

    .line 64
    :goto_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    .line 65
    :goto_c
    iget-object v5, v7, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_17

    .line 66
    iget-object v5, v7, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/l4;

    iget-object v5, v5, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ur3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 67
    invoke-interface {v5}, Lcom/shabakaty/downloader/dl0;->G0()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_19

    .line 68
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v5, v5, Lcom/shabakaty/downloader/zk0;->f:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_19

    .line 69
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 70
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_19
    sub-long v32, v3, v14

    .line 71
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-boolean v4, v3, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v4, :cond_2b

    .line 72
    iget-wide v3, v3, Lcom/shabakaty/downloader/zk0;->a:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1a

    const/4 v3, 0x1

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    invoke-static {v3}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 73
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v3, v3, Lcom/shabakaty/downloader/zk0;->a:J

    .line 74
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v3

    sub-long/2addr v10, v3

    sub-long/2addr v10, v14

    .line 75
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    iget-object v3, v3, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v3, v3, Lcom/shabakaty/downloader/dp2$f;->c:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1b

    goto :goto_11

    .line 76
    :cond_1b
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v3, v3, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-eqz v3, :cond_1c

    iget-wide v3, v3, Lcom/shabakaty/downloader/g14;->c:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1c

    goto :goto_11

    .line 77
    :cond_1c
    invoke-static {v10, v11}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v3

    .line 78
    :goto_11
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    iget-object v7, v7, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v7, v7, Lcom/shabakaty/downloader/dp2$f;->b:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_1d

    move-wide v12, v5

    move-wide v5, v7

    goto :goto_12

    .line 79
    :cond_1d
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v7, v7, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-eqz v7, :cond_1e

    iget-wide v7, v7, Lcom/shabakaty/downloader/g14;->b:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_1e

    move-wide v5, v7

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_12

    :cond_1e
    sub-long v5, v10, v32

    .line 80
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_1f

    cmp-long v9, v3, v7

    if-lez v9, :cond_1f

    const-wide/16 v5, 0x0

    .line 81
    :cond_1f
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v7, v7, Lcom/shabakaty/downloader/zk0;->c:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v7, v12

    if-eqz v9, :cond_20

    add-long/2addr v5, v7

    .line 82
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 83
    :cond_20
    :goto_12
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v7, v7, Lcom/shabakaty/downloader/dp2$f;->a:J

    cmp-long v9, v7, v12

    if-eqz v9, :cond_21

    goto :goto_13

    .line 84
    :cond_21
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v8, v7, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-eqz v8, :cond_22

    iget-wide v8, v8, Lcom/shabakaty/downloader/g14;->a:J

    cmp-long v16, v8, v12

    if-eqz v16, :cond_22

    move-wide v7, v8

    goto :goto_13

    .line 85
    :cond_22
    iget-wide v7, v7, Lcom/shabakaty/downloader/zk0;->g:J

    cmp-long v9, v7, v12

    if-eqz v9, :cond_23

    goto :goto_13

    .line 86
    :cond_23
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:J

    :goto_13
    cmp-long v9, v7, v5

    if-gez v9, :cond_24

    move-wide v7, v5

    :cond_24
    const-wide/32 v12, 0x4c4b40

    const-wide/16 v17, 0x2

    cmp-long v9, v7, v3

    if-lez v9, :cond_25

    .line 87
    div-long v7, v32, v17

    .line 88
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long v7, v10, v7

    .line 89
    invoke-static {v7, v8}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v22

    move-wide/from16 v24, v5

    move-wide/from16 v26, v3

    .line 90
    invoke-static/range {v22 .. v27}, Lcom/shabakaty/downloader/sy4;->j(JJJ)J

    move-result-wide v7

    :cond_25
    move-wide/from16 v23, v7

    .line 91
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    iget-object v7, v7, Lcom/shabakaty/downloader/dp2;->c:Lcom/shabakaty/downloader/dp2$f;

    iget v8, v7, Lcom/shabakaty/downloader/dp2$f;->d:F

    const v9, -0x800001

    cmpl-float v22, v8, v9

    if-eqz v22, :cond_26

    goto :goto_14

    .line 92
    :cond_26
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v8, v8, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-eqz v8, :cond_27

    .line 93
    iget v8, v8, Lcom/shabakaty/downloader/g14;->d:F

    :goto_14
    move/from16 v29, v8

    goto :goto_15

    :cond_27
    const v29, -0x800001

    .line 94
    :goto_15
    iget v7, v7, Lcom/shabakaty/downloader/dp2$f;->e:F

    cmpl-float v8, v7, v9

    if-eqz v8, :cond_28

    goto :goto_16

    .line 95
    :cond_28
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v7, v7, Lcom/shabakaty/downloader/zk0;->j:Lcom/shabakaty/downloader/g14;

    if-eqz v7, :cond_29

    .line 96
    iget v7, v7, Lcom/shabakaty/downloader/g14;->e:F

    :goto_16
    move/from16 v30, v7

    goto :goto_17

    :cond_29
    const v30, -0x800001

    .line 97
    :goto_17
    new-instance v7, Lcom/shabakaty/downloader/dp2$f;

    move-object/from16 v22, v7

    move-wide/from16 v25, v5

    move-wide/from16 v27, v3

    invoke-direct/range {v22 .. v30}, Lcom/shabakaty/downloader/dp2$f;-><init>(JJJFF)V

    iput-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:Lcom/shabakaty/downloader/dp2$f;

    .line 98
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v3, v3, Lcom/shabakaty/downloader/zk0;->a:J

    .line 99
    invoke-static {v14, v15}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v5

    add-long v7, v5, v3

    .line 100
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:Lcom/shabakaty/downloader/dp2$f;

    iget-wide v3, v3, Lcom/shabakaty/downloader/dp2$f;->a:J

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v3

    sub-long/2addr v10, v3

    .line 101
    div-long v3, v32, v17

    .line 102
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    cmp-long v5, v10, v3

    if-gez v5, :cond_2a

    goto :goto_18

    :cond_2a
    move-wide v3, v10

    :goto_18
    move-wide/from16 v34, v3

    move-wide/from16 v25, v7

    goto :goto_19

    :cond_2b
    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v34, 0x0

    .line 103
    :goto_19
    iget-wide v2, v2, Lcom/shabakaty/downloader/vb3;->b:J

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v2

    sub-long v30, v14, v2

    .line 104
    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v4, v3, Lcom/shabakaty/downloader/zk0;->a:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    iget v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    .line 105
    iget-boolean v10, v3, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v10, :cond_2c

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:Lcom/shabakaty/downloader/dp2$f;

    goto :goto_1a

    :cond_2c
    const/4 v10, 0x0

    :goto_1a
    move-object/from16 v38, v10

    move-object/from16 v22, v2

    move-wide/from16 v23, v4

    move-wide/from16 v27, v6

    move/from16 v29, v8

    move-object/from16 v36, v3

    move-object/from16 v37, v9

    invoke-direct/range {v22 .. v38}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;-><init>(JJJIJJJLcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/dp2;Lcom/shabakaty/downloader/dp2$f;)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/rj;->w(Lcom/shabakaty/downloader/nn4;)V

    .line 107
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Z

    if-nez v2, :cond_3d

    .line 108
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_3a

    .line 109
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Ljava/lang/Runnable;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    .line 110
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/sy4;->v(J)J

    move-result-wide v6

    .line 111
    invoke-virtual {v5}, Lcom/shabakaty/downloader/zk0;->c()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 112
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v9

    .line 113
    iget-wide v10, v9, Lcom/shabakaty/downloader/vb3;->b:J

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v10

    .line 114
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/zk0;->e(I)J

    move-result-wide v12

    .line 115
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v6

    .line 116
    iget-wide v14, v5, Lcom/shabakaty/downloader/zk0;->a:J

    invoke-static {v14, v15}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v14

    .line 117
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v17

    const/4 v5, 0x0

    .line 118
    :goto_1b
    iget-object v8, v9, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_30

    .line 119
    iget-object v8, v9, Lcom/shabakaty/downloader/vb3;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/l4;

    iget-object v8, v8, Lcom/shabakaty/downloader/l4;->c:Ljava/util/List;

    .line 120
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2d

    const/4 v2, 0x0

    goto :goto_1c

    :cond_2d
    const/4 v2, 0x0

    .line 121
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ur3;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ur3;->b()Lcom/shabakaty/downloader/dl0;

    move-result-object v3

    if-eqz v3, :cond_2f

    add-long v24, v14, v10

    .line 122
    invoke-interface {v3, v12, v13, v6, v7}, Lcom/shabakaty/downloader/dl0;->O(JJ)J

    move-result-wide v26

    add-long v26, v26, v24

    sub-long v26, v26, v6

    const-wide/32 v24, 0x186a0

    sub-long v28, v17, v24

    cmp-long v3, v26, v28

    if-ltz v3, :cond_2e

    cmp-long v3, v26, v17

    if-lez v3, :cond_2f

    add-long v24, v17, v24

    cmp-long v3, v26, v24

    if-gez v3, :cond_2f

    :cond_2e
    move-wide/from16 v17, v26

    :cond_2f
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x1388

    goto :goto_1b

    :cond_30
    const/4 v2, 0x0

    const-wide/16 v5, 0x3e8

    .line 123
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 124
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    div-long v7, v17, v5

    mul-long v9, v7, v5

    sub-long v9, v17, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_31

    goto :goto_22

    :cond_31
    xor-long v11, v17, v5

    const/16 v14, 0x3f

    shr-long/2addr v11, v14

    long-to-int v12, v11

    const/4 v11, 0x1

    or-int/2addr v12, v11

    .line 126
    sget-object v14, Lcom/shabakaty/downloader/hl2;->a:[I

    invoke-virtual {v3}, Ljava/math/RoundingMode;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 127
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :pswitch_0
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v5, v9

    sub-long/2addr v9, v5

    const-wide/16 v5, 0x0

    cmp-long v13, v9, v5

    if-nez v13, :cond_35

    .line 130
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v3, v9, :cond_32

    const/4 v9, 0x1

    goto :goto_1d

    :cond_32
    const/4 v9, 0x0

    :goto_1d
    sget-object v10, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v3, v10, :cond_33

    const/4 v3, 0x1

    goto :goto_1e

    :cond_33
    const/4 v3, 0x0

    :goto_1e
    const-wide/16 v13, 0x1

    and-long/2addr v13, v7

    cmp-long v10, v13, v5

    if-eqz v10, :cond_34

    const/4 v2, 0x1

    :cond_34
    and-int/2addr v2, v3

    or-int/2addr v2, v9

    goto :goto_21

    :cond_35
    if-lez v13, :cond_37

    goto :goto_1f

    :pswitch_1
    if-lez v12, :cond_37

    goto :goto_1f

    :pswitch_2
    if-gez v12, :cond_37

    :goto_1f
    :pswitch_3
    const/4 v2, 0x1

    goto :goto_21

    :pswitch_4
    if-nez v13, :cond_36

    const/4 v6, 0x1

    goto :goto_20

    :cond_36
    const/4 v6, 0x0

    :goto_20
    if-eqz v6, :cond_39

    :cond_37
    :goto_21
    :pswitch_5
    if-eqz v2, :cond_38

    int-to-long v2, v12

    add-long/2addr v7, v2

    .line 131
    :cond_38
    :goto_22
    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 132
    :cond_39
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_3a
    :goto_23
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    if-eqz v1, :cond_3b

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    goto :goto_24

    :cond_3b
    if-eqz p1, :cond_3d

    .line 135
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-boolean v2, v1, Lcom/shabakaty/downloader/zk0;->d:Z

    if-eqz v2, :cond_3d

    iget-wide v1, v1, Lcom/shabakaty/downloader/zk0;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3d

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3c

    const-wide/16 v1, 0x1388

    .line 136
    :cond_3c
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Z:J

    add-long/2addr v5, v1

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 138
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    :goto_24
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Lcom/shabakaty/downloader/qz2;Lcom/shabakaty/downloader/ra3$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qz2;",
            "Lcom/shabakaty/downloader/ra3$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ra3;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Lcom/shabakaty/downloader/vl0;

    iget-object p1, p1, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/shabakaty/downloader/ra3;-><init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F(Lcom/shabakaty/downloader/ra3;Lcom/shabakaty/downloader/ij2$b;I)V

    return-void
.end method

.method public final F(Lcom/shabakaty/downloader/ra3;Lcom/shabakaty/downloader/ij2$b;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ra3<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ij2$b<",
            "Lcom/shabakaty/downloader/ra3<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    move-result-wide v5

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Lcom/shabakaty/downloader/yq2$a;

    new-instance p3, Lcom/shabakaty/downloader/hj2;

    iget-wide v2, p1, Lcom/shabakaty/downloader/ra3;->a:J

    iget-object v4, p1, Lcom/shabakaty/downloader/ra3;->b:Lcom/shabakaty/downloader/yl0;

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/hj2;-><init>(JLcom/shabakaty/downloader/yl0;J)V

    iget p1, p1, Lcom/shabakaty/downloader/ra3;->c:I

    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/yq2$a;->m(Lcom/shabakaty/downloader/hj2;I)V

    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ij2;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:Landroid/net/Uri;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/ra3;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Lcom/shabakaty/downloader/vl0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Lcom/shabakaty/downloader/ra3$a;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/shabakaty/downloader/ra3;-><init>(Lcom/shabakaty/downloader/vl0;Landroid/net/Uri;ILcom/shabakaty/downloader/ra3$a;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    .line 10
    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v2

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F(Lcom/shabakaty/downloader/ra3;Lcom/shabakaty/downloader/ij2$b;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d(Lcom/shabakaty/downloader/uq2$a;Lcom/shabakaty/downloader/fn0;J)Lcom/shabakaty/downloader/kp2;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/shabakaty/downloader/mp2;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    sub-int v8, v2, v3

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 3
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/zk0;->b(I)Lcom/shabakaty/downloader/vb3;

    move-result-object v2

    iget-wide v2, v2, Lcom/shabakaty/downloader/vb3;->b:J

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object v14

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    invoke-virtual {v2, v5, v1}, Lcom/shabakaty/downloader/s01$a;->g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object v12

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/b;

    move-object v4, v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    add-int/2addr v2, v8

    move v5, v2

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lcom/shabakaty/downloader/ok;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R:Lcom/shabakaty/downloader/sp4;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Lcom/shabakaty/downloader/u01;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Lcom/shabakaty/downloader/gj2;

    move-object/from16 p1, v1

    move/from16 p3, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    move-wide v15, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lcom/shabakaty/downloader/kj2;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Lcom/shabakaty/downloader/kd;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:Lcom/google/android/exoplayer2/source/dash/d$b;

    move-object/from16 v20, v1

    move-object/from16 v18, p2

    invoke-direct/range {v4 .. v20}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(ILcom/shabakaty/downloader/zk0;Lcom/shabakaty/downloader/ok;ILcom/google/android/exoplayer2/source/dash/a$a;Lcom/shabakaty/downloader/sp4;Lcom/shabakaty/downloader/u01;Lcom/shabakaty/downloader/s01$a;Lcom/shabakaty/downloader/gj2;Lcom/shabakaty/downloader/yq2$a;JLcom/shabakaty/downloader/kj2;Lcom/shabakaty/downloader/fn0;Lcom/shabakaty/downloader/kd;Lcom/google/android/exoplayer2/source/dash/d$b;)V

    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public h()Lcom/shabakaty/downloader/dp2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lcom/shabakaty/downloader/dp2;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lcom/shabakaty/downloader/kj2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kj2;->b()V

    return-void
.end method

.method public m(Lcom/shabakaty/downloader/kp2;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/b;->D:Lcom/google/android/exoplayer2/source/dash/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/d;->A:Z

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/d;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/b;->I:[Lcom/shabakaty/downloader/d00;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4, p1}, Lcom/shabakaty/downloader/d00;->u(Lcom/shabakaty/downloader/d00$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p1, Lcom/google/android/exoplayer2/source/dash/b;->H:Lcom/shabakaty/downloader/kp2$a;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b;->r:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public v(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R:Lcom/shabakaty/downloader/sp4;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Lcom/shabakaty/downloader/u01;

    invoke-interface {p1}, Lcom/shabakaty/downloader/u01;->g()V

    .line 3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lcom/shabakaty/downloader/vl0$a;

    invoke-interface {p1}, Lcom/shabakaty/downloader/vl0$a;->a()Lcom/shabakaty/downloader/vl0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Lcom/shabakaty/downloader/vl0;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/ij2;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    :goto_0
    return-void
.end method

.method public x()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Y:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Lcom/shabakaty/downloader/vl0;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ij2;->g(Lcom/shabakaty/downloader/ij2$f;)V

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    :cond_0
    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Z:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a0:J

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->X:Lcom/shabakaty/downloader/zk0;

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->W:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:Landroid/net/Uri;

    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:Ljava/io/IOException;

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:Landroid/os/Handler;

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b0:J

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c0:I

    .line 16
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d0:J

    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e0:I

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lcom/shabakaty/downloader/ok;

    .line 20
    iget-object v1, v0, Lcom/shabakaty/downloader/ok;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 21
    iget-object v1, v0, Lcom/shabakaty/downloader/ok;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 22
    iget-object v0, v0, Lcom/shabakaty/downloader/ok;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Lcom/shabakaty/downloader/u01;

    invoke-interface {v0}, Lcom/shabakaty/downloader/u01;->a()V

    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:Lcom/shabakaty/downloader/ij2;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    .line 2
    sget-object v2, Lcom/shabakaty/downloader/j94;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-boolean v3, Lcom/shabakaty/downloader/j94;->c:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ij2;

    const-string v2, "SntpClient"

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ij2;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v2, Lcom/shabakaty/downloader/j94$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/j94$d;-><init>(Lcom/shabakaty/downloader/j94$a;)V

    new-instance v3, Lcom/shabakaty/downloader/j94$c;

    invoke-direct {v3, v1}, Lcom/shabakaty/downloader/j94$c;-><init>(Lcom/shabakaty/downloader/j94$b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/shabakaty/downloader/ij2;->h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
