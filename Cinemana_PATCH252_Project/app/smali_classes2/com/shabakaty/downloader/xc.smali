.class public Lcom/shabakaty/downloader/xc;
.super Lcom/shabakaty/downloader/m;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private volatile synthetic size:I

.field public final u:Ljava/util/concurrent/locks/ReentrantLock;

.field public v:[Ljava/lang/Object;

.field public w:I

.field public final x:I

.field public final y:Lcom/shabakaty/downloader/co;


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/co;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TE;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/m;-><init>(Lcom/shabakaty/downloader/tm1;)V

    iput p1, p0, Lcom/shabakaty/downloader/xc;->x:I

    iput-object p2, p0, Lcom/shabakaty/downloader/xc;->y:Lcom/shabakaty/downloader/co;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p2, 0x8

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object p2, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    const/4 v0, 0x6

    invoke-static {p1, p2, p3, p3, v0}, Lcom/shabakaty/downloader/hd;->M([Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/xc;->size:I

    return-void

    :cond_1
    const-string p2, "ArrayChannel capacity must be at least 1, but "

    const-string p3, " was specified"

    .line 5
    invoke-static {p2, p1, p3}, Lcom/shabakaty/downloader/qj2;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public c(Lcom/shabakaty/downloader/g04;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/z0;->c(Lcom/shabakaty/downloader/g04;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const-string v0, "(buffer:capacity="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shabakaty/downloader/xc;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/xc;->size:I

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/q12;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/xc;->size:I

    iget v1, p0, Lcom/shabakaty/downloader/xc;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->y:Lcom/shabakaty/downloader/co;

    sget-object v1, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/xc;->size:I

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/shabakaty/downloader/xc;->x:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 6
    iput v2, p0, Lcom/shabakaty/downloader/xc;->size:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/xc;->y:Lcom/shabakaty/downloader/co;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_3
    :goto_0
    move-object v2, v4

    goto :goto_1

    .line 10
    :cond_4
    sget-object v2, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_5

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_5
    if-nez v1, :cond_8

    .line 12
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/m;->l()Lcom/shabakaty/downloader/zn3;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 13
    instance-of v3, v2, Lcom/shabakaty/downloader/f40;

    if-eqz v3, :cond_7

    .line 14
    iput v1, p0, Lcom/shabakaty/downloader/xc;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 16
    :cond_7
    :try_start_3
    invoke-interface {v2, p1, v4}, Lcom/shabakaty/downloader/zn3;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 17
    iput v1, p0, Lcom/shabakaty/downloader/xc;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/zn3;->f(Ljava/lang/Object;)V

    .line 20
    invoke-interface {v2}, Lcom/shabakaty/downloader/zn3;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_8
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/xc;->w(ILjava/lang/Object;)V

    .line 22
    sget-object p1, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public o(Lcom/shabakaty/downloader/xn3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xn3<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/m;->o(Lcom/shabakaty/downloader/xn3;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/xc;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/shabakaty/downloader/m;->r()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public t(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget v2, p0, Lcom/shabakaty/downloader/xc;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 5
    iget-object v6, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v7, p0, Lcom/shabakaty/downloader/xc;->w:I

    aget-object v6, v6, v7

    if-eqz v0, :cond_0

    .line 6
    sget-object v7, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    if-eq v6, v7, :cond_0

    .line 7
    invoke-static {v0, v6, v4}, Lcom/shabakaty/downloader/d73;->a(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;)Lcom/shabakaty/downloader/lv4;

    move-result-object v4

    .line 8
    :cond_0
    iget-object v6, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v7, p0, Lcom/shabakaty/downloader/xc;->w:I

    sget-object v8, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 9
    array-length v6, v6

    rem-int/2addr v7, v6

    iput v7, p0, Lcom/shabakaty/downloader/xc;->w:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput v3, p0, Lcom/shabakaty/downloader/xc;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/m;->t(Z)V

    if-nez v4, :cond_2

    return-void

    .line 13
    :cond_2
    throw v4

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public v()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/xc;->size:I

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->e()Lcom/shabakaty/downloader/f40;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 5
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v3, p0, Lcom/shabakaty/downloader/xc;->w:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lcom/shabakaty/downloader/xc;->size:I

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    .line 9
    iget v3, p0, Lcom/shabakaty/downloader/xc;->x:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_4

    move-object v3, v5

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/z0;->n()Lcom/shabakaty/downloader/g04;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v8, v5}, Lcom/shabakaty/downloader/g04;->z(Lcom/shabakaty/downloader/ck2$b;)Lcom/shabakaty/downloader/j61;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v8}, Lcom/shabakaty/downloader/g04;->x()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v7, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v8}, Lcom/shabakaty/downloader/g04;->A()V

    move-object v3, v8

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 14
    :cond_4
    :goto_2
    sget-object v3, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq v2, v3, :cond_5

    instance-of v3, v2, Lcom/shabakaty/downloader/f40;

    if-nez v3, :cond_5

    .line 15
    iput v1, p0, Lcom/shabakaty/downloader/xc;->size:I

    .line 16
    iget-object v3, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v8, p0, Lcom/shabakaty/downloader/xc;->w:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    .line 17
    :cond_5
    iget v1, p0, Lcom/shabakaty/downloader/xc;->w:I

    add-int/2addr v1, v6

    iget-object v2, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/shabakaty/downloader/xc;->w:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6

    .line 19
    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/shabakaty/downloader/g04;->w()V

    :cond_6
    return-object v4

    :catchall_0
    move-exception v1

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final w(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/xc;->x:I

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    array-length v2, v1

    if-lt p1, v2, :cond_1

    .line 3
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 5
    iget-object v4, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v5, p0, Lcom/shabakaty/downloader/xc;->w:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    invoke-static {v1, v3, p1, v0}, Lcom/shabakaty/downloader/hd;->L([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    .line 8
    iput v2, p0, Lcom/shabakaty/downloader/xc;->w:I

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/xc;->w:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/xc;->v:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/xc;->w:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    .line 11
    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 12
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/shabakaty/downloader/xc;->w:I

    :goto_1
    return-void
.end method
