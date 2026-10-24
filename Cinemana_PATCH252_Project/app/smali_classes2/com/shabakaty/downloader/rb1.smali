.class public final Lcom/shabakaty/downloader/rb1;
.super Ljava/lang/Object;
.source "findClassInModule.kt"


# direct methods
.method public static final a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/rb1;->b(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of p1, p0, Lcom/shabakaty/downloader/q20;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/q20;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/g30;
    .locals 11

    sget-object v0, Lcom/shabakaty/downloader/mz2;->I:Lcom/shabakaty/downloader/mz2;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/ks3;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ks3;->a:Lcom/shabakaty/downloader/j61;

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/nu2;->X(Lcom/shabakaty/downloader/j61;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/js3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/js3;->a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/nu2;

    move-result-object v1

    :goto_0
    const-string v3, "name"

    const/4 v4, 0x1

    const-string v5, "segments.first()"

    const-string v6, "classId.relativeClassName.pathSegments()"

    const-string v7, "classId.packageFqName"

    if-nez v1, :cond_6

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 7
    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_5

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 9
    instance-of v4, p0, Lcom/shabakaty/downloader/q20;

    if-nez v4, :cond_3

    goto/16 :goto_5

    .line 10
    :cond_3
    check-cast p0, Lcom/shabakaty/downloader/q20;

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    .line 11
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of v1, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/shabakaty/downloader/q20;

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_2

    goto/16 :goto_5

    :cond_5
    move-object v2, p0

    goto/16 :goto_5

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/shabakaty/downloader/fi1;->f()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v1}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    .line 15
    invoke-static {v8}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/shabakaty/downloader/hw2;

    .line 16
    invoke-interface {v1, v9, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v4, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/hw2;

    .line 18
    instance-of v10, v1, Lcom/shabakaty/downloader/q20;

    if-nez v10, :cond_9

    goto :goto_3

    .line 19
    :cond_9
    check-cast v1, Lcom/shabakaty/downloader/q20;

    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    .line 20
    invoke-static {v9, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v9, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object v1

    instance-of v9, v1, Lcom/shabakaty/downloader/q20;

    if-eqz v9, :cond_a

    check-cast v1, Lcom/shabakaty/downloader/q20;

    goto :goto_2

    :cond_a
    move-object v1, v2

    :goto_2
    if-nez v1, :cond_8

    :goto_3
    move-object v1, v2

    :cond_b
    if-nez v1, :cond_10

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/shabakaty/downloader/nu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object p0

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/shabakaty/downloader/t93;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    .line 24
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->Z(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 25
    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_5

    .line 26
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/hw2;

    .line 27
    instance-of v4, p0, Lcom/shabakaty/downloader/q20;

    if-nez v4, :cond_e

    goto :goto_5

    .line 28
    :cond_e
    check-cast p0, Lcom/shabakaty/downloader/q20;

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    .line 29
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lcom/shabakaty/downloader/ls3;->g(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of v1, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_f

    check-cast p0, Lcom/shabakaty/downloader/q20;

    goto :goto_4

    :cond_f
    move-object p0, v2

    :goto_4
    if-nez p0, :cond_d

    goto :goto_5

    :cond_10
    move-object v2, v1

    :goto_5
    return-object v2
.end method

.method public static final c(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b03;)Lcom/shabakaty/downloader/q20;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/rb1;->a(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/rb1$a;->r:Lcom/shabakaty/downloader/rb1$a;

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/q04;->y(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/rb1$b;->r:Lcom/shabakaty/downloader/rb1$b;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/t04;->G(Lcom/shabakaty/downloader/l04;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/l04;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/t04;->J(Lcom/shabakaty/downloader/l04;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-virtual {p2, p1, p0}, Lcom/shabakaty/downloader/b03;->a(Lcom/shabakaty/downloader/v20;Ljava/util/List;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    return-object p0
.end method
