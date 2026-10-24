.class public final Lcom/shabakaty/downloader/a54;
.super Lcom/shabakaty/downloader/a1;
.source "SharedFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cw2;
.implements Lcom/shabakaty/downloader/te1;
.implements Lcom/shabakaty/downloader/go1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a54$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/a1<",
        "Lcom/shabakaty/downloader/c54;",
        ">;",
        "Lcom/shabakaty/downloader/cw2<",
        "TT;>;",
        "Lcom/shabakaty/downloader/go1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Lcom/shabakaty/downloader/co;

.field public v:[Ljava/lang/Object;

.field public w:J

.field public x:J

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(IILcom/shabakaty/downloader/co;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/a1;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/a54;->A:I

    iput p2, p0, Lcom/shabakaty/downloader/a54;->B:I

    iput-object p3, p0, Lcom/shabakaty/downloader/a54;->C:Lcom/shabakaty/downloader/co;

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
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/downloader/b54;->a(Lcom/shabakaty/downloader/z44;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 10
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
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    .line 2
    :cond_0
    new-instance v6, Lcom/shabakaty/downloader/gv;

    invoke-static {p2}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 3
    invoke-virtual {v6}, Lcom/shabakaty/downloader/gv;->F()V

    .line 4
    sget-object v8, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->u(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v8}, Lcom/shabakaty/downloader/a54;->p([Lcom/shabakaty/downloader/ud0;)[Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_1
    new-instance v9, Lcom/shabakaty/downloader/a54$a;

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->s()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/a54$a;-><init>(Lcom/shabakaty/downloader/a54;JLjava/lang/Object;Lcom/shabakaty/downloader/ud0;)V

    .line 13
    invoke-virtual {p0, v9}, Lcom/shabakaty/downloader/a54;->o(Ljava/lang/Object;)V

    .line 14
    iget p1, p0, Lcom/shabakaty/downloader/a54;->z:I

    add-int/2addr p1, v7

    .line 15
    iput p1, p0, Lcom/shabakaty/downloader/a54;->z:I

    .line 16
    iget p1, p0, Lcom/shabakaty/downloader/a54;->B:I

    if-nez p1, :cond_2

    .line 17
    invoke-virtual {p0, v8}, Lcom/shabakaty/downloader/a54;->p([Lcom/shabakaty/downloader/ud0;)[Lcom/shabakaty/downloader/ud0;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object p1, v8

    move-object v0, v9

    .line 18
    :goto_0
    monitor-exit p0

    if-eqz v0, :cond_3

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/wu;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/wu;-><init>(Lcom/shabakaty/downloader/ou0;)V

    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    .line 20
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    sget-object v3, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {v6}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, v0, :cond_6

    const-string v1, "frame"

    .line 23
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    if-ne p1, v0, :cond_7

    return-object p1

    .line 24
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    throw p1
.end method

.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lcom/shabakaty/downloader/a54$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/a54$b;

    iget v1, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/a54$b;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/a54$b;-><init>(Lcom/shabakaty/downloader/a54;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/a54$b;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p1, v0, Lcom/shabakaty/downloader/a54$b;->A:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/e92;

    iget-object v2, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/c54;

    iget-object v5, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ue1;

    iget-object v6, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/a54;

    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_3
    iget-object p1, v0, Lcom/shabakaty/downloader/a54$b;->A:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/e92;

    iget-object v2, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/c54;

    iget-object v5, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/ue1;

    iget-object v6, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/a54;

    :try_start_1
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/c54;

    iget-object p1, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    iget-object v5, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/a54;

    :try_start_2
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a1;->e()Lcom/shabakaty/downloader/c1;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/shabakaty/downloader/c54;

    .line 5
    :try_start_3
    instance-of p2, p1, Lcom/shabakaty/downloader/df4;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/df4;

    iput-object p0, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/df4;->a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p0

    .line 6
    :goto_1
    :try_start_4
    iget-object p2, v0, Lcom/shabakaty/downloader/xd0;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {p2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 7
    sget-object v5, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {p2, v5}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/e92;

    :goto_2
    move-object v5, p1

    move-object p1, p2

    .line 8
    :cond_7
    :goto_3
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/a54;->w(Lcom/shabakaty/downloader/c54;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    if-eq p2, v7, :cond_a

    if-eqz p1, :cond_9

    .line 10
    invoke-interface {p1}, Lcom/shabakaty/downloader/e92;->c()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Lcom/shabakaty/downloader/e92;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1

    .line 11
    :cond_9
    :goto_4
    iput-object v6, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/a54$b;->A:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    invoke-interface {v5, p2, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    .line 12
    :cond_a
    iput-object v6, v0, Lcom/shabakaty/downloader/a54$b;->x:Ljava/lang/Object;

    iput-object v5, v0, Lcom/shabakaty/downloader/a54$b;->y:Ljava/lang/Object;

    iput-object v2, v0, Lcom/shabakaty/downloader/a54$b;->z:Ljava/lang/Object;

    iput-object p1, v0, Lcom/shabakaty/downloader/a54$b;->A:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/a54$b;->v:I

    invoke-virtual {v6, v2, v0}, Lcom/shabakaty/downloader/a54;->k(Lcom/shabakaty/downloader/c54;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_7

    return-object v1

    :catchall_1
    move-exception p1

    move-object v6, p0

    .line 13
    :goto_5
    invoke-virtual {v6, v2}, Lcom/shabakaty/downloader/a1;->i(Lcom/shabakaty/downloader/c1;)V

    throw p1
.end method

.method public f()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->q()J

    move-result-wide v1

    .line 3
    iget-wide v3, p0, Lcom/shabakaty/downloader/a54;->x:J

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->q()J

    move-result-wide v5

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v7

    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    iget v0, p0, Lcom/shabakaty/downloader/a54;->z:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    move-object v0, p0

    .line 6
    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/a54;->x(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Lcom/shabakaty/downloader/c1;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c54;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c54;-><init>()V

    return-object v0
.end method

.method public h(I)[Lcom/shabakaty/downloader/c1;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/shabakaty/downloader/c54;

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->u(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/a54;->p([Lcom/shabakaty/downloader/ud0;)[Lcom/shabakaty/downloader/ud0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit p0

    .line 6
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    sget-object v4, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    throw p1
.end method

.method public final k(Lcom/shabakaty/downloader/c54;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/c54;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gv;

    invoke-static {p2}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/shabakaty/downloader/gv;-><init>(Lcom/shabakaty/downloader/ud0;I)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->F()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->v(Lcom/shabakaty/downloader/c54;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/c54;->b:Lcom/shabakaty/downloader/ud0;

    .line 6
    iput-object v0, p1, Lcom/shabakaty/downloader/c54;->b:Lcom/shabakaty/downloader/ud0;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    throw p1
.end method

.method public final l()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a54;->B:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/a54;->z:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget v1, p0, Lcom/shabakaty/downloader/a54;->z:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->s()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    sget-object v3, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v2, v1

    .line 4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/a54;->z:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shabakaty/downloader/a54;->z:I

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->s()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    long-to-int v2, v1

    .line 8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    aput-object v3, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v1

    sget-object v3, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v2, v1

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 5
    iget-wide v2, p0, Lcom/shabakaty/downloader/a54;->w:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iput-wide v0, p0, Lcom/shabakaty/downloader/a54;->w:J

    .line 6
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/a54;->x:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 7
    iget v2, p0, Lcom/shabakaty/downloader/a1;->s:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    if-eqz v2, :cond_3

    .line 9
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    if-eqz v5, :cond_2

    .line 10
    check-cast v5, Lcom/shabakaty/downloader/c54;

    .line 11
    iget-wide v6, v5, Lcom/shabakaty/downloader/c54;->a:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    .line 12
    iput-wide v0, v5, Lcom/shabakaty/downloader/c54;->a:J

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iput-wide v0, p0, Lcom/shabakaty/downloader/a54;->x:J

    :cond_4
    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->s()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v1, v3, v2}, Lcom/shabakaty/downloader/a54;->t([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v0, v3}, Lcom/shabakaty/downloader/a54;->t([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    sget-object v0, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v0, v2

    .line 6
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    aput-object p1, v1, v0

    return-void
.end method

.method public final p([Lcom/shabakaty/downloader/ud0;)[Lcom/shabakaty/downloader/ud0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/a1;->s:I

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    if-eqz v1, :cond_4

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    .line 5
    check-cast v4, Lcom/shabakaty/downloader/c54;

    .line 6
    iget-object v5, v4, Lcom/shabakaty/downloader/c54;->b:Lcom/shabakaty/downloader/ud0;

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/a54;->v(Lcom/shabakaty/downloader/c54;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    array-length v6, p1

    if-lt v0, v6, :cond_2

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Lcom/shabakaty/downloader/ud0;

    :cond_2
    add-int/lit8 v6, v0, 0x1

    .line 9
    aput-object v5, p1, v0

    const/4 v0, 0x0

    .line 10
    iput-object v0, v4, Lcom/shabakaty/downloader/c54;->b:Lcom/shabakaty/downloader/ud0;

    move v0, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final q()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    iget v2, p0, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final r()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/a54;->x:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/a54;->w:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    iget v1, p0, Lcom/shabakaty/downloader/a54;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final t([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 1
    new-array v1, p3, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v2

    :goto_1
    if-ge v0, p2, :cond_2

    int-to-long v4, v0

    add-long/2addr v4, v2

    .line 3
    sget-object v6, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v5, v4

    .line 4
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v5

    aget-object v4, p1, v4

    add-int/lit8 v6, p3, -0x1

    and-int/2addr v5, v6

    .line 5
    aput-object v4, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/a1;->s:I

    const/4 v9, 0x1

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/a54;->A:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->o(Ljava/lang/Object;)V

    .line 4
    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/a54;->A:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->n()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    iget v2, p0, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/a54;->x:J

    :goto_0
    return v9

    .line 7
    :cond_2
    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    iget v1, p0, Lcom/shabakaty/downloader/a54;->B:I

    if-lt v0, v1, :cond_5

    iget-wide v0, p0, Lcom/shabakaty/downloader/a54;->x:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/a54;->w:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/a54;->C:Lcom/shabakaty/downloader/co;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    return v9

    :cond_4
    const/4 v0, 0x0

    return v0

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->o(Ljava/lang/Object;)V

    .line 10
    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    .line 11
    iget v1, p0, Lcom/shabakaty/downloader/a54;->B:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->n()V

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    iget v2, p0, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/shabakaty/downloader/a54;->w:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 13
    iget v0, p0, Lcom/shabakaty/downloader/a54;->A:I

    if-le v1, v0, :cond_7

    const-wide/16 v0, 0x1

    add-long v1, v2, v0

    .line 14
    iget-wide v3, p0, Lcom/shabakaty/downloader/a54;->x:J

    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->q()J

    move-result-wide v5

    .line 15
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v7

    iget v0, p0, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v10, v0

    add-long/2addr v7, v10

    iget v0, p0, Lcom/shabakaty/downloader/a54;->z:I

    int-to-long v10, v0

    add-long/2addr v7, v10

    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/a54;->x(JJJJ)V

    :cond_7
    return v9
.end method

.method public final v(Lcom/shabakaty/downloader/c54;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lcom/shabakaty/downloader/c54;->a:J

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->q()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    .line 3
    :cond_0
    iget p1, p0, Lcom/shabakaty/downloader/a54;->B:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    .line 5
    :cond_2
    iget p1, p0, Lcom/shabakaty/downloader/a54;->z:I

    if-nez p1, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method public final w(Lcom/shabakaty/downloader/c54;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a54;->v(Lcom/shabakaty/downloader/c54;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p1, Lcom/shabakaty/downloader/c54;->a:J

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v5, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v5, v1

    .line 7
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    .line 8
    instance-of v5, v0, Lcom/shabakaty/downloader/a54$a;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/shabakaty/downloader/a54$a;

    iget-object v0, v0, Lcom/shabakaty/downloader/a54$a;->t:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 9
    iput-wide v1, p1, Lcom/shabakaty/downloader/c54;->a:J

    .line 10
    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/a54;->y(J)[Lcom/shabakaty/downloader/ud0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 11
    :goto_0
    monitor-exit p0

    .line 12
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    sget-object v4, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    throw p1
.end method

.method public final x(JJJJ)V
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    .line 1
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v7

    :goto_0
    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    iget-object v9, v0, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v9}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    const/4 v10, 0x0

    sget-object v11, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v11, v7

    .line 3
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    and-int/2addr v11, v12

    aput-object v10, v9, v11

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    goto :goto_0

    .line 4
    :cond_0
    iput-wide v1, v0, Lcom/shabakaty/downloader/a54;->w:J

    .line 5
    iput-wide v3, v0, Lcom/shabakaty/downloader/a54;->x:J

    sub-long v1, p5, v5

    long-to-int v2, v1

    .line 6
    iput v2, v0, Lcom/shabakaty/downloader/a54;->y:I

    sub-long v1, p7, p5

    long-to-int v2, v1

    .line 7
    iput v2, v0, Lcom/shabakaty/downloader/a54;->z:I

    return-void
.end method

.method public final y(J)[Lcom/shabakaty/downloader/ud0;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    iget-wide v0, v9, Lcom/shabakaty/downloader/a54;->x:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/a54;->r()J

    move-result-wide v0

    .line 3
    iget v2, v9, Lcom/shabakaty/downloader/a54;->y:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 4
    iget v4, v9, Lcom/shabakaty/downloader/a54;->B:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_1

    iget v4, v9, Lcom/shabakaty/downloader/a54;->z:I

    if-lez v4, :cond_1

    add-long/2addr v2, v5

    .line 5
    :cond_1
    iget v4, v9, Lcom/shabakaty/downloader/a1;->s:I

    if-nez v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, v9, Lcom/shabakaty/downloader/a1;->r:[Lcom/shabakaty/downloader/c1;

    if-eqz v4, :cond_4

    .line 7
    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v11, v4, v8

    if-eqz v11, :cond_3

    .line 8
    check-cast v11, Lcom/shabakaty/downloader/c54;

    .line 9
    iget-wide v11, v11, Lcom/shabakaty/downloader/c54;->a:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-ltz v15, :cond_3

    cmp-long v13, v11, v2

    if-gez v13, :cond_3

    move-wide v2, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10
    :cond_4
    :goto_1
    iget-wide v7, v9, Lcom/shabakaty/downloader/a54;->x:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_5

    sget-object v0, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    return-object v0

    .line 11
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/a54;->q()J

    move-result-wide v7

    .line 12
    iget v4, v9, Lcom/shabakaty/downloader/a1;->s:I

    if-lez v4, :cond_6

    sub-long v11, v7, v2

    long-to-int v4, v11

    .line 13
    iget v11, v9, Lcom/shabakaty/downloader/a54;->z:I

    iget v12, v9, Lcom/shabakaty/downloader/a54;->B:I

    sub-int/2addr v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 14
    :cond_6
    iget v4, v9, Lcom/shabakaty/downloader/a54;->z:I

    .line 15
    :goto_2
    sget-object v11, Lcom/shabakaty/downloader/b1;->a:[Lcom/shabakaty/downloader/ud0;

    .line 16
    iget v12, v9, Lcom/shabakaty/downloader/a54;->z:I

    int-to-long v12, v12

    add-long/2addr v12, v7

    if-lez v4, :cond_a

    .line 17
    new-array v11, v4, [Lcom/shabakaty/downloader/ud0;

    .line 18
    iget-object v14, v9, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v14}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    move-wide v5, v7

    const/4 v15, 0x0

    :goto_3
    cmp-long v16, v7, v12

    if-gez v16, :cond_9

    .line 19
    sget-object v16, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v10, v7

    move-wide/from16 v17, v2

    .line 20
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v10

    aget-object v2, v14, v2

    .line 21
    sget-object v3, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    move-wide/from16 v19, v12

    if-eq v2, v3, :cond_8

    const-string v12, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 22
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/a54$a;

    add-int/lit8 v12, v15, 0x1

    .line 23
    iget-object v13, v2, Lcom/shabakaty/downloader/a54$a;->u:Lcom/shabakaty/downloader/ud0;

    aput-object v13, v11, v15

    .line 24
    array-length v13, v14

    add-int/lit8 v13, v13, -0x1

    and-int/2addr v10, v13

    aput-object v3, v14, v10

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/a54$a;->t:Ljava/lang/Object;

    long-to-int v3, v5

    .line 26
    array-length v10, v14

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v3, v10

    aput-object v2, v14, v3

    const-wide/16 v2, 0x1

    add-long/2addr v5, v2

    if-lt v12, v4, :cond_7

    goto :goto_5

    :cond_7
    move v15, v12

    goto :goto_4

    :cond_8
    const-wide/16 v2, 0x1

    :goto_4
    add-long/2addr v7, v2

    move-wide/from16 v2, v17

    move-wide/from16 v12, v19

    goto :goto_3

    :cond_9
    move-wide/from16 v17, v2

    move-wide/from16 v19, v12

    :goto_5
    move-wide v7, v5

    goto :goto_6

    :cond_a
    move-wide/from16 v17, v2

    move-wide/from16 v19, v12

    :goto_6
    sub-long v0, v7, v0

    long-to-int v1, v0

    .line 27
    iget v0, v9, Lcom/shabakaty/downloader/a1;->s:I

    if-nez v0, :cond_b

    move-wide v3, v7

    goto :goto_7

    :cond_b
    move-wide/from16 v3, v17

    .line 28
    :goto_7
    iget-wide v5, v9, Lcom/shabakaty/downloader/a54;->w:J

    iget v0, v9, Lcom/shabakaty/downloader/a54;->A:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v7, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 29
    iget v2, v9, Lcom/shabakaty/downloader/a54;->B:I

    if-nez v2, :cond_c

    cmp-long v2, v0, v19

    if-gez v2, :cond_c

    iget-object v2, v9, Lcom/shabakaty/downloader/a54;->v:[Ljava/lang/Object;

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v5, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    long-to-int v5, v0

    .line 30
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v2, v2, v5

    .line 31
    sget-object v5, Lcom/shabakaty/downloader/b54;->a:Lcom/shabakaty/downloader/j61;

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_c
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide/from16 v7, v19

    .line 32
    invoke-virtual/range {v0 .. v8}, Lcom/shabakaty/downloader/a54;->x(JJJJ)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/a54;->l()V

    .line 34
    array-length v0, v11

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v9, v11}, Lcom/shabakaty/downloader/a54;->p([Lcom/shabakaty/downloader/ud0;)[Lcom/shabakaty/downloader/ud0;

    move-result-object v11

    :cond_e
    return-object v11
.end method
