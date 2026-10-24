.class public final Lcom/shabakaty/downloader/js2;
.super Ljava/lang/Object;
.source "MessageSetSchema.java"

# interfaces
.implements Lcom/shabakaty/downloader/ey3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ey3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ds2;

.field public final b:Lcom/shabakaty/downloader/rv4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rv4<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/v81;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/v81<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rv4;Lcom/shabakaty/downloader/v81;Lcom/shabakaty/downloader/ds2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/rv4<",
            "**>;",
            "Lcom/shabakaty/downloader/v81<",
            "*>;",
            "Lcom/shabakaty/downloader/ds2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    .line 3
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/v81;->d(Lcom/shabakaty/downloader/ds2;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/js2;->c:Z

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/js2;->a:Lcom/shabakaty/downloader/ds2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/js2;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ta1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/js2;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta1;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    sget-object v1, Lcom/shabakaty/downloader/ly3;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/rv4;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/rv4;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lcom/shabakaty/downloader/js2;->c:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/ly3;->z(Lcom/shabakaty/downloader/v81;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->d(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v81;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ta1;->i()Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/rv4;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lcom/shabakaty/downloader/js2;->c:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p1, Lcom/shabakaty/downloader/ta1;->a:Lcom/shabakaty/downloader/d94;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/d94;->d()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, p1, Lcom/shabakaty/downloader/ta1;->a:Lcom/shabakaty/downloader/d94;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/d94;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ta1;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ta1;->a:Lcom/shabakaty/downloader/d94;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/d94;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/ta1;->g(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public g(Ljava/lang/Object;Lcom/shabakaty/downloader/b95;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/b95;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->d:Lcom/shabakaty/downloader/v81;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v81;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ta1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ta1;->k()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ta1$a;

    .line 6
    invoke-interface {v2}, Lcom/shabakaty/downloader/ta1$a;->o()Lcom/shabakaty/downloader/e75;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/e75;->A:Lcom/shabakaty/downloader/e75;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/shabakaty/downloader/ta1$a;->e()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/shabakaty/downloader/ta1$a;->p()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    instance-of v3, v1, Lcom/shabakaty/downloader/of2$b;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/ta1$a;->d()I

    move-result v2

    check-cast v1, Lcom/shabakaty/downloader/of2$b;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/of2$b;->r:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/of2;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qf2;->b()Lcom/shabakaty/downloader/dp;

    move-result-object v1

    .line 11
    move-object v3, p2

    check-cast v3, Lcom/shabakaty/downloader/x40;

    invoke-virtual {v3, v2, v1}, Lcom/shabakaty/downloader/x40;->e(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v2}, Lcom/shabakaty/downloader/ta1$a;->d()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lcom/shabakaty/downloader/x40;

    invoke-virtual {v3, v2, v1}, Lcom/shabakaty/downloader/x40;->e(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/js2;->b:Lcom/shabakaty/downloader/rv4;

    .line 15
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/rv4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/rv4;->g(Ljava/lang/Object;Lcom/shabakaty/downloader/b95;)V

    return-void
.end method
