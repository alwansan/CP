.class public final Lcom/shabakaty/downloader/to5;
.super Lcom/shabakaty/downloader/wk5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wk5;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/op5;->Q:Lcom/shabakaty/downloader/op5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->R:Lcom/shabakaty/downloader/op5;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->S:Lcom/shabakaty/downloader/op5;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->T:Lcom/shabakaty/downloader/op5;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->U:Lcom/shabakaty/downloader/op5;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->V:Lcom/shabakaty/downloader/op5;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->W:Lcom/shabakaty/downloader/op5;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->B0:Lcom/shabakaty/downloader/op5;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/io5;Ljava/util/Iterator;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/io5;",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;",
            "Lcom/shabakaty/downloader/gj5;",
            ")",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/io5;->c(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/np4;

    move-result-object v0

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/ng5;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/ng5;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    const-string v2, "break"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p0

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    const-string v2, "return"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p0
.end method

.method public static d(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->p()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/to5;->c(Lcom/shabakaty/downloader/io5;Ljava/util/Iterator;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/shabakaty/downloader/to5;->c(Lcom/shabakaty/downloader/io5;Ljava/util/Iterator;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-iterable type in for...of loop."

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/op5;->s:Lcom/shabakaty/downloader/op5;

    invoke-static {p1}, Lcom/shabakaty/downloader/kl3;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/op5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x41

    const/4 v4, 0x4

    const-string v5, "return"

    const-string v6, "break"

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v0, v3, :cond_c

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wk5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    const/4 p1, 0x0

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/shabakaty/downloader/op5;->W:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_OF_LET"

    .line 4
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 8
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/ag6;

    .line 9
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->e(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_LET must be a string"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/op5;->V:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_OF_CONST"

    .line 13
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 17
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/yh1;

    .line 18
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->e(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF_CONST must be a string"

    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/op5;->U:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_OF"

    .line 22
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 23
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_2

    .line 24
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 26
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/qz2;

    .line 27
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->e(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_OF must be a string"

    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/op5;->T:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_LET"

    .line 31
    invoke-static {p1, v4, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 32
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 33
    instance-of v0, p1, Lcom/shabakaty/downloader/uf5;

    if-eqz v0, :cond_8

    .line 34
    check-cast p1, Lcom/shabakaty/downloader/uf5;

    .line 35
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    .line 36
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gj5;

    .line 37
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    .line 38
    invoke-virtual {p2}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v3

    const/4 v4, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 40
    invoke-virtual {p1, v4}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v7

    invoke-interface {v7}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {p2, v7}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    invoke-interface {v4}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 43
    move-object v4, p3

    check-cast v4, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, v4}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 44
    instance-of v7, v4, Lcom/shabakaty/downloader/ng5;

    if-eqz v7, :cond_5

    .line 45
    check-cast v4, Lcom/shabakaty/downloader/ng5;

    .line 46
    iget-object v7, v4, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v4, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    goto :goto_3

    .line 48
    :cond_4
    iget-object v7, v4, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 49
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 50
    :cond_5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v4

    const/4 v7, 0x0

    .line 51
    :goto_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 52
    invoke-virtual {p1, v7}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v8

    invoke-interface {v8}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v3, v8}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-object v3, v4

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    :goto_3
    return-object v4

    .line 55
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializer variables in FOR_LET must be an ArrayList"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :pswitch_4
    sget-object p1, Lcom/shabakaty/downloader/op5;->S:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_IN_LET"

    .line 58
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 59
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_9

    .line 60
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 62
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/ag6;

    .line 63
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/ag6;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->d(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 64
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_LET must be a string"

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :pswitch_5
    sget-object p1, Lcom/shabakaty/downloader/op5;->R:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_IN_CONST"

    .line 67
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 68
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_a

    .line 69
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 71
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/yh1;

    .line 72
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/yh1;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->d(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 73
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN_CONST must be a string"

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :pswitch_6
    sget-object p1, Lcom/shabakaty/downloader/op5;->Q:Lcom/shabakaty/downloader/op5;

    const-string p1, "FOR_IN"

    .line 76
    invoke-static {p1, v8, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 77
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/ck5;

    if-eqz p1, :cond_b

    .line 78
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 80
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/qz2;

    .line 81
    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/qz2;-><init>(Lcom/shabakaty/downloader/np4;Ljava/lang/String;)V

    invoke-static {v1, v0, p3}, Lcom/shabakaty/downloader/to5;->d(Lcom/shabakaty/downloader/io5;Lcom/shabakaty/downloader/gj5;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 82
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Variable name in FOR_IN must be a string"

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_c
    sget-object p1, Lcom/shabakaty/downloader/op5;->B0:Lcom/shabakaty/downloader/op5;

    const-string p1, "WHILE"

    .line 85
    invoke-static {p1, v4, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 86
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    .line 87
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    .line 88
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/gj5;

    .line 89
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    .line 90
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    .line 91
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 92
    :cond_d
    move-object v1, p3

    check-cast v1, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    .line 93
    instance-of v2, v1, Lcom/shabakaty/downloader/ng5;

    if-eqz v2, :cond_f

    .line 94
    check-cast v1, Lcom/shabakaty/downloader/ng5;

    .line 95
    iget-object v2, v1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 96
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    goto :goto_5

    .line 97
    :cond_e
    iget-object v2, v1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    .line 99
    :cond_f
    :goto_4
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 100
    move-object v1, p3

    check-cast v1, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v1

    .line 101
    instance-of v2, v1, Lcom/shabakaty/downloader/ng5;

    if-eqz v2, :cond_11

    .line 102
    check-cast v1, Lcom/shabakaty/downloader/ng5;

    .line 103
    iget-object v2, v1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 104
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    goto :goto_5

    .line 105
    :cond_10
    iget-object v2, v1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 106
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_5

    .line 107
    :cond_11
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    goto :goto_4

    :cond_12
    sget-object v1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
