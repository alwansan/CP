.class public final Lcom/shabakaty/downloader/v36;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/o66;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/o66<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/y26;

.field public final b:Lcom/shabakaty/downloader/x96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x96<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/vr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/vr5<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/x96;Lcom/shabakaty/downloader/vr5;Lcom/shabakaty/downloader/y26;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/x96<",
            "**>;",
            "Lcom/shabakaty/downloader/vr5<",
            "*>;",
            "Lcom/shabakaty/downloader/y26;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/vr5;->f(Lcom/shabakaty/downloader/y26;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/v36;->c:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    iput-object p3, p0, Lcom/shabakaty/downloader/v36;->a:Lcom/shabakaty/downloader/y26;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v36;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ms5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/shabakaty/downloader/v36;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ms5;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    sget-object v1, Lcom/shabakaty/downloader/y66;->a:Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/x96;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/x96;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/v36;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/y66;->e(Lcom/shabakaty/downloader/vr5;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ms5;->b()Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;Lcom/shabakaty/downloader/ie6;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ie6;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ms5;->c()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/eu5;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eu5;->k()Lcom/shabakaty/downloader/he6;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/he6;->A:Lcom/shabakaty/downloader/he6;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/shabakaty/downloader/eu5;->l()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/shabakaty/downloader/eu5;->r()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/shabakaty/downloader/by5;

    invoke-interface {v2}, Lcom/shabakaty/downloader/eu5;->c()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lcom/shabakaty/downloader/by5;

    .line 1
    iget-object v1, v1, Lcom/shabakaty/downloader/by5;->r:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/tx5;

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/py5;->c()Lcom/shabakaty/downloader/hn5;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v3, p2

    check-cast v3, Lcom/shabakaty/downloader/mq5;

    invoke-virtual {v3, v2, v1}, Lcom/shabakaty/downloader/mq5;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/x96;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/ie6;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/x96;->j(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/shabakaty/downloader/v36;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/vr5;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ms5;

    move-result-object p1

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p1, Lcom/shabakaty/downloader/ms5;->a:Lcom/shabakaty/downloader/c76;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/c76;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/shabakaty/downloader/ms5;->a:Lcom/shabakaty/downloader/c76;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/c76;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/ms5;->k(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/ms5;->a:Lcom/shabakaty/downloader/c76;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/c76;->f()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/shabakaty/downloader/ms5;->k(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->b:Lcom/shabakaty/downloader/x96;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x96;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->d:Lcom/shabakaty/downloader/vr5;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vr5;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;[BIILcom/shabakaty/downloader/kl5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/shabakaty/downloader/kl5;",
            ")V"
        }
    .end annotation

    check-cast p1, Lcom/shabakaty/downloader/kv5;

    iget-object v0, p1, Lcom/shabakaty/downloader/kv5;->zzjp:Lcom/shabakaty/downloader/y96;

    sget-object v1, Lcom/shabakaty/downloader/y96;->f:Lcom/shabakaty/downloader/y96;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/shabakaty/downloader/y96;->e()Lcom/shabakaty/downloader/y96;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/kv5;->zzjp:Lcom/shabakaty/downloader/y96;

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lcom/shabakaty/downloader/hl3;->n([BILcom/shabakaty/downloader/kl5;)I

    move-result v3

    iget v1, p5, Lcom/shabakaty/downloader/kl5;->a:I

    const/16 p1, 0xb

    const/4 p3, 0x2

    if-eq v1, p1, :cond_2

    and-int/lit8 p1, v1, 0x7

    if-ne p1, p3, :cond_1

    move-object v2, p2

    move v4, p4

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/hl3;->l(I[BIILcom/shabakaty/downloader/y96;Lcom/shabakaty/downloader/kl5;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, v3, p4, p5}, Lcom/shabakaty/downloader/hl3;->j(I[BIILcom/shabakaty/downloader/kl5;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v3, p4, :cond_6

    invoke-static {p2, v3, p5}, Lcom/shabakaty/downloader/hl3;->n([BILcom/shabakaty/downloader/kl5;)I

    move-result v2

    iget v3, p5, Lcom/shabakaty/downloader/kl5;->a:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, p3, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, p3, :cond_5

    invoke-static {p2, v2, p5}, Lcom/shabakaty/downloader/hl3;->v([BILcom/shabakaty/downloader/kl5;)I

    move-result v3

    iget-object v1, p5, Lcom/shabakaty/downloader/kl5;->c:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/hn5;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Lcom/shabakaty/downloader/hl3;->n([BILcom/shabakaty/downloader/kl5;)I

    move-result v3

    iget p1, p5, Lcom/shabakaty/downloader/kl5;->a:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_7

    invoke-static {v3, p2, v2, p4, p5}, Lcom/shabakaty/downloader/hl3;->j(I[BIILcom/shabakaty/downloader/kl5;)I

    move-result v3

    goto :goto_1

    :cond_6
    move v2, v3

    :cond_7
    if-eqz v1, :cond_8

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p3

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/y96;->b(ILjava/lang/Object;)V

    :cond_8
    move p3, v2

    goto :goto_0

    :cond_9
    if-ne p3, p4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/shabakaty/downloader/cx5;->c()Lcom/shabakaty/downloader/cx5;

    move-result-object p1

    throw p1
.end method

.method public final i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/v36;->a:Lcom/shabakaty/downloader/y26;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y26;->r()Lcom/shabakaty/downloader/c36;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kv5$a;->f()Lcom/shabakaty/downloader/y26;

    move-result-object v0

    return-object v0
.end method
