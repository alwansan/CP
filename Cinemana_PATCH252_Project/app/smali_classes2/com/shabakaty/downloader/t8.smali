.class public final Lcom/shabakaty/downloader/t8;
.super Ljava/lang/Object;
.source "AnnotationDeserializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/t8$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/nu2;

.field public final b:Lcom/shabakaty/downloader/b03;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/b03;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/t8;->a:Lcom/shabakaty/downloader/nu2;

    iput-object p2, p0, Lcom/shabakaty/downloader/t8;->b:Lcom/shabakaty/downloader/b03;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/ii3;->t:I

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/t8;->a:Lcom/shabakaty/downloader/nu2;

    iget-object v2, p0, Lcom/shabakaty/downloader/t8;->b:Lcom/shabakaty/downloader/b03;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/rb1;->c(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b03;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/x21;->r:Lcom/shabakaty/downloader/x21;

    .line 5
    iget-object v2, p1, Lcom/shabakaty/downloader/ii3;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->m(Lcom/shabakaty/downloader/qm0;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->o()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "annotationClass.constructors"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->r0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l20;

    if-eqz v2, :cond_7

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "constructor.valueParameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lcom/shabakaty/downloader/kf5;->i(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    const/16 v2, 0x10

    .line 10
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    move-object v4, v2

    check-cast v4, Lcom/shabakaty/downloader/sz4;

    .line 13
    invoke-interface {v4}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ii3;->u:Ljava/util/List;

    const-string v1, "proto.argumentList"

    .line 15
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Lcom/shabakaty/downloader/ii3$b;

    const-string v4, "it"

    .line 19
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget v4, v2, Lcom/shabakaty/downloader/ii3$b;->t:I

    .line 21
    invoke-static {p2, v4}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/sz4;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    new-instance v6, Lcom/shabakaty/downloader/x93;

    .line 23
    iget v7, v2, Lcom/shabakaty/downloader/ii3$b;->t:I

    .line 24
    invoke-static {p2, v7}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v7

    invoke-interface {v4}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    const-string v8, "parameter.type"

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, v2, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    const-string v8, "proto.value"

    .line 26
    invoke-static {v2, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v4, v2, p2}, Lcom/shabakaty/downloader/t8;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/qb0;

    move-result-object v8

    .line 28
    invoke-virtual {p0, v8, v4, v2}, Lcom/shabakaty/downloader/t8;->b(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v5, v8

    :cond_3
    if-nez v5, :cond_4

    const-string v5, "Unexpected argument value: actual type "

    .line 29
    invoke-static {v5}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 30
    iget-object v2, v2, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    .line 32
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v5, Lcom/shabakaty/downloader/e51$a;

    invoke-direct {v5, v2}, Lcom/shabakaty/downloader/e51$a;-><init>(Ljava/lang/String;)V

    .line 34
    :cond_4
    invoke-direct {v6, v7, v5}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_2
    if-nez v5, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_6
    invoke-static {v1}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 37
    :cond_7
    new-instance p1, Lcom/shabakaty/downloader/s8;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p2

    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    invoke-direct {p1, p2, v1, v0}, Lcom/shabakaty/downloader/s8;-><init>(Lcom/shabakaty/downloader/qe2;Ljava/util/Map;Lcom/shabakaty/downloader/s94;)V

    return-object p1
.end method

.method public final b(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/ii3$b$c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/t8$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 3
    iget-object p3, p0, Lcom/shabakaty/downloader/t8;->a:Lcom/shabakaty/downloader/nu2;

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/qb0;->a(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_4

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/fd;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/fd;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 7
    iget-object v2, p3, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/t8;->a:Lcom/shabakaty/downloader/nu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/zd2;->g(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    const-string v0, "builtIns.getArrayElementType(expectedType)"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Lcom/shabakaty/downloader/fd;

    .line 12
    iget-object v0, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/util/Collection;

    const-string v2, "<this>"

    .line 14
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/n22;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v2, v4, v0}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    .line 16
    instance-of v0, v2, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/m22;

    .line 18
    iget-boolean v1, v1, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz v1, :cond_9

    .line 19
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/k22;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k22;->a()I

    move-result v1

    .line 20
    iget-object v2, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 21
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qb0;

    .line 22
    iget-object v5, p3, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ii3$b$c;

    const-string v5, "value.getArrayElement(i)"

    .line 23
    invoke-static {v1, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, v1}, Lcom/shabakaty/downloader/t8;->b(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_5
    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    .line 24
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    instance-of p2, p1, Lcom/shabakaty/downloader/q20;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/shabakaty/downloader/q20;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_9

    .line 27
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->F(Lcom/shabakaty/downloader/q20;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x0

    :cond_9
    :goto_4
    return v3
.end method

.method public final c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/qb0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/ii3$b$c;",
            "Lcom/shabakaty/downloader/jw2;",
            ")",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;"
        }
    .end annotation

    const-string v0, "expectedType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->M:Lcom/shabakaty/downloader/zd1$b;

    .line 2
    iget v1, p2, Lcom/shabakaty/downloader/ii3$b$c;->D:I

    const-string v2, "IS_UNSIGNED.get(value.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    .line 4
    iget-object v1, p2, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/t8$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported annotation argument type: "

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_6

    .line 8
    :pswitch_0
    iget-object p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->B:Ljava/util/List;

    const-string v0, "value.arrayElementList"

    .line 9
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/shabakaty/downloader/ii3$b$c;

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/t8;->a:Lcom/shabakaty/downloader/nu2;

    invoke-interface {v2}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    const-string v3, "builtIns.anyType"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, p3}, Lcom/shabakaty/downloader/t8;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ii3$b$c;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/qb0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/tr0;

    invoke-direct {p2, v0, p1}, Lcom/shabakaty/downloader/tr0;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/qe2;)V

    goto/16 :goto_5

    .line 16
    :pswitch_1
    new-instance p1, Lcom/shabakaty/downloader/c9;

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->A:Lcom/shabakaty/downloader/ii3;

    const-string v0, "value.annotation"

    .line 18
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/t8;->a(Lcom/shabakaty/downloader/ii3;Lcom/shabakaty/downloader/jw2;)Lcom/shabakaty/downloader/r8;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/c9;-><init>(Lcom/shabakaty/downloader/r8;)V

    goto/16 :goto_4

    .line 19
    :pswitch_2
    new-instance p1, Lcom/shabakaty/downloader/z31;

    .line 20
    iget v0, p2, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    .line 21
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 22
    iget p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->z:I

    .line 23
    invoke-static {p3, p2}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    goto/16 :goto_4

    .line 24
    :pswitch_3
    new-instance p1, Lcom/shabakaty/downloader/lc2;

    .line 25
    iget v0, p2, Lcom/shabakaty/downloader/ii3$b$c;->y:I

    .line 26
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p3

    .line 27
    iget p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->C:I

    .line 28
    invoke-direct {p1, p3, p2}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/v20;I)V

    goto/16 :goto_4

    .line 29
    :pswitch_4
    new-instance p1, Lcom/shabakaty/downloader/ge4;

    .line 30
    iget p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->x:I

    .line 31
    invoke-interface {p3, p2}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ge4;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 32
    :pswitch_5
    new-instance p1, Lcom/shabakaty/downloader/wm;

    .line 33
    iget-wide p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 34
    :goto_2
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/wm;-><init>(Z)V

    goto :goto_4

    .line 35
    :pswitch_6
    new-instance p1, Lcom/shabakaty/downloader/bv0;

    .line 36
    iget-wide p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->w:D

    .line 37
    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/bv0;-><init>(D)V

    goto :goto_4

    .line 38
    :pswitch_7
    new-instance p1, Lcom/shabakaty/downloader/ne1;

    .line 39
    iget p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->v:F

    .line 40
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ne1;-><init>(F)V

    goto :goto_4

    .line 41
    :pswitch_8
    iget-wide p1, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    if-eqz v0, :cond_3

    .line 42
    new-instance p3, Lcom/shabakaty/downloader/yu4;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/yu4;-><init>(J)V

    goto :goto_3

    :cond_3
    new-instance p3, Lcom/shabakaty/downloader/kl2;

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/kl2;-><init>(J)V

    :goto_3
    move-object p2, p3

    goto :goto_5

    .line 43
    :pswitch_9
    iget-wide p1, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    long-to-int p2, p1

    if-eqz v0, :cond_4

    .line 44
    new-instance p1, Lcom/shabakaty/downloader/xu4;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/xu4;-><init>(I)V

    goto :goto_4

    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/q22;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/q22;-><init>(I)V

    goto :goto_4

    .line 45
    :pswitch_a
    iget-wide p1, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    long-to-int p2, p1

    int-to-short p1, p2

    if-eqz v0, :cond_5

    .line 46
    new-instance p2, Lcom/shabakaty/downloader/ev4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ev4;-><init>(S)V

    goto :goto_5

    :cond_5
    new-instance p2, Lcom/shabakaty/downloader/k54;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/k54;-><init>(S)V

    goto :goto_5

    .line 47
    :pswitch_b
    new-instance p1, Lcom/shabakaty/downloader/dz;

    .line 48
    iget-wide p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    long-to-int p3, p2

    int-to-char p2, p3

    .line 49
    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/dz;-><init>(C)V

    :goto_4
    move-object p2, p1

    goto :goto_5

    .line 50
    :pswitch_c
    iget-wide p1, p2, Lcom/shabakaty/downloader/ii3$b$c;->u:J

    long-to-int p2, p1

    int-to-byte p1, p2

    if-eqz v0, :cond_6

    .line 51
    new-instance p2, Lcom/shabakaty/downloader/uu4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/uu4;-><init>(B)V

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/shabakaty/downloader/hp;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/hp;-><init>(B)V

    :goto_5
    return-object p2

    .line 52
    :goto_6
    iget-object p2, p2, Lcom/shabakaty/downloader/ii3$b$c;->t:Lcom/shabakaty/downloader/ii3$b$c$c;

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
