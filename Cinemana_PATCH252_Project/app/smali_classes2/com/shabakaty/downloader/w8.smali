.class public final Lcom/shabakaty/downloader/w8;
.super Ljava/lang/Object;
.source "AnnotationTypeQualifierResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/w8$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/k82;

.field public final b:Lcom/shabakaty/downloader/rr2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rr2<",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/k82;)V
    .locals 1

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 2
    new-instance p2, Lcom/shabakaty/downloader/w8$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/w8$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/w8;->b:Lcom/shabakaty/downloader/rr2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/hn1;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;",
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/z31;",
            "-",
            "Lcom/shabakaty/downloader/u8;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/u8;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/fd;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/qb0;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/qb0;

    .line 7
    invoke-virtual {p0, v1, p2}, Lcom/shabakaty/downloader/w8;->a(Lcom/shabakaty/downloader/qb0;Lcom/shabakaty/downloader/hn1;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/z31;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/shabakaty/downloader/u8;->values()[Lcom/shabakaty/downloader/u8;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    :cond_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, p1, v3}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/shabakaty/downloader/iq6;->q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 10
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final b(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;
    .locals 1

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/w8;->c(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ra2;->a:Lcom/shabakaty/downloader/tr3;

    :cond_0
    return-object p1
.end method

.method public final c(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/tr3;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ra2;->c:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tr3;

    if-nez v0, :cond_b

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p1

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/v8;->d:Lcom/shabakaty/downloader/fi1;

    .line 7
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/d9;->r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/shabakaty/downloader/hr0;->a:I

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/r8;->l()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->a0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qb0;

    .line 9
    :goto_0
    instance-of v1, p1, Lcom/shabakaty/downloader/z31;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/z31;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 11
    iget-object v1, v1, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/ra2;->b:Lcom/shabakaty/downloader/tr3;

    if-nez v1, :cond_a

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/z31;->c:Lcom/shabakaty/downloader/hw2;

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7f610e2e

    if-eq v1, v2, :cond_8

    const v2, -0x6d97ad37

    if-eq v1, v2, :cond_6

    const v2, 0x288a86

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "WARN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/tr3;->t:Lcom/shabakaty/downloader/tr3;

    goto :goto_2

    :cond_6
    const-string v1, "STRICT"

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    sget-object v0, Lcom/shabakaty/downloader/tr3;->u:Lcom/shabakaty/downloader/tr3;

    goto :goto_2

    :cond_8
    const-string v1, "IGNORE"

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    .line 19
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/tr3;->s:Lcom/shabakaty/downloader/tr3;

    goto :goto_2

    :cond_a
    move-object v0, v1

    :cond_b
    :goto_2
    return-object v0
.end method

.method public final d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/r8;
    .locals 4

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/w8;->a:Lcom/shabakaty/downloader/k82;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/k82;->a:Lcom/shabakaty/downloader/ra2;

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ra2;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/v8;->h:Ljava/util/Set;

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/v8;->b:Lcom/shabakaty/downloader/fi1;

    .line 8
    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    return-object p1

    .line 9
    :cond_4
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object p1

    sget-object v2, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    if-eq p1, v2, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/shabakaty/downloader/w8;->b:Lcom/shabakaty/downloader/rr2;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/r8;

    :goto_2
    return-object v1
.end method
