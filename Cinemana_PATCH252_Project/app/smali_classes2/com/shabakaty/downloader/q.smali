.class public abstract Lcom/shabakaty/downloader/q;
.super Lcom/shabakaty/downloader/k1;
.source "AbstractClassTypeConstructor.java"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/k1;-><init>(Lcom/shabakaty/downloader/md4;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/q;->q(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic q(I)V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const-string v8, "storageManager"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_2
    const-string v8, "classifier"

    aput-object v8, v5, v7

    goto :goto_2

    :cond_3
    aput-object v6, v5, v7

    :goto_2
    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    aput-object v6, v5, v2

    goto :goto_3

    :cond_4
    const-string v6, "getAdditionalNeighboursInSupertypeGraph"

    aput-object v6, v5, v2

    goto :goto_3

    :cond_5
    const-string v6, "getBuiltIns"

    aput-object v6, v5, v2

    :goto_3
    if-eq p0, v2, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :cond_6
    const-string v6, "isSameClassifier"

    aput-object v6, v5, v4

    :cond_7
    :goto_4
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method


# virtual methods
.method public bridge synthetic d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/shabakaty/downloader/g30;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/q20;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const-string v3, "first"

    .line 2
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 6
    instance-of v3, v0, Lcom/shabakaty/downloader/nu2;

    if-eqz v3, :cond_1

    instance-of p1, p1, Lcom/shabakaty/downloader/nu2;

    goto :goto_3

    .line 7
    :cond_1
    instance-of v3, p1, Lcom/shabakaty/downloader/nu2;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    instance-of v3, v0, Lcom/shabakaty/downloader/k93;

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/shabakaty/downloader/k93;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/shabakaty/downloader/k93;

    invoke-interface {v0}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/k93;

    invoke-interface {p1}, Lcom/shabakaty/downloader/k93;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 9
    :cond_3
    instance-of v3, p1, Lcom/shabakaty/downloader/k93;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    .line 11
    :cond_6
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public k()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/zd2;->L(Lcom/shabakaty/downloader/q20;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/q;->q(I)V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/e94;

    invoke-direct {v1}, Lcom/shabakaty/downloader/e94;-><init>()V

    .line 5
    check-cast v0, Lcom/shabakaty/downloader/q20;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/e94;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->b0()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/e94;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/q;->s()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/q;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract s()Lcom/shabakaty/downloader/q20;
.end method
