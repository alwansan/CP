.class public Lcom/shabakaty/downloader/gq3;
.super Lcom/shabakaty/downloader/fq3;
.source "ReflectionFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/fq3;-><init>()V

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/uq;)Lcom/shabakaty/downloader/oc2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uq;->getOwner()Lcom/shabakaty/downloader/nc2;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/shabakaty/downloader/oc2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/oc2;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/r21;->t:Lcom/shabakaty/downloader/r21;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/bo1;)Lcom/shabakaty/downloader/sc2;
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/tc2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gq3;->h(Lcom/shabakaty/downloader/uq;)Lcom/shabakaty/downloader/oc2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v5

    const-string p1, "container"

    .line 2
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "signature"

    invoke-static {v3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, v6

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/xn1;Ljava/lang/Object;)V

    return-object v6
.end method

.method public b(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    const-string v0, "jClass"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/ns1;->a:Lcom/shabakaty/downloader/p22;

    .line 7
    iget-object v1, v1, Lcom/shabakaty/downloader/p22;->a:Lcom/shabakaty/downloader/o22;

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/o22;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/shabakaty/downloader/lb0;

    if-nez v1, :cond_0

    .line 9
    sget-object v1, Lcom/shabakaty/downloader/lb0;->u:Lcom/shabakaty/downloader/lb0;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget v3, v1, Lcom/shabakaty/downloader/lb0;->t:I

    if-lez v3, :cond_2

    .line 11
    iget-object v3, v1, Lcom/shabakaty/downloader/lb0;->r:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/hm2;

    .line 12
    iget-object v4, v3, Lcom/shabakaty/downloader/hm2;->r:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v1, v3, Lcom/shabakaty/downloader/hm2;->s:Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, v1, Lcom/shabakaty/downloader/lb0;->s:Lcom/shabakaty/downloader/lb0;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 15
    :goto_1
    instance-of v3, v1, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    .line 16
    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ic2;

    if-nez v1, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, v1, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 18
    :goto_2
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_8

    .line 19
    move-object v3, v1

    check-cast v3, [Ljava/lang/ref/WeakReference;

    .line 20
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_5
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 21
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ic2;

    if-nez v7, :cond_6

    move-object v8, v2

    goto :goto_3

    .line 22
    :cond_6
    iget-object v8, v7, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 23
    :goto_3
    invoke-static {v8, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v1, v7

    goto :goto_4

    .line 24
    :cond_7
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v3, v2, 0x1

    .line 25
    new-array v3, v3, [Ljava/lang/ref/WeakReference;

    .line 26
    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/ic2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object p1, v3, v2

    .line 29
    sget-object p1, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    invoke-virtual {p1, v0, v3}, Lcom/shabakaty/downloader/ns1;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/shabakaty/downloader/ns1;

    move-result-object p1

    sput-object p1, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    goto :goto_4

    .line 30
    :cond_8
    new-instance v1, Lcom/shabakaty/downloader/ic2;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ic2;-><init>(Ljava/lang/Class;)V

    .line 31
    sget-object p1, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Lcom/shabakaty/downloader/ns1;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/shabakaty/downloader/ns1;

    move-result-object p1

    sput-object p1, Lcom/shabakaty/downloader/hc2;->a:Lcom/shabakaty/downloader/ns1;

    :goto_4
    return-object v1
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/nc2;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bd2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/bd2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/zv2;)Lcom/shabakaty/downloader/xc2;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yc2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gq3;->h(Lcom/shabakaty/downloader/uq;)Lcom/shabakaty/downloader/oc2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/yc2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gd2;

    invoke-static {p1}, Lcom/shabakaty/downloader/gq3;->h(Lcom/shabakaty/downloader/uq;)Lcom/shabakaty/downloader/oc2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->getBoundReceiver()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/gd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;
    .locals 11

    const-string v0, "<this>"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lkotlin/Metadata;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkotlin/Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-interface {v0}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-interface {v0}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    const-string v3, "data"

    .line 5
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "strings"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lcom/shabakaty/downloader/im;->b([Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/vb2;->g(Ljava/io/InputStream;[Ljava/lang/String;)Lcom/shabakaty/downloader/pb2;

    move-result-object v7

    sget-object v1, Lcom/shabakaty/downloader/vb2;->b:Lcom/shabakaty/downloader/t81;

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/qi3;->J:Lcom/shabakaty/downloader/na3;

    check-cast v2, Lcom/shabakaty/downloader/q0;

    .line 9
    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/q0;->d(Ljava/io/InputStream;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/q0;->b(Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2;

    .line 10
    move-object v6, v1

    check-cast v6, Lcom/shabakaty/downloader/qi3;

    .line 11
    new-instance v9, Lcom/shabakaty/downloader/ob2;

    .line 12
    invoke-interface {v0}, Lkotlin/Metadata;->mv()[I

    move-result-object v1

    .line 13
    invoke-interface {v0}, Lkotlin/Metadata;->xi()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    .line 14
    :cond_4
    invoke-direct {v9, v1, v4}, Lcom/shabakaty/downloader/ob2;-><init>([IZ)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v8, Lcom/shabakaty/downloader/bu4;

    .line 16
    iget-object v0, v6, Lcom/shabakaty/downloader/qi3;->D:Lcom/shabakaty/downloader/bj3;

    const-string v1, "proto.typeTable"

    .line 17
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Lcom/shabakaty/downloader/bu4;-><init>(Lcom/shabakaty/downloader/bj3;)V

    sget-object v10, Lcom/shabakaty/downloader/bq3;->r:Lcom/shabakaty/downloader/bq3;

    .line 18
    invoke-static/range {v5 .. v10}, Lcom/shabakaty/downloader/ty4;->d(Ljava/lang/Class;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/rq;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/t64;

    .line 19
    new-instance v1, Lcom/shabakaty/downloader/tc2;

    sget-object v2, Lcom/shabakaty/downloader/r21;->t:Lcom/shabakaty/downloader/r21;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/tc2;-><init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/xn1;)V

    :goto_2
    if-eqz v1, :cond_5

    .line 20
    invoke-static {v1}, Lcom/shabakaty/downloader/ty4;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/tc2;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    sget-object p1, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tc2;->l()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    const-string v0, "invoke"

    .line 22
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/hq3;->b(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/rq;)V

    .line 25
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "invoke.valueParameters"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/shabakaty/downloader/iq3;->r:Lcom/shabakaty/downloader/iq3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Lcom/shabakaty/downloader/m50;->e0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/Appendable;

    const-string v1, " -> "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/hq3;->e(Lcom/shabakaty/downloader/qe2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 29
    :cond_5
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/fq3;->f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/af2;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gq3;->f(Lcom/shabakaty/downloader/tn1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
