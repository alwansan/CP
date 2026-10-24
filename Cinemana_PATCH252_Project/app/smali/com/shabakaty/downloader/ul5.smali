.class public final Lcom/shabakaty/downloader/ul5;
.super Lcom/shabakaty/downloader/wk5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wk5;-><init>()V

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/op5;->u:Lcom/shabakaty/downloader/op5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->D:Lcom/shabakaty/downloader/op5;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->E:Lcom/shabakaty/downloader/op5;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->F:Lcom/shabakaty/downloader/op5;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->K:Lcom/shabakaty/downloader/op5;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->H:Lcom/shabakaty/downloader/op5;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->L:Lcom/shabakaty/downloader/op5;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->P:Lcom/shabakaty/downloader/op5;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->e0:Lcom/shabakaty/downloader/op5;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->q0:Lcom/shabakaty/downloader/op5;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->t0:Lcom/shabakaty/downloader/op5;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->w0:Lcom/shabakaty/downloader/op5;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v1, Lcom/shabakaty/downloader/op5;->x0:Lcom/shabakaty/downloader/op5;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/op5;->P:Lcom/shabakaty/downloader/op5;

    const-string v0, "FN"

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/kl3;->u(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p0, v4}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 5
    instance-of v5, v4, Lcom/shabakaty/downloader/uf5;

    if-eqz v5, :cond_1

    .line 6
    check-cast v4, Lcom/shabakaty/downloader/uf5;

    .line 7
    invoke-virtual {v4}, Lcom/shabakaty/downloader/uf5;->A()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/yi5;

    .line 11
    invoke-interface {v2}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0, v3, p0}, Lcom/shabakaty/downloader/yi5;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/np4;)V

    return-object p1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v3, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FN requires an ArrayValue of parameter names found %s"

    .line 14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 9
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1a

    const/16 v5, 0xf

    const-string v6, "BREAK"

    if-eq v0, v5, :cond_19

    const/16 v5, 0x19

    if-eq v0, v5, :cond_18

    const/16 v5, 0x29

    const/4 v7, 0x0

    if-eq v0, v5, :cond_13

    const/16 v5, 0x36

    if-eq v0, v5, :cond_12

    const/16 v5, 0x39

    const-string v8, "return"

    if-eq v0, v5, :cond_10

    const/16 v5, 0x13

    if-eq v0, v5, :cond_d

    const/16 v5, 0x14

    if-eq v0, v5, :cond_b

    const/16 v5, 0x3c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wk5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    throw v7

    .line 3
    :pswitch_0
    sget-object p1, Lcom/shabakaty/downloader/op5;->E:Lcom/shabakaty/downloader/op5;

    .line 4
    invoke-static {v6, v2, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/gj5;->l:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 6
    :pswitch_1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/uf5;

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/uf5;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/op5;->x0:Lcom/shabakaty/downloader/op5;

    const-string p1, "TERNARY"

    .line 9
    invoke-static {p1, v3, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    :goto_0
    return-object p1

    .line 14
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/op5;->w0:Lcom/shabakaty/downloader/op5;

    const-string p1, "SWITCH"

    .line 15
    invoke-static {p1, v3, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 17
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 18
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    .line 19
    instance-of v3, v0, Lcom/shabakaty/downloader/uf5;

    if-eqz v3, :cond_a

    .line 20
    instance-of v3, p3, Lcom/shabakaty/downloader/uf5;

    if-eqz v3, :cond_9

    .line 21
    check-cast v0, Lcom/shabakaty/downloader/uf5;

    .line 22
    check-cast p3, Lcom/shabakaty/downloader/uf5;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 23
    :goto_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v5

    if-ge v3, v5, :cond_6

    if-nez v4, :cond_4

    .line 24
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 25
    iget-object v5, p2, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/qz2;

    .line 26
    invoke-virtual {v5, p2, v4}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 28
    :cond_4
    :goto_2
    invoke-virtual {p3, v3}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 29
    iget-object v5, p2, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/qz2;

    .line 30
    invoke-virtual {v5, p2, v4}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 31
    instance-of v5, v4, Lcom/shabakaty/downloader/ng5;

    if-eqz v5, :cond_5

    .line 32
    move-object p1, v4

    check-cast p1, Lcom/shabakaty/downloader/ng5;

    .line 33
    iget-object p1, p1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    const-string p2, "break"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    :cond_5
    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    :cond_6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p3}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uf5;->s()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 37
    iget-object p3, p2, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/qz2;

    .line 38
    invoke-virtual {p3, p2, p1}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 39
    instance-of p1, v4, Lcom/shabakaty/downloader/ng5;

    if-eqz p1, :cond_8

    .line 40
    move-object p1, v4

    check-cast p1, Lcom/shabakaty/downloader/ng5;

    .line 41
    iget-object p1, p1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "continue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    return-object v4

    :cond_8
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 43
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, case statements are not a list"

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Malformed SWITCH statement, cases are not a list"

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_b
    sget-object p1, Lcom/shabakaty/downloader/op5;->L:Lcom/shabakaty/downloader/op5;

    const-string p1, "DEFINE_FUNCTION"

    .line 48
    invoke-static {p1, v4, p3}, Lcom/shabakaty/downloader/kl3;->u(Ljava/lang/String;ILjava/util/List;)V

    .line 49
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/ul5;->c(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/shabakaty/downloader/bh5;

    .line 50
    iget-object p3, p3, Lcom/shabakaty/downloader/bh5;->r:Ljava/lang/String;

    if-nez p3, :cond_c

    const-string p3, ""

    .line 51
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    goto :goto_5

    .line 52
    :cond_c
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    :goto_5
    return-object p1

    .line 53
    :cond_d
    :pswitch_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 54
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    goto :goto_6

    .line 55
    :cond_e
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 56
    instance-of p3, p1, Lcom/shabakaty/downloader/uf5;

    if-eqz p3, :cond_f

    .line 57
    check-cast p1, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    goto :goto_6

    .line 58
    :cond_f
    sget-object p1, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    :goto_6
    return-object p1

    .line 59
    :cond_10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 60
    sget-object p1, Lcom/shabakaty/downloader/gj5;->m:Lcom/shabakaty/downloader/gj5;

    goto :goto_7

    :cond_11
    sget-object p1, Lcom/shabakaty/downloader/op5;->t0:Lcom/shabakaty/downloader/op5;

    const-string p1, "RETURN"

    .line 61
    invoke-static {p1, v1, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 62
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/shabakaty/downloader/ng5;

    invoke-direct {p2, v8, p1}, Lcom/shabakaty/downloader/ng5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    move-object p1, p2

    :goto_7
    return-object p1

    .line 64
    :cond_12
    new-instance p1, Lcom/shabakaty/downloader/uf5;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/uf5;-><init>(Ljava/util/List;)V

    return-object p1

    .line 65
    :cond_13
    sget-object p1, Lcom/shabakaty/downloader/op5;->e0:Lcom/shabakaty/downloader/op5;

    const-string p1, "IF"

    .line 66
    invoke-static {p1, v4, p3}, Lcom/shabakaty/downloader/kl3;->u(Ljava/lang/String;ILjava/util/List;)V

    .line 67
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 68
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 69
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_14

    .line 70
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v7

    .line 71
    :cond_14
    sget-object p3, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    .line 72
    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 73
    check-cast v0, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    goto :goto_8

    :cond_15
    if-eqz v7, :cond_16

    .line 74
    check-cast v7, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p2, v7}, Lcom/shabakaty/downloader/np4;->g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    goto :goto_8

    :cond_16
    move-object p1, p3

    .line 75
    :goto_8
    instance-of p2, p1, Lcom/shabakaty/downloader/ng5;

    if-eqz p2, :cond_17

    return-object p1

    :cond_17
    return-object p3

    .line 76
    :cond_18
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/ul5;->c(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    :cond_19
    sget-object p1, Lcom/shabakaty/downloader/op5;->E:Lcom/shabakaty/downloader/op5;

    .line 77
    invoke-static {v6, v2, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 78
    sget-object p1, Lcom/shabakaty/downloader/gj5;->k:Lcom/shabakaty/downloader/gj5;

    return-object p1

    .line 79
    :cond_1a
    sget-object p1, Lcom/shabakaty/downloader/op5;->u:Lcom/shabakaty/downloader/op5;

    const-string p1, "APPLY"

    .line 80
    invoke-static {p1, v3, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 81
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    .line 82
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/gj5;->h()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p3

    .line 84
    instance-of v3, p3, Lcom/shabakaty/downloader/uf5;

    if-eqz v3, :cond_1c

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 86
    check-cast p3, Lcom/shabakaty/downloader/uf5;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/uf5;->A()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lcom/shabakaty/downloader/gj5;->q(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 87
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function name for apply is undefined"

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v1, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "Function arguments for Apply are not a list found %s"

    .line 91
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
