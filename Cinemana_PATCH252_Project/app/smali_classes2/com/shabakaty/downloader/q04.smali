.class public Lcom/shabakaty/downloader/q04;
.super Lcom/shabakaty/downloader/he0;
.source "Sequences.kt"


# direct methods
.method public static final v(Ljava/util/Iterator;)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/q04$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/q04$a;-><init>(Ljava/util/Iterator;)V

    .line 2
    instance-of p0, v0, Lcom/shabakaty/downloader/vb0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/vb0;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/vb0;-><init>(Lcom/shabakaty/downloader/l04;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final w(Lcom/shabakaty/downloader/l04;)Lcom/shabakaty/downloader/l04;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/l04<",
            "+",
            "Lcom/shabakaty/downloader/l04<",
            "+TT;>;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/q04$b;->r:Lcom/shabakaty/downloader/q04$b;

    .line 2
    instance-of v1, p0, Lcom/shabakaty/downloader/bq4;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/bq4;

    const-string v1, "iterator"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/ae1;

    iget-object v2, p0, Lcom/shabakaty/downloader/bq4;->a:Lcom/shabakaty/downloader/l04;

    iget-object p0, p0, Lcom/shabakaty/downloader/bq4;->b:Lcom/shabakaty/downloader/tm1;

    invoke-direct {v1, v2, p0, v0}, Lcom/shabakaty/downloader/ae1;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/ae1;

    sget-object v2, Lcom/shabakaty/downloader/r04;->r:Lcom/shabakaty/downloader/r04;

    invoke-direct {v1, p0, v2, v0}, Lcom/shabakaty/downloader/ae1;-><init>(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)V

    :goto_0
    return-object v1
.end method

.method public static final x(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/rp1;

    new-instance v1, Lcom/shabakaty/downloader/q04$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/q04$c;-><init>(Lcom/shabakaty/downloader/rm1;)V

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/rp1;-><init>(Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/tm1;)V

    .line 2
    instance-of p0, v0, Lcom/shabakaty/downloader/vb0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/shabakaty/downloader/vb0;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/vb0;-><init>(Lcom/shabakaty/downloader/l04;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final y(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+TT;>;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/shabakaty/downloader/b31;->a:Lcom/shabakaty/downloader/b31;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/rp1;

    new-instance v1, Lcom/shabakaty/downloader/q04$d;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/q04$d;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/rp1;-><init>(Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/tm1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final varargs z([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/shabakaty/downloader/l04<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/b31;->a:Lcom/shabakaty/downloader/b31;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/id;->O([Ljava/lang/Object;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    :goto_1
    return-object p0
.end method
