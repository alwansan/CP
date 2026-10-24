.class public final Lcom/shabakaty/downloader/ty4;
.super Ljava/lang/Object;
.source "util.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ty4$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lcom/shabakaty/downloader/tc2;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/tc2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/tc2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/shabakaty/downloader/bo1;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/shabakaty/downloader/bo1;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uq;->compute()Lcom/shabakaty/downloader/zb2;

    move-result-object p0

    :goto_2
    instance-of v0, p0, Lcom/shabakaty/downloader/tc2;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/tc2;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final b(Lcom/shabakaty/downloader/h8;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h8;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/shabakaty/downloader/r8;

    .line 5
    invoke-interface {v1}, Lcom/shabakaty/downloader/r8;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/shabakaty/downloader/oo3;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/shabakaty/downloader/oo3;

    .line 7
    iget-object v4, v2, Lcom/shabakaty/downloader/oo3;->b:Ljava/lang/annotation/Annotation;

    goto :goto_2

    .line 8
    :cond_0
    instance-of v3, v2, Lcom/shabakaty/downloader/nv3$a;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/shabakaty/downloader/nv3$a;

    .line 9
    iget-object v1, v2, Lcom/shabakaty/downloader/nv3$a;->b:Lcom/shabakaty/downloader/kp3;

    .line 10
    instance-of v2, v1, Lcom/shabakaty/downloader/ro3;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/shabakaty/downloader/ro3;

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget-object v4, v1, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/ty4;->g(Lcom/shabakaty/downloader/r8;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string p0, "Container"

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 16
    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_b

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/annotation/Annotation;

    .line 20
    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 22
    const-class v5, Lcom/shabakaty/downloader/sr3;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_9

    new-array v5, v2, [Ljava/lang/Class;

    const-string v6, "value"

    .line 23
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/annotation/Annotation;

    invoke-static {v3}, Lcom/shabakaty/downloader/hd;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_6

    .line 24
    :cond_9
    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 25
    :goto_6
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_5

    :cond_a
    move-object v0, v1

    :cond_b
    return-object v0
.end method

.method public static final c(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 4
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter with void type is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unknown primitive: "

    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Ljava/lang/Class;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/rq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/shabakaty/downloader/es2;",
            "D::",
            "Lcom/shabakaty/downloader/rq;",
            ">(",
            "Ljava/lang/Class<",
            "*>;TM;",
            "Lcom/shabakaty/downloader/jw2;",
            "Lcom/shabakaty/downloader/bu4;",
            "Lcom/shabakaty/downloader/gm;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/jr2;",
            "-TM;+TD;>;)TD;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p5

    const-string v2, "moduleAnchor"

    move-object v3, p0

    invoke-static {p0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "proto"

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nameResolver"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeTable"

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "metadataVersion"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "createDescriptor"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/ju2;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/mv3;

    move-result-object v2

    .line 2
    instance-of v3, v0, Lcom/shabakaty/downloader/qi3;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/qi3;

    .line 3
    iget-object v3, v3, Lcom/shabakaty/downloader/qi3;->z:Ljava/util/List;

    :goto_0
    move-object v12, v3

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, v0, Lcom/shabakaty/downloader/vi3;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/vi3;

    .line 5
    iget-object v3, v3, Lcom/shabakaty/downloader/vi3;->z:Ljava/util/List;

    goto :goto_0

    .line 6
    :goto_1
    new-instance v13, Lcom/shabakaty/downloader/rr0;

    .line 7
    iget-object v4, v2, Lcom/shabakaty/downloader/mv3;->a:Lcom/shabakaty/downloader/or0;

    .line 8
    iget-object v6, v4, Lcom/shabakaty/downloader/or0;->b:Lcom/shabakaty/downloader/nu2;

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    sget-object v8, Lcom/shabakaty/downloader/f05;->c:Lcom/shabakaty/downloader/f05;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "typeParameters"

    .line 11
    invoke-static {v12, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v13

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    .line 12
    invoke-direct/range {v3 .. v12}, Lcom/shabakaty/downloader/rr0;-><init>(Lcom/shabakaty/downloader/or0;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/xs4;Ljava/util/List;)V

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/jr2;

    invoke-direct {v2, v13}, Lcom/shabakaty/downloader/jr2;-><init>(Lcom/shabakaty/downloader/rr0;)V

    invoke-interface {v1, v2, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rq;

    return-object v0

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported message: "

    .line 15
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final e(Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/ao3;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/q20;

    invoke-interface {p0}, Lcom/shabakaty/downloader/q20;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/v20;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lcom/shabakaty/downloader/v20;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fi1;->j()Lcom/shabakaty/downloader/gi1;

    move-result-object v1

    const-string v2, "kotlinClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/e82;->g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->h()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javaClassId.packageFqName.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "javaClassId.relativeClassName.asString()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kotlin"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "LongArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    const-class p0, [J

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "FloatArray"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    const-class p0, [F

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "IntArray"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    const-class p0, [I

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "Array"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-class p0, [Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "DoubleArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    const-class p0, [D

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "ByteArray"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 13
    :cond_6
    const-class p0, [B

    goto :goto_2

    :sswitch_6
    const-string v1, "CharArray"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    const-class p0, [C

    goto :goto_2

    :sswitch_7
    const-string v1, "ShortArray"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    .line 17
    :cond_8
    const-class p0, [S

    goto :goto_2

    :sswitch_8
    const-string v1, "BooleanArray"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    const-class p0, [Z

    goto :goto_2

    .line 20
    :cond_a
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-lez p2, :cond_b

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/ne4;->F(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x4c

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    :cond_b
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/vd5;->D(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x35c13ccf -> :sswitch_8
        -0x2d7eb8a3 -> :sswitch_7
        -0x2d0e4b7d -> :sswitch_6
        -0x47759ef -> :sswitch_5
        0x15568e8 -> :sswitch_4
        0x3c98239 -> :sswitch_3
        0x23deebca -> :sswitch_2
        0x388e557d -> :sswitch_1
        0x7d6d891d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final g(Lcom/shabakaty/downloader/r8;)Ljava/lang/annotation/Annotation;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 2
    :cond_2
    invoke-interface {p0}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/hw2;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qb0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "annotationClass.classLoader"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/ty4;->i(Lcom/shabakaty/downloader/qb0;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/shabakaty/downloader/x93;

    invoke-direct {v5, v4, v3}, Lcom/shabakaty/downloader/x93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-nez v5, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {v2}, Lcom/shabakaty/downloader/vm2;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_6
    invoke-static {v0, p0, v2}, Lcom/shabakaty/downloader/p8;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static final h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/vm0;->k()Lcom/shabakaty/downloader/s94;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/je2;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/je2;

    .line 4
    iget-object p0, v0, Lcom/shabakaty/downloader/je2;->b:Lcom/shabakaty/downloader/he2;

    .line 5
    check-cast p0, Lcom/shabakaty/downloader/yp3;

    .line 6
    iget-object p0, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lcom/shabakaty/downloader/nv3$a;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/shabakaty/downloader/nv3$a;

    .line 9
    iget-object p0, v0, Lcom/shabakaty/downloader/nv3$a;->b:Lcom/shabakaty/downloader/kp3;

    .line 10
    check-cast p0, Lcom/shabakaty/downloader/fp3;

    .line 11
    iget-object p0, p0, Lcom/shabakaty/downloader/fp3;->a:Ljava/lang/Class;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/downloader/qo3;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/ty4;->f(Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/v20;I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final i(Lcom/shabakaty/downloader/qb0;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/c9;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/c9;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/shabakaty/downloader/r8;

    invoke-static {p0}, Lcom/shabakaty/downloader/ty4;->g(Lcom/shabakaty/downloader/r8;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto/16 :goto_13

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/shabakaty/downloader/fd;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    check-cast p0, Lcom/shabakaty/downloader/fd;

    .line 5
    instance-of v0, p0, Lcom/shabakaty/downloader/tr0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/tr0;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    goto/16 :goto_13

    .line 6
    :cond_2
    iget-object v0, v0, Lcom/shabakaty/downloader/tr0;->c:Lcom/shabakaty/downloader/qe2;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 8
    check-cast v3, Ljava/lang/Iterable;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Lcom/shabakaty/downloader/qb0;

    .line 12
    invoke-static {v5, p1}, Lcom/shabakaty/downloader/ty4;->i(Lcom/shabakaty/downloader/qb0;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    sget-object v3, Lcom/shabakaty/downloader/zd2;->e:Lcom/shabakaty/downloader/hw2;

    if-eqz v0, :cond_e

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    .line 15
    :cond_4
    invoke-static {v3}, Lcom/shabakaty/downloader/zd2;->t(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/sf3;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_5

    const/4 v3, -0x1

    goto :goto_3

    .line 16
    :cond_5
    sget-object v5, Lcom/shabakaty/downloader/ty4$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 17
    :pswitch_0
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 19
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [D

    :goto_4
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 21
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [J

    :goto_5
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 22
    :pswitch_3
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 23
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [F

    :goto_6
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 24
    :pswitch_4
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 25
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_7
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 26
    :pswitch_5
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 27
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [S

    :goto_8
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Short"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 28
    :pswitch_6
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 29
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [B

    :goto_9
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 30
    :pswitch_7
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 31
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [C

    :goto_a
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Char"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 32
    :pswitch_8
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 33
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Z

    :goto_b
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_6
    move-object v1, p1

    goto/16 :goto_13

    .line 34
    :pswitch_9
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->A(Lcom/shabakaty/downloader/qe2;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 35
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qt4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v3, "type.arguments.single().type"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    instance-of v5, v3, Lcom/shabakaty/downloader/q20;

    if-eqz v5, :cond_7

    check-cast v3, Lcom/shabakaty/downloader/q20;

    goto :goto_c

    :cond_7
    move-object v3, v1

    :goto_c
    if-eqz v3, :cond_c

    .line 37
    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->M(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 39
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_d
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 40
    :cond_8
    invoke-static {v3}, Lcom/shabakaty/downloader/zd2;->F(Lcom/shabakaty/downloader/q20;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 42
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/Class;

    :goto_e
    if-ge v2, p0, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 43
    :cond_9
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    if-nez v0, :cond_a

    move-object p1, v1

    goto :goto_f

    .line 44
    :cond_a
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/ty4;->f(Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/v20;I)Ljava/lang/Class;

    move-result-object p1

    :goto_f
    if-nez p1, :cond_b

    goto/16 :goto_13

    .line 45
    :cond_b
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 46
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_10
    if-ge v2, p0, :cond_19

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    move v2, p1

    goto :goto_10

    .line 48
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not a class type: "

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p0, "Not an array type: "

    .line 49
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const/16 p0, 0x5c

    .line 50
    invoke-static {p0}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v1

    .line 51
    :cond_f
    instance-of v0, p0, Lcom/shabakaty/downloader/z31;

    if-eqz v0, :cond_11

    .line 52
    check-cast p0, Lcom/shabakaty/downloader/z31;

    .line 53
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 54
    check-cast p0, Lcom/shabakaty/downloader/x93;

    .line 55
    iget-object v0, p0, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 56
    check-cast v0, Lcom/shabakaty/downloader/v20;

    .line 57
    iget-object p0, p0, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 58
    check-cast p0, Lcom/shabakaty/downloader/hw2;

    .line 59
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/ty4;->f(Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/v20;I)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_13

    .line 60
    :cond_10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_13

    .line 62
    :cond_11
    instance-of v0, p0, Lcom/shabakaty/downloader/lc2;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/shabakaty/downloader/lc2;

    .line 63
    iget-object p0, p0, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 64
    check-cast p0, Lcom/shabakaty/downloader/lc2$a;

    .line 65
    instance-of v0, p0, Lcom/shabakaty/downloader/lc2$a$b;

    if-eqz v0, :cond_12

    .line 66
    check-cast p0, Lcom/shabakaty/downloader/lc2$a$b;

    .line 67
    iget-object p0, p0, Lcom/shabakaty/downloader/lc2$a$b;->a:Lcom/shabakaty/downloader/x20;

    .line 68
    iget-object v0, p0, Lcom/shabakaty/downloader/x20;->a:Lcom/shabakaty/downloader/v20;

    .line 69
    iget p0, p0, Lcom/shabakaty/downloader/x20;->b:I

    .line 70
    invoke-static {p1, v0, p0}, Lcom/shabakaty/downloader/ty4;->f(Ljava/lang/ClassLoader;Lcom/shabakaty/downloader/v20;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_13

    .line 71
    :cond_12
    instance-of p1, p0, Lcom/shabakaty/downloader/lc2$a$a;

    if-eqz p1, :cond_15

    .line 72
    check-cast p0, Lcom/shabakaty/downloader/lc2$a$a;

    .line 73
    iget-object p0, p0, Lcom/shabakaty/downloader/lc2$a$a;->a:Lcom/shabakaty/downloader/qe2;

    .line 74
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    invoke-interface {p0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p0

    instance-of p1, p0, Lcom/shabakaty/downloader/q20;

    if-eqz p1, :cond_13

    check-cast p0, Lcom/shabakaty/downloader/q20;

    goto :goto_11

    :cond_13
    move-object p0, v1

    :goto_11
    if-nez p0, :cond_14

    goto :goto_13

    :cond_14
    invoke-static {p0}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_13

    :cond_15
    new-instance p0, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p0

    .line 75
    :cond_16
    instance-of p1, p0, Lcom/shabakaty/downloader/e51;

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_12

    :cond_17
    instance-of p1, p0, Lcom/shabakaty/downloader/r13;

    :goto_12
    if-eqz p1, :cond_18

    goto :goto_13

    .line 76
    :cond_18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qb0;->b()Ljava/lang/Object;

    move-result-object v1

    :cond_19
    :goto_13
    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
