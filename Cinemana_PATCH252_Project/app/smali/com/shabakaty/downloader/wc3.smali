.class public final Lcom/shabakaty/downloader/wc3;
.super Ljava/lang/Object;
.source "PlaybackEventsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/bd3$c;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public A:J

.field public B:I

.field public C:Ljava/lang/Integer;

.field public D:Lcom/shabakaty/downloader/mu0;

.field public E:Lcom/shabakaty/downloader/t43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/t43<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public F:Z

.field public G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o84;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lcom/shabakaty/downloader/o84;

.field public r:Lcom/shabakaty/downloader/s64;

.field public final s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public t:Landroid/content/Context;

.field public u:Lcom/shabakaty/downloader/zc3;

.field public v:I

.field public w:Z

.field public final x:Lcom/shabakaty/downloader/kf2;

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s64;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/content/Context;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoModel"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    iput-object p2, p0, Lcom/shabakaty/downloader/wc3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p3, p0, Lcom/shabakaty/downloader/wc3;->t:Landroid/content/Context;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/wc3;->w:Z

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/wc3$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/wc3$a;-><init>(Lcom/shabakaty/downloader/wc3;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/ng2;->a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wc3;->x:Lcom/shabakaty/downloader/kf2;

    .line 4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p2}, Lcom/shabakaty/downloader/t43;->f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;

    move-result-object p2

    .line 5
    new-instance p3, Lcom/shabakaty/downloader/g54;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 7
    invoke-direct {p3, v0}, Lcom/shabakaty/downloader/g54;-><init>(Lcom/shabakaty/downloader/wx3;)V

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/t43;->k(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/t43;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object p2

    .line 9
    new-instance p3, Lcom/shabakaty/downloader/vc3;

    invoke-direct {p3, p0, p1}, Lcom/shabakaty/downloader/vc3;-><init>(Lcom/shabakaty/downloader/wc3;I)V

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v0, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {p2, p3, p1, v0, v0}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/gu1;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/gu1;-><init>(Lcom/shabakaty/downloader/wc3;)V

    .line 12
    new-instance p3, Lcom/shabakaty/downloader/d53;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/d53;-><init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/in1;)V

    .line 13
    iput-object p3, p0, Lcom/shabakaty/downloader/wc3;->E:Lcom/shabakaty/downloader/t43;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wc3;->G:Ljava/util/List;

    return-void
.end method

