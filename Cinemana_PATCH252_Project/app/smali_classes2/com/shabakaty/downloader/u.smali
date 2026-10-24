.class public abstract Lcom/shabakaty/downloader/u;
.super Lcom/shabakaty/downloader/l92;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ud0;
.implements Lcom/shabakaty/downloader/se0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/l92;",
        "Lcom/shabakaty/downloader/e92;",
        "Lcom/shabakaty/downloader/ud0<",
        "TT;>;",
        "Lcom/shabakaty/downloader/se0;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/me0;

.field public final t:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/l92;-><init>(Z)V

    iput-object p1, p0, Lcom/shabakaty/downloader/u;->t:Lcom/shabakaty/downloader/me0;

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    return-void
.end method


# virtual methods
.method public B()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a()Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    return-object v0
.end method

.method public a0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/ne0;->a:Z

    invoke-super {p0}, Lcom/shabakaty/downloader/l92;->a0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/l92;->c()Z

    move-result v0

    return v0
.end method

.method public final d0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/i80;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/i80;

    iget-object v0, p1, Lcom/shabakaty/downloader/i80;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/i80;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/u;->o0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/u;->p0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final e0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u;->q0()V

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->D(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->Z(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/m92;->b:Lcom/shabakaty/downloader/j61;

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/u;->m0(Ljava/lang/Object;)V

    return-void
.end method

.method public m0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/l92;->C(Ljava/lang/Object;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/u;->t:Lcom/shabakaty/downloader/me0;

    sget-object v1, Lcom/shabakaty/downloader/e92;->h:Lcom/shabakaty/downloader/e92$b;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/e92;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/l92;->W(Lcom/shabakaty/downloader/e92;)V

    return-void
.end method

.method public o0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public p0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public q0()V
    .locals 0

    return-void
.end method

.method public final r0(ILjava/lang/Object;Lcom/shabakaty/downloader/hn1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TR;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u;->n0()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/u;->s:Lcom/shabakaty/downloader/me0;

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zm4;->c(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 5
    :try_start_1
    invoke-static {p3, v1}, Lcom/shabakaty/downloader/gt4;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    invoke-interface {p3, p2, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    sget-object p1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-eq p2, p1, :cond_4

    .line 8
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/u;->i(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    .line 9
    :cond_0
    :try_start_3
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p2, p3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :goto_0
    :try_start_4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/zm4;->a(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :goto_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/u;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_1
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1

    :cond_2
    const-string p1, "<this>"

    .line 13
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p3, p2, p0}, Lcom/shabakaty/downloader/he0;->f(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x4

    .line 15
    invoke-static {p3, p2, p0, v0, p1}, Lcom/shabakaty/downloader/z02;->A(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/tm1;I)V

    :cond_4
    :goto_2
    return-void
.end method
