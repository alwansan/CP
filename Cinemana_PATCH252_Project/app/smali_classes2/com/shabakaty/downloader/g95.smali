.class public Lcom/shabakaty/downloader/g95;
.super Lcom/shabakaty/downloader/cr4;
.source "XmlTreeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/cr4;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/ma3;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ma3;->d:Lcom/shabakaty/downloader/ma3;

    return-object v0
.end method

.method public c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/cr4;->c(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->c:Lcom/shabakaty/downloader/wu0;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/wu0;->z:Lcom/shabakaty/downloader/wu0$a;

    const/4 p2, 0x2

    .line 5
    iput p2, p1, Lcom/shabakaty/downloader/wu0$a;->x:I

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/zn4;)Z
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "Unexpected token type: "

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4;->a:Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/zn4$c;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 6
    instance-of p1, p1, Lcom/shabakaty/downloader/zn4$b;

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/lp;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/lp;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/shabakaty/downloader/zl4;

    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/zl4;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_2

    .line 9
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/zn4$d;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/o60;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/o60;-><init>(Ljava/lang/String;)V

    .line 11
    iget-boolean p1, p1, Lcom/shabakaty/downloader/zn4$d;->c:Z

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/zg2;->z()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_5

    const-string v2, "!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "<"

    .line 14
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    .line 15
    new-instance v5, Lcom/shabakaty/downloader/g95;

    invoke-direct {v5}, Lcom/shabakaty/downloader/g95;-><init>()V

    .line 16
    sget-object v6, Lcom/shabakaty/downloader/ma3;->d:Lcom/shabakaty/downloader/ma3;

    .line 17
    new-instance v7, Lcom/shabakaty/downloader/la3;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Lcom/shabakaty/downloader/la3;-><init>(II)V

    .line 18
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v4, v7, v6}, Lcom/shabakaty/downloader/cr4;->d(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/wu0;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->h()I

    move-result v4

    if-lez v4, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/shabakaty/downloader/k21;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 21
    new-instance v3, Lcom/shabakaty/downloader/f95;

    iget-object v4, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    .line 22
    iget-object v5, v0, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 23
    iget-object v5, v5, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ma3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v3, v4, p1}, Lcom/shabakaty/downloader/f95;-><init>(Ljava/lang/String;Z)V

    .line 25
    invoke-virtual {v3}, Lcom/shabakaty/downloader/zg2;->e()Lcom/shabakaty/downloader/he;

    move-result-object p1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/k21;->e()Lcom/shabakaty/downloader/he;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/he;->i(Lcom/shabakaty/downloader/he;)V

    move-object v0, v3

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    goto/16 :goto_2

    .line 27
    :cond_6
    check-cast p1, Lcom/shabakaty/downloader/zn4$g;

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ma3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    .line 30
    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/k21;

    .line 31
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k21;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_9

    goto/16 :goto_2

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_a
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_f

    .line 33
    iget-object v0, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/k21;

    .line 34
    iget-object v3, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    goto :goto_2

    .line 35
    :cond_b
    check-cast p1, Lcom/shabakaty/downloader/zn4$h;

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zn4$i;->q()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/kk4;->a(Ljava/lang/String;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/kk4;

    move-result-object v0

    .line 37
    new-instance v2, Lcom/shabakaty/downloader/k21;

    iget-object v3, p0, Lcom/shabakaty/downloader/cr4;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    iget-object v5, p1, Lcom/shabakaty/downloader/zn4$i;->j:Lcom/shabakaty/downloader/he;

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ma3;->a(Lcom/shabakaty/downloader/he;)Lcom/shabakaty/downloader/he;

    invoke-direct {v2, v0, v3, v5}, Lcom/shabakaty/downloader/k21;-><init>(Lcom/shabakaty/downloader/kk4;Ljava/lang/String;Lcom/shabakaty/downloader/he;)V

    .line 38
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    .line 39
    iget-boolean p1, p1, Lcom/shabakaty/downloader/zn4$i;->i:Z

    if-eqz p1, :cond_c

    .line 40
    sget-object p1, Lcom/shabakaty/downloader/kk4;->j:Ljava/util/Map;

    iget-object v2, v0, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 41
    iput-boolean v1, v0, Lcom/shabakaty/downloader/kk4;->f:Z

    goto :goto_2

    .line 42
    :cond_c
    iget-object p1, p0, Lcom/shabakaty/downloader/cr4;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_d
    check-cast p1, Lcom/shabakaty/downloader/zn4$e;

    .line 44
    new-instance v0, Lcom/shabakaty/downloader/xu0;

    iget-object v2, p0, Lcom/shabakaty/downloader/cr4;->h:Lcom/shabakaty/downloader/ma3;

    .line 45
    iget-object v3, p1, Lcom/shabakaty/downloader/zn4$e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ma3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p1, Lcom/shabakaty/downloader/zn4$e;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v4, p1, Lcom/shabakaty/downloader/zn4$e;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-direct {v0, v2, v3, v4}, Lcom/shabakaty/downloader/xu0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p1, Lcom/shabakaty/downloader/zn4$e;->c:Ljava/lang/String;

    if-eqz p1, :cond_e

    const-string v2, "pubSysKey"

    .line 51
    invoke-virtual {v0, v2, p1}, Lcom/shabakaty/downloader/zg2;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/sz2;

    .line 52
    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/cr4;->a()Lcom/shabakaty/downloader/k21;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/k21;->z(Lcom/shabakaty/downloader/sz2;)Lcom/shabakaty/downloader/k21;

    :cond_f
    :goto_2
    return v1
.end method
