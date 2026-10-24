.class public final Lcom/shabakaty/downloader/hc4;
.super Lcom/shabakaty/downloader/a1;
.source "StateFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dw2;
.implements Lcom/shabakaty/downloader/te1;
.implements Lcom/shabakaty/downloader/go1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a1<",
        "Lcom/shabakaty/downloader/jc4;",
        ">;",
        "Lcom/shabakaty/downloader/dw2<",
        "TT;>;",
        "Lcom/shabakaty/downloader/go1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile synthetic _state:Ljava/lang/Object;

.field public v:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/a1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/hc4;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ic4;->b(Lcom/shabakaty/downloader/gc4;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/hc4;->setValue(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/hc4;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    instance-of v4, v2, Lcom/shabakaty/downloader/hc4$a;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/hc4$a;

    iget v5, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/shabakaty/downloader/hc4$a;

    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/hc4$a;-><init>(Lcom/shabakaty/downloader/hc4;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object v2, v4, Lcom/shabakaty/downloader/hc4$a;->u:Ljava/lang/Object;

    .line 1
    iget v5, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->B:Ljava/lang/Object;

    iget-object v5, v4, Lcom/shabakaty/downloader/hc4$a;->A:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/e92;

    iget-object v10, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    check-cast v10, Lcom/shabakaty/downloader/jc4;

    iget-object v11, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    check-cast v11, Lcom/shabakaty/downloader/ue1;

    iget-object v12, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/hc4;

    :try_start_0
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->B:Ljava/lang/Object;

    iget-object v5, v4, Lcom/shabakaty/downloader/hc4$a;->A:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/e92;

    iget-object v10, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    check-cast v10, Lcom/shabakaty/downloader/jc4;

    iget-object v11, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    check-cast v11, Lcom/shabakaty/downloader/ue1;

    iget-object v12, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    check-cast v12, Lcom/shabakaty/downloader/hc4;

    :try_start_1
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto/16 :goto_5

    :cond_3
    iget-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/shabakaty/downloader/jc4;

    iget-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ue1;

    iget-object v5, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Lcom/shabakaty/downloader/hc4;

    :try_start_2
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_4
    invoke-static {v2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/a1;->e()Lcom/shabakaty/downloader/c1;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/shabakaty/downloader/jc4;

    .line 5
    :try_start_3
    instance-of v2, v0, Lcom/shabakaty/downloader/df4;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/df4;

    iput-object v1, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    iput-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    iput-object v10, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    iput v9, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/df4;->a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v3, :cond_5

    return-object v3

    :cond_5
    move-object v12, v1

    .line 6
    :goto_1
    :try_start_4
    iget-object v2, v4, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v2, v5}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/e92;

    move-object v11, v0

    move-object v5, v2

    move-object v2, v3

    const/4 v0, 0x0

    .line 8
    :cond_6
    :goto_2
    iget-object v13, v12, Lcom/shabakaty/downloader/hc4;->_state:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 9
    invoke-interface {v5}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v5}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 10
    invoke-static {v0, v13}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    xor-int/2addr v14, v9

    if-eqz v14, :cond_c

    .line 11
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    if-ne v13, v0, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    move-object v0, v13

    .line 12
    :goto_4
    iput-object v12, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    iput-object v11, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    iput-object v10, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    iput-object v5, v4, Lcom/shabakaty/downloader/hc4$a;->A:Ljava/lang/Object;

    iput-object v13, v4, Lcom/shabakaty/downloader/hc4$a;->B:Ljava/lang/Object;

    iput v8, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    .line 13
    invoke-interface {v11, v0, v4}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_b

    return-object v2

    :cond_b
    move-object v0, v13

    .line 14
    :cond_c
    :goto_5
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v13, Lcom/shabakaty/downloader/jc4;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    sget-object v14, Lcom/shabakaty/downloader/ic4;->a:Lcom/shabakaty/downloader/j61;

    .line 17
    invoke-virtual {v13, v10, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 18
    sget-object v6, Lcom/shabakaty/downloader/ic4;->b:Lcom/shabakaty/downloader/j61;

    if-ne v15, v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_6

    .line 19
    iput-object v12, v4, Lcom/shabakaty/downloader/hc4$a;->x:Ljava/lang/Object;

    iput-object v11, v4, Lcom/shabakaty/downloader/hc4$a;->y:Ljava/lang/Object;

    iput-object v10, v4, Lcom/shabakaty/downloader/hc4$a;->z:Ljava/lang/Object;

    iput-object v5, v4, Lcom/shabakaty/downloader/hc4$a;->A:Ljava/lang/Object;

    iput-object v0, v4, Lcom/shabakaty/downloader/hc4$a;->B:Ljava/lang/Object;

    iput v7, v4, Lcom/shabakaty/downloader/hc4$a;->v:I

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/gv;

    invoke-static {v4}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v15

    invoke-direct {v6, v15, v9}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 21
    invoke-virtual {v6}, Lcom/shabakaty/downloader/gv;->F()V

    .line 22
    invoke-virtual {v13, v10, v14, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_7

    .line 23
    :cond_e
    sget-object v13, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v6, v13}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    .line 24
    :goto_7
    invoke-virtual {v6}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_f

    const-string v13, "frame"

    .line 25
    invoke-static {v4, v13}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    if-ne v6, v2, :cond_6

    return-object v2

    :catchall_1
    move-exception v0

    move-object v12, v1

    .line 26
    :goto_8
    invoke-virtual {v12, v10}, Lcom/shabakaty/downloader/a1;->i(Lcom/shabakaty/downloader/c1;)V

    throw v0
.end method

.method public f()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/shabakaty/downloader/c1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/jc4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/jc4;-><init>()V

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    iget-object v1, p0, Lcom/shabakaty/downloader/hc4;->_state:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public h(I)[Lcom/shabakaty/downloader/c1;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/jc4;

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/hc4;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    .line 2
    check-cast v0, [Lcom/shabakaty/downloader/jc4;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hc4;->_state:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_0

    monitor-exit p0

    return v1

    .line 6
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v2

    .line 7
    :cond_1
    :try_start_2
    iput-object p2, p0, Lcom/shabakaty/downloader/hc4;->_state:Ljava/lang/Object;

    .line 8
    iget p1, p0, Lcom/shabakaty/downloader/hc4;->v:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_9

    add-int/2addr p1, v2

    .line 9
    iput p1, p0, Lcom/shabakaty/downloader/hc4;->v:I

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    .line 11
    check-cast p2, [Lcom/shabakaty/downloader/jc4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    :goto_0
    if-eqz p2, :cond_7

    .line 13
    array-length v0, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    aget-object v4, p2, v3

    if-eqz v4, :cond_6

    .line 14
    :cond_2
    iget-object v5, v4, Lcom/shabakaty/downloader/jc4;->_state:Ljava/lang/Object;

    if-nez v5, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    sget-object v6, Lcom/shabakaty/downloader/ic4;->b:Lcom/shabakaty/downloader/j61;

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    sget-object v7, Lcom/shabakaty/downloader/ic4;->a:Lcom/shabakaty/downloader/j61;

    if-ne v5, v7, :cond_5

    .line 17
    sget-object v7, Lcom/shabakaty/downloader/jc4;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 18
    :cond_5
    sget-object v6, Lcom/shabakaty/downloader/jc4;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    check-cast v5, Lcom/shabakaty/downloader/gv;

    sget-object v4, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_7
    monitor-enter p0

    .line 21
    :try_start_3
    iget p2, p0, Lcom/shabakaty/downloader/hc4;->v:I

    if-ne p2, p1, :cond_8

    add-int/2addr p1, v2

    .line 22
    iput p1, p0, Lcom/shabakaty/downloader/hc4;->v:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    monitor-exit p0

    return v2

    .line 24
    :cond_8
    :try_start_4
    iget-object p1, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    .line 25
    check-cast p1, [Lcom/shabakaty/downloader/jc4;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_9
    add-int/lit8 p1, p1, 0x2

    .line 27
    :try_start_5
    iput p1, p0, Lcom/shabakaty/downloader/hc4;->v:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    monitor-exit p0

    return v2

    :catchall_1
    move-exception p1

    .line 29
    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/hc4;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
