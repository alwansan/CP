.class public final Lcom/shabakaty/downloader/od0;
.super Ljava/lang/Object;
.source "context.kt"


# direct methods
.method public static a(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/z20;Lcom/shabakaty/downloader/n82;II)Lcom/shabakaty/downloader/bg2;
    .locals 2

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    sget-object p4, Lkotlin/a;->t:Lkotlin/a;

    new-instance v0, Lcom/shabakaty/downloader/nd0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/nd0;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/z20;)V

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    if-nez p2, :cond_2

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    goto :goto_0

    .line 4
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/mg2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shabakaty/downloader/mg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)V

    move-object p0, v1

    .line 5
    :goto_0
    new-instance p1, Lcom/shabakaty/downloader/bg2;

    invoke-direct {p1, v0, p0, p4}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    return-object p1
.end method

.method public static final b(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)Lcom/shabakaty/downloader/bg2;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bg2;->c:Lcom/shabakaty/downloader/kf2;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/mg2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/shabakaty/downloader/mg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/n82;I)V

    .line 4
    new-instance p0, Lcom/shabakaty/downloader/bg2;

    invoke-direct {p0, v1, v2, v0}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    return-object p0
.end method

.method public static final c(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/p82;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->v:Lcom/shabakaty/downloader/k82;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/k82;->c:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/shabakaty/downloader/r8;

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 9
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->q:Lcom/shabakaty/downloader/w8;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "annotationDescriptor"

    .line 11
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, v4, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 13
    iget-boolean v5, v5, Lcom/shabakaty/downloader/k82;->c:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_4

    .line 14
    :cond_1
    sget-object v5, Lcom/shabakaty/downloader/v8;->g:Ljava/util/Map;

    .line 15
    invoke-interface {v1}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v7

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/a72;

    if-nez v5, :cond_2

    goto :goto_4

    .line 16
    :cond_2
    invoke-interface {v1}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 17
    sget-object v8, Lcom/shabakaty/downloader/v8;->f:Ljava/util/Map;

    .line 18
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 19
    iget-object v8, v4, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 20
    iget-object v8, v8, Lcom/shabakaty/downloader/k82;->b:Lcom/shabakaty/downloader/tm1;

    .line 21
    invoke-interface {v8, v7}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/tr3;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/w8;->b(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;

    move-result-object v7

    .line 23
    :goto_1
    sget-object v8, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    if-eq v7, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v6

    :goto_3
    if-nez v7, :cond_6

    :goto_4
    move-object v9, v6

    goto :goto_5

    .line 24
    :cond_6
    iget-object v8, v5, Lcom/shabakaty/downloader/a72;->a:Lcom/shabakaty/downloader/v13;

    .line 25
    invoke-virtual {v7}, Lcom/shabakaty/downloader/tr3;->h()Z

    move-result v7

    invoke-static {v8, v6, v7, v3}, Lcom/shabakaty/downloader/v13;->a(Lcom/shabakaty/downloader/v13;Lcom/shabakaty/downloader/u13;ZI)Lcom/shabakaty/downloader/v13;

    move-result-object v7

    .line 26
    iget-object v8, v5, Lcom/shabakaty/downloader/a72;->b:Ljava/util/Collection;

    iget-boolean v5, v5, Lcom/shabakaty/downloader/a72;->c:Z

    const-string v9, "qualifierApplicabilityTypes"

    .line 27
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/shabakaty/downloader/a72;

    invoke-direct {v9, v7, v8, v5}, Lcom/shabakaty/downloader/a72;-><init>(Lcom/shabakaty/downloader/v13;Ljava/util/Collection;Z)V

    :goto_5
    if-nez v9, :cond_16

    .line 28
    iget-object v5, v4, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 29
    iget-object v5, v5, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 30
    iget-boolean v5, v5, Lcom/shabakaty/downloader/ra2;->e:Z

    if-eqz v5, :cond_7

    goto/16 :goto_d

    .line 31
    :cond_7
    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v7

    .line 32
    sget-object v8, Lcom/shabakaty/downloader/v8;->c:Lcom/shabakaty/downloader/fi1;

    .line 33
    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object v5, v6

    :goto_7
    if-nez v5, :cond_a

    goto/16 :goto_d

    .line 34
    :cond_a
    invoke-static {v1}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 35
    invoke-interface {v7}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v7

    .line 36
    sget-object v8, Lcom/shabakaty/downloader/v8;->c:Lcom/shabakaty/downloader/fi1;

    .line 37
    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 38
    invoke-interface {v7}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object v7

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/hw2;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/qb0;

    .line 42
    sget-object v11, Lcom/shabakaty/downloader/ta2;->b:Lcom/shabakaty/downloader/hw2;

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 43
    sget-object v10, Lcom/shabakaty/downloader/x8;->r:Lcom/shabakaty/downloader/x8;

    invoke-virtual {v4, v9, v10}, Lcom/shabakaty/downloader/w8;->a(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/hn1;)Ljava/util/List;

    move-result-object v9

    goto :goto_9

    .line 44
    :cond_b
    sget-object v9, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    .line 45
    :goto_9
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_8

    .line 46
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/u8;

    .line 47
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    shl-int v9, v3, v9

    or-int/2addr v8, v9

    goto :goto_a

    .line 48
    :cond_d
    invoke-interface {v5}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v5

    .line 49
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/shabakaty/downloader/r8;

    .line 50
    invoke-virtual {v4, v9}, Lcom/shabakaty/downloader/w8;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/r8;

    move-result-object v9

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_e

    goto :goto_c

    :cond_10
    move-object v7, v6

    :goto_c
    check-cast v7, Lcom/shabakaty/downloader/r8;

    if-nez v7, :cond_11

    :goto_d
    move-object v5, v6

    goto :goto_e

    .line 51
    :cond_11
    new-instance v5, Lcom/shabakaty/downloader/w8$a;

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/w8$a;-><init>(Lcom/shabakaty/downloader/r8;I)V

    :goto_e
    if-nez v5, :cond_12

    goto :goto_f

    .line 52
    :cond_12
    iget-object v7, v5, Lcom/shabakaty/downloader/w8$a;->a:Lcom/shabakaty/downloader/r8;

    .line 53
    invoke-virtual {v5}, Lcom/shabakaty/downloader/w8$a;->a()Ljava/util/List;

    move-result-object v5

    .line 54
    invoke-virtual {v4, v1}, Lcom/shabakaty/downloader/w8;->c(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;

    move-result-object v1

    if-nez v1, :cond_13

    .line 55
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/w8;->b(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;

    move-result-object v1

    .line 56
    :cond_13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tr3;->f()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_f

    .line 57
    :cond_14
    iget-object v4, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 58
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->t:Lcom/shabakaty/downloader/z72;

    .line 59
    invoke-interface {v4}, Lcom/shabakaty/downloader/z72;->c()Z

    move-result v4

    .line 60
    iget-object v8, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 61
    iget-object v8, v8, Lcom/shabakaty/downloader/y72;->r:Lcom/shabakaty/downloader/d64;

    .line 62
    invoke-virtual {v8, v7, v4, v2}, Lcom/shabakaty/downloader/d64;->b(Lcom/shabakaty/downloader/r8;ZZ)Lcom/shabakaty/downloader/v13;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_f

    .line 63
    :cond_15
    invoke-virtual {v1}, Lcom/shabakaty/downloader/tr3;->h()Z

    move-result v1

    invoke-static {v4, v6, v1, v3}, Lcom/shabakaty/downloader/v13;->a(Lcom/shabakaty/downloader/v13;Lcom/shabakaty/downloader/u13;ZI)Lcom/shabakaty/downloader/v13;

    move-result-object v1

    .line 64
    new-instance v6, Lcom/shabakaty/downloader/a72;

    const/4 v3, 0x4

    invoke-direct {v6, v1, v5, v2, v3}, Lcom/shabakaty/downloader/a72;-><init>(Lcom/shabakaty/downloader/v13;Ljava/util/Collection;ZI)V

    goto :goto_f

    :cond_16
    move-object v6, v9

    :goto_f
    if-nez v6, :cond_17

    goto/16 :goto_0

    .line 65
    :cond_17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object p0

    return-object p0

    .line 67
    :cond_19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 68
    new-instance p1, Ljava/util/EnumMap;

    const-class v1, Lcom/shabakaty/downloader/u8;

    invoke-direct {p1, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto :goto_10

    .line 69
    :cond_1a
    iget-object p1, p1, Lcom/shabakaty/downloader/p82;->a:Ljava/util/EnumMap;

    .line 70
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    move-object p1, v1

    .line 71
    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/a72;

    .line 72
    iget-object v4, v1, Lcom/shabakaty/downloader/a72;->b:Ljava/util/Collection;

    .line 73
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/u8;

    .line 74
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_11

    :cond_1c
    if-nez v2, :cond_1d

    .line 75
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bg2;->a()Lcom/shabakaty/downloader/p82;

    move-result-object p0

    goto :goto_12

    :cond_1d
    new-instance p0, Lcom/shabakaty/downloader/p82;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p82;-><init>(Ljava/util/EnumMap;)V

    :goto_12
    return-object p0
.end method

.method public static final d(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/bg2;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/bg2;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/bg2;->b:Lcom/shabakaty/downloader/nt4;

    .line 5
    sget-object v3, Lkotlin/a;->t:Lkotlin/a;

    new-instance v4, Lcom/shabakaty/downloader/od0$a;

    invoke-direct {v4, p0, p1}, Lcom/shabakaty/downloader/od0$a;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)V

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/ng2;->b(Lkotlin/a;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/kf2;

    move-result-object p0

    .line 6
    invoke-direct {v0, v1, v2, p0}, Lcom/shabakaty/downloader/bg2;-><init>(Lcom/shabakaty/downloader/y72;Lcom/shabakaty/downloader/nt4;Lcom/shabakaty/downloader/kf2;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