.method public static final h(Lcom/shabakaty/downloader/wc3;Ljava/lang/Long;)V
    .locals 12

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->nativeTick(Ljava/lang/Object;)V

    const-class v0, Lcom/shabakaty/downloader/q5;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, p0, Lcom/shabakaty/downloader/wc3;->w:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x3e8

    const/16 v7, 0x1f4

    if-eqz v1, :cond_0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/wc3;->v:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/shabakaty/downloader/wc3;->v:I

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v8

    int-to-long v10, v7

    add-long/2addr v8, v10

    int-to-long v10, v6

    div-long/2addr v8, v10

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->t:Landroid/content/Context;

    const-string v10, "context"

    .line 5
    invoke-static {v1, v10}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v10, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v10, :cond_2

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v10, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v10, :cond_1

    .line 9
    new-instance v10, Lcom/shabakaty/downloader/q5;

    invoke-direct {v10, v1, v2}, Lcom/shabakaty/downloader/q5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/nn0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 11
    :cond_2
    :goto_0
    sget-object v1, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v10, p0, Lcom/shabakaty/downloader/wc3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 13
    iget-object v10, v10, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v10, v4, v8}, Lcom/shabakaty/downloader/q5;->d(Ljava/lang/String;ILjava/lang/Long;)V

    .line 15
    :goto_1
    iput v3, p0, Lcom/shabakaty/downloader/wc3;->v:I

    .line 16
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    iget v1, p0, Lcom/shabakaty/downloader/wc3;->B:I

    const/16 v8, 0xb4

    if-lt v1, v8, :cond_7

    .line 18
    iput v3, p0, Lcom/shabakaty/downloader/wc3;->B:I

    .line 19
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v8

    int-to-long v10, v7

    add-long/2addr v8, v10

    int-to-long v6, v6

    div-long/2addr v8, v6

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->t:Landroid/content/Context;

    const-string v3, "context"

    .line 21
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v3, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v3, :cond_5

    .line 23
    monitor-enter v0

    .line 24
    :try_start_1
    sget-object v3, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v3, :cond_4

    .line 25
    new-instance v3, Lcom/shabakaty/downloader/q5;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/q5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/nn0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 27
    :cond_5
    :goto_3
    sget-object v0, Lcom/shabakaty/downloader/q5;->g:Lcom/shabakaty/downloader/q5;

    if-nez v0, :cond_6

    goto :goto_4

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->s:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 29
    iget-object v1, v1, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 30
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/shabakaty/downloader/q5;->d(Ljava/lang/String;ILjava/lang/Long;)V

    goto :goto_4

    :cond_7
    add-int/2addr v1, v5

    .line 31
    iput v1, p0, Lcom/shabakaty/downloader/wc3;->B:I

    .line 32
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s64;->v0()V

    .line 34
    iget-object v0, v0, Lcom/shabakaty/downloader/s64;->d:Lcom/shabakaty/downloader/q71;

    .line 35
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 36
    iget-object v1, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-object v2, v1, Lcom/shabakaty/downloader/yc3;->k:Lcom/shabakaty/downloader/uq2$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/yc3;->b:Lcom/shabakaty/downloader/uq2$a;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/mp2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/q71;->C:Lcom/shabakaty/downloader/yc3;

    iget-wide v0, v0, Lcom/shabakaty/downloader/yc3;->q:J

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide v0

    goto :goto_5

    .line 38
    :cond_9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->K()J

    move-result-wide v0

    goto :goto_5

    .line 39
    :cond_a
    invoke-virtual {v0}, Lcom/shabakaty/downloader/q71;->O()J

    move-result-wide v0

    .line 40
    :goto_5
    iput-wide v0, p0, Lcom/shabakaty/downloader/wc3;->A:J

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 42
    invoke-virtual {v0}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/wc3;->j(J)V

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wc3;->c()Lcom/shabakaty/downloader/ja3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ja3;->a()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    .line 45
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 46
    invoke-virtual {p1}, Lcom/shabakaty/downloader/s64;->h()I

    move-result p1

    if-ne p1, v4, :cond_c

    .line 47
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    iget-wide v0, p0, Lcom/shabakaty/downloader/wc3;->y:J

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/zc3;->j(J)V

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public synthetic A(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->s(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public synthetic D(Lcom/shabakaty/downloader/dp2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->f(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/dp2;I)V

    return-void
.end method

.method public synthetic E(Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->b(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/bd3;Lcom/shabakaty/downloader/bd3$d;)V

    return-void
.end method

.method public H(ZI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1
    :goto_0
    iput-boolean v3, p0, Lcom/shabakaty/downloader/wc3;->w:Z

    if-nez v3, :cond_2

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    xor-int/2addr p1, v2

    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/zc3;->f(Z)V

    .line 3
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    if-ne p2, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/zc3;->b(Z)V

    :goto_2
    if-eq p2, v2, :cond_9

    const/4 p1, 0x3

    if-eq p2, p1, :cond_7

    const/4 p1, 0x4

    if-eq p2, p1, :cond_5

    goto :goto_3

    .line 4
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ak;->X()J

    move-result-wide p1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/s64;->C()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2, p1, p2, v0, v1}, Lcom/shabakaty/downloader/zc3;->i(JJ)V

    goto :goto_3

    .line 7
    :cond_7
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p1}, Lcom/shabakaty/downloader/zc3;->g()V

    goto :goto_3

    .line 8
    :cond_9
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s64;->g()V

    :goto_3
    return-void
.end method

.method public synthetic O(Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/cd3;->p(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V

    return-void
.end method

.method public synthetic P(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->q(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public synthetic R(Lcom/shabakaty/downloader/hp2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->g(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/hp2;)V

    return-void
.end method

.method public a(Lcom/shabakaty/downloader/xc3;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    instance-of v0, v0, Ljava/lang/NullPointerException;

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/zc3;->a(Lcom/shabakaty/downloader/xc3;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wc3;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->C:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->G:Ljava/util/List;

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/m50;->c0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/o84;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-wide v1, v0, Lcom/shabakaty/downloader/o84;->s:J

    .line 8
    iget-object v3, p0, Lcom/shabakaty/downloader/wc3;->G:Ljava/util/List;

    .line 9
    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o84;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-wide v6, v3, Lcom/shabakaty/downloader/o84;->s:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ak;->X()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-lez v3, :cond_5

    .line 13
    iget-wide v1, v0, Lcom/shabakaty/downloader/o84;->s:J

    long-to-double v1, v1

    .line 14
    iget-object v3, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    .line 15
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ak;->X()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v8

    cmpl-double v3, v1, v6

    if-lez v3, :cond_5

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v1, v0, v5}, Lcom/shabakaty/downloader/zc3;->h(Lcom/shabakaty/downloader/o84;Z)V

    goto :goto_4

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v1, :cond_6

    goto :goto_4

    .line 18
    :cond_6
    invoke-interface {v1, v0, v4}, Lcom/shabakaty/downloader/zc3;->h(Lcom/shabakaty/downloader/o84;Z)V

    goto :goto_4

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wc3;->e()Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    if-nez v0, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/zc3;->k(Lcom/shabakaty/downloader/o84;)V

    :goto_3
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/shabakaty/downloader/wc3;->H:Lcom/shabakaty/downloader/o84;

    :cond_a
    :goto_4
    return-void
.end method

.method public synthetic b0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->h(Lcom/shabakaty/downloader/bd3$c;ZI)V

    return-void
.end method

.method public final c()Lcom/shabakaty/downloader/ja3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->x:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ja3;

    return-object v0
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->k(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public final e()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->G:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/shabakaty/downloader/o84;

    .line 3
    iget-wide v6, p0, Lcom/shabakaty/downloader/wc3;->y:J

    .line 4
    iget-wide v8, v3, Lcom/shabakaty/downloader/o84;->r:J

    cmp-long v4, v6, v8

    if-ltz v4, :cond_0

    .line 5
    iget-wide v3, v3, Lcom/shabakaty/downloader/o84;->s:J

    const/16 v8, 0x7d0

    int-to-long v8, v8

    sub-long/2addr v3, v8

    cmp-long v8, v6, v3

    if-gtz v8, :cond_0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wc3;->C:Ljava/lang/Integer;

    const/4 v0, 0x1

    return v0

    :cond_0
    move v2, v5

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/iq6;->x()V

    throw v4

    .line 8
    :cond_2
    iput-object v4, p0, Lcom/shabakaty/downloader/wc3;->C:Ljava/lang/Integer;

    return v1
.end method

.method public synthetic f(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->e(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public synthetic g(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->o(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public synthetic i(Lcom/shabakaty/downloader/ad3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->i(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/ad3;)V

    return-void
.end method

.method public final j(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/wc3;->z:J

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wc3;->F:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/shabakaty/downloader/wc3;->y:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/wc3;->y:J

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/shabakaty/downloader/wc3;->A:J

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/shabakaty/downloader/zc3;->c(JJ)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wc3;->b()V

    :cond_1
    return-void
.end method

.method public synthetic k0(Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/ip4;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->v(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/cp4;Lcom/shabakaty/downloader/ip4;)V

    return-void
.end method

.method public synthetic l(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->t(Lcom/shabakaty/downloader/bd3$c;Ljava/util/List;)V

    return-void
.end method

.method public synthetic m0(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->d(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public synthetic o(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->c(Lcom/shabakaty/downloader/bd3$c;Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-static {p1, p2, v0}, Lcom/shabakaty/cinemana/ca1/Player94;->scrubMove(Landroid/widget/SeekBar;ILjava/lang/Object;)V

    :cond_0
    int-to-long p1, p2

    .line 2
    iget-boolean p3, p0, Lcom/shabakaty/downloader/wc3;->F:Z

    if-eqz p3, :cond_2

    iget-wide v0, p0, Lcom/shabakaty/downloader/wc3;->y:J

    cmp-long p3, v0, p1

    if-eqz p3, :cond_2

    .line 3
    iput-wide p1, p0, Lcom/shabakaty/downloader/wc3;->y:J

    .line 4
    iget-object p3, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/wc3;->A:J

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/shabakaty/downloader/zc3;->c(JJ)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wc3;->b()V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Player94;->scrubStart(Landroid/widget/SeekBar;)V

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/wc3;->F:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/zc3;->d()V

    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/wc3;->r:Lcom/shabakaty/downloader/s64;

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Player94;->scrubStop(Landroid/widget/SeekBar;Ljava/lang/Object;)V

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/wc3;->F:Z

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/wc3;->u:Lcom/shabakaty/downloader/zc3;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/zc3;->e()V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public synthetic q(Lcom/shabakaty/downloader/bd3$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->a(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/bd3$b;)V

    return-void
.end method

.method public synthetic u(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->j(Lcom/shabakaty/downloader/bd3$c;I)V

    return-void
.end method

.method public synthetic w(Lcom/shabakaty/downloader/xc3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/cd3;->m(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/xc3;)V

    return-void
.end method

.method public synthetic x(Lcom/shabakaty/downloader/nn4;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/cd3;->u(Lcom/shabakaty/downloader/bd3$c;Lcom/shabakaty/downloader/nn4;I)V

    return-void
.end method
