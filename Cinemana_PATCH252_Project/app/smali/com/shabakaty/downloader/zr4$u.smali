.class public Lcom/shabakaty/downloader/zr4$u;
.super Lcom/shabakaty/downloader/wr4;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Lcom/shabakaty/downloader/z92;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zr4$u;->c(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/z92;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/zr4$u;->d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/ba2;->a:Lcom/shabakaty/downloader/ba2;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->J()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    new-instance v1, Lcom/shabakaty/downloader/jf2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/jf2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/fa2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/fa2;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/ca2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ca2;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->b()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zr4$u;->c(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object v2

    .line 13
    iget-object v3, v0, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    invoke-virtual {v3, v1, v2}, Lcom/shabakaty/downloader/ci2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->f()V

    return-object v0

    .line 15
    :cond_6
    new-instance v0, Lcom/shabakaty/downloader/r92;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r92;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->a()V

    .line 17
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zr4$u;->c(Lcom/shabakaty/downloader/ga2;)Lcom/shabakaty/downloader/z92;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/shabakaty/downloader/r92;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->e()V

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V
    .locals 4

    if-eqz p2, :cond_c

    .line 1
    instance-of v0, p2, Lcom/shabakaty/downloader/ba2;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/shabakaty/downloader/fa2;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/z92;->h()Lcom/shabakaty/downloader/fa2;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lcom/shabakaty/downloader/fa2;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/fa2;->m()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pa2;->x(Ljava/lang/Number;)Lcom/shabakaty/downloader/pa2;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/fa2;->l()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pa2;->D(Z)Lcom/shabakaty/downloader/pa2;

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/fa2;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pa2;->B(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    goto/16 :goto_4

    .line 9
    :cond_3
    instance-of v0, p2, Lcom/shabakaty/downloader/r92;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->b()Lcom/shabakaty/downloader/pa2;

    if-eqz v0, :cond_5

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/r92;

    .line 12
    invoke-virtual {p2}, Lcom/shabakaty/downloader/r92;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/z92;

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/zr4$u;->d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->e()Lcom/shabakaty/downloader/pa2;

    goto/16 :goto_4

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    instance-of v0, p2, Lcom/shabakaty/downloader/ca2;

    if-eqz v0, :cond_b

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->c()Lcom/shabakaty/downloader/pa2;

    .line 18
    invoke-virtual {p2}, Lcom/shabakaty/downloader/z92;->d()Lcom/shabakaty/downloader/ca2;

    move-result-object p2

    .line 19
    iget-object p2, p2, Lcom/shabakaty/downloader/ca2;->a:Lcom/shabakaty/downloader/ci2;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ci2;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 20
    check-cast p2, Lcom/shabakaty/downloader/ci2$b;

    .line 21
    iget-object p2, p2, Lcom/shabakaty/downloader/ci2$b;->r:Lcom/shabakaty/downloader/ci2;

    .line 22
    iget-object v0, p2, Lcom/shabakaty/downloader/ci2;->v:Lcom/shabakaty/downloader/ci2$e;

    iget-object v0, v0, Lcom/shabakaty/downloader/ci2$e;->u:Lcom/shabakaty/downloader/ci2$e;

    .line 23
    iget v1, p2, Lcom/shabakaty/downloader/ci2;->u:I

    .line 24
    :goto_1
    iget-object v2, p2, Lcom/shabakaty/downloader/ci2;->v:Lcom/shabakaty/downloader/ci2$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 25
    iget v2, p2, Lcom/shabakaty/downloader/ci2;->u:I

    if-ne v2, v1, :cond_8

    .line 26
    iget-object v2, v0, Lcom/shabakaty/downloader/ci2$e;->u:Lcom/shabakaty/downloader/ci2$e;

    .line 27
    iget-object v3, v0, Lcom/shabakaty/downloader/ci2$e;->w:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/pa2;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/pa2;

    .line 29
    iget-object v0, v0, Lcom/shabakaty/downloader/ci2$e;->x:Ljava/lang/Object;

    .line 30
    check-cast v0, Lcom/shabakaty/downloader/z92;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/zr4$u;->d(Lcom/shabakaty/downloader/pa2;Lcom/shabakaty/downloader/z92;)V

    move-object v0, v2

    goto :goto_1

    .line 31
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->f()Lcom/shabakaty/downloader/pa2;

    goto :goto_4

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    :goto_4
    return-void
.end method
