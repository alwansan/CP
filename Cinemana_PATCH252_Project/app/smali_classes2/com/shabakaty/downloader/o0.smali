.class public final Lcom/shabakaty/downloader/o0;
.super Ljava/lang/Object;
.source "AbstractTypeChecker.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/qs4$a;)Z
    .locals 11

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qs4;->c()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    .line 7
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 9
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 10
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_d

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/d74;

    const-string v5, "current"

    .line 12
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0, v4}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    goto :goto_2

    :cond_6
    move-object v5, p2

    .line 14
    :goto_2
    sget-object v6, Lcom/shabakaty/downloader/qs4$a$c;->a:Lcom/shabakaty/downloader/qs4$a$c;

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_8

    goto :goto_1

    .line 15
    :cond_8
    iget-object v6, p0, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 16
    invoke-interface {v6, v4}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/shabakaty/downloader/yt4;->j0(Lcom/shabakaty/downloader/us4;)Ljava/util/Collection;

    move-result-object v4

    .line 17
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/te2;

    .line 18
    invoke-virtual {v5, p0, v6}, Lcom/shabakaty/downloader/qs4$a;->a(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/d74;

    move-result-object v6

    .line 19
    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/yt4;->r0(Lcom/shabakaty/downloader/d74;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    invoke-interface {v0, v6}, Lcom/shabakaty/downloader/yt4;->g(Lcom/shabakaty/downloader/te2;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const/4 v7, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_c

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qs4;->b()V

    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    .line 21
    :cond_c
    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Too many supertypes for type: "

    const-string v0, ". Supertypes = "

    .line 23
    invoke-static {p2, p1, v0}, Lcom/shabakaty/downloader/n0;->a(Ljava/lang/String;Lcom/shabakaty/downloader/d74;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    invoke-static/range {v3 .. v10}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qs4;->b()V

    :goto_7
    return v2
.end method

.method public static final b(Lcom/shabakaty/downloader/qs4;Lcom/shabakaty/downloader/d74;Lcom/shabakaty/downloader/us4;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->X(Lcom/shabakaty/downloader/te2;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->C(Lcom/shabakaty/downloader/d74;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    iget-boolean p0, p0, Lcom/shabakaty/downloader/qs4;->b:Z

    if-eqz p0, :cond_2

    .line 5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->R(Lcom/shabakaty/downloader/d74;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/yt4;->d(Lcom/shabakaty/downloader/d74;)Lcom/shabakaty/downloader/us4;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Lcom/shabakaty/downloader/yt4;->v(Lcom/shabakaty/downloader/us4;Lcom/shabakaty/downloader/us4;)Z

    move-result p0

    return p0
.end method
