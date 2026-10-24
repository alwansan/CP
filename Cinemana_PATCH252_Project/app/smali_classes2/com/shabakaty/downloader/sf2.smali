.class public final Lcom/shabakaty/downloader/sf2;
.super Ljava/lang/Object;
.source "LazyJavaAnnotationDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r8;
.implements Lcom/shabakaty/downloader/le3;


# static fields
.field public static final synthetic i:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/shabakaty/downloader/bg2;

.field public final b:Lcom/shabakaty/downloader/g62;

.field public final c:Lcom/shabakaty/downloader/w13;

.field public final d:Lcom/shabakaty/downloader/d03;

.field public final e:Lcom/shabakaty/downloader/b82;

.field public final f:Lcom/shabakaty/downloader/d03;

.field public final g:Z

.field public final h:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/sf2;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "fqName"

    const-string v5, "getFqName()Lorg/jetbrains/kotlin/name/FqName;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "type"

    const-string v5, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/sf2;->i:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaAnnotation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sf2;->b:Lcom/shabakaty/downloader/g62;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/sf2$b;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/sf2$b;-><init>(Lcom/shabakaty/downloader/sf2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sf2;->c:Lcom/shabakaty/downloader/w13;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/sf2$c;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/sf2$c;-><init>(Lcom/shabakaty/downloader/sf2;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sf2;->d:Lcom/shabakaty/downloader/d03;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->j:Lcom/shabakaty/downloader/c82;

    .line 12
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/c82;->a(Lcom/shabakaty/downloader/d72;)Lcom/shabakaty/downloader/b82;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/sf2;->e:Lcom/shabakaty/downloader/b82;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->a:Lcom/shabakaty/downloader/md4;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/sf2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/sf2$a;-><init>(Lcom/shabakaty/downloader/sf2;)V

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sf2;->f:Lcom/shabakaty/downloader/d03;

    .line 16
    invoke-interface {p2}, Lcom/shabakaty/downloader/g62;->j()Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/sf2;->g:Z

    .line 17
    invoke-interface {p2}, Lcom/shabakaty/downloader/g62;->x()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/sf2;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/h62;)Lcom/shabakaty/downloader/qb0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h62;",
            ")",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/j72;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/j72;

    invoke-interface {p1}, Lcom/shabakaty/downloader/j72;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/sb0;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/qb0;

    move-result-object v1

    goto/16 :goto_4

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/e72;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/e72;

    invoke-interface {p1}, Lcom/shabakaty/downloader/e72;->b()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    invoke-interface {p1}, Lcom/shabakaty/downloader/e72;->d()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    if-eqz v0, :cond_e

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/z31;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/z31;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/hw2;)V

    goto/16 :goto_4

    .line 4
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/n62;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/shabakaty/downloader/n62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/h62;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/shabakaty/downloader/ta2;->b:Lcom/shabakaty/downloader/hw2;

    :cond_3
    const-string v2, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/shabakaty/downloader/n62;->e()Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/sf2;->d:Lcom/shabakaty/downloader/d03;

    sget-object v3, Lcom/shabakaty/downloader/sf2;->i:[Lcom/shabakaty/downloader/jd2;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/b74;

    const-string v3, "type"

    .line 6
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_4

    .line 7
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/fr0;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/sz4;

    move-result-object v0

    if-nez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/y72;->o:Lcom/shabakaty/downloader/nu2;

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    const-string v2, "Unknown array element type"

    .line 13
    invoke-static {v2}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/zd2;->h(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :goto_0
    const-string v1, "DescriptorResolverUtils.\u2026 type\")\n                )"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Lcom/shabakaty/downloader/h62;

    .line 19
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/sf2;->a(Lcom/shabakaty/downloader/h62;)Lcom/shabakaty/downloader/qb0;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/shabakaty/downloader/r13;

    invoke-direct {v2}, Lcom/shabakaty/downloader/r13;-><init>()V

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string p1, "value"

    .line 20
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/shabakaty/downloader/fd;

    new-instance v2, Lcom/shabakaty/downloader/rb0;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/rb0;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-direct {p1, v1, v2}, Lcom/shabakaty/downloader/fd;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/tm1;)V

    :goto_2
    move-object v1, p1

    goto/16 :goto_4

    .line 22
    :cond_8
    instance-of v0, p1, Lcom/shabakaty/downloader/i62;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lcom/shabakaty/downloader/i62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/i62;->a()Lcom/shabakaty/downloader/g62;

    move-result-object p1

    .line 23
    new-instance v1, Lcom/shabakaty/downloader/c9;

    new-instance v0, Lcom/shabakaty/downloader/sf2;

    iget-object v3, p0, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 24
    invoke-direct {v0, v3, p1, v2}, Lcom/shabakaty/downloader/sf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/g62;Z)V

    .line 25
    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/c9;-><init>(Lcom/shabakaty/downloader/r8;)V

    goto/16 :goto_4

    .line 26
    :cond_9
    instance-of v0, p1, Lcom/shabakaty/downloader/v62;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/shabakaty/downloader/v62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/v62;->c()Lcom/shabakaty/downloader/g82;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->a:Lcom/shabakaty/downloader/bg2;

    .line 28
    iget-object v0, v0, Lcom/shabakaty/downloader/bg2;->e:Lcom/shabakaty/downloader/r82;

    .line 29
    sget-object v3, Lcom/shabakaty/downloader/du4;->s:Lcom/shabakaty/downloader/du4;

    const/4 v4, 0x3

    invoke-static {v3, v2, v1, v4}, Lcom/shabakaty/downloader/s82;->b(Lcom/shabakaty/downloader/du4;ZLcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/i82;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/shabakaty/downloader/r82;->e(Lcom/shabakaty/downloader/g82;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "argumentType"

    .line 30
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    move-object v3, p1

    .line 32
    :goto_3
    invoke-static {v3}, Lcom/shabakaty/downloader/zd2;->A(Lcom/shabakaty/downloader/qe2;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 33
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qt4;

    invoke-interface {v3}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v3

    const-string v4, "type.arguments.single().type"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 34
    :cond_b
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    .line 35
    instance-of v4, v3, Lcom/shabakaty/downloader/q20;

    if-eqz v4, :cond_d

    .line 36
    invoke-static {v3}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/shabakaty/downloader/lc2;

    new-instance v0, Lcom/shabakaty/downloader/lc2$a$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/lc2$a$a;-><init>(Lcom/shabakaty/downloader/qe2;)V

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/lc2$a;)V

    goto :goto_4

    .line 37
    :cond_c
    new-instance p1, Lcom/shabakaty/downloader/lc2;

    invoke-direct {p1, v1, v0}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/v20;I)V

    goto/16 :goto_2

    .line 38
    :cond_d
    instance-of p1, v3, Lcom/shabakaty/downloader/kt4;

    if-eqz p1, :cond_e

    .line 39
    new-instance p1, Lcom/shabakaty/downloader/lc2;

    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->b:Lcom/shabakaty/downloader/gi1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gi1;->i()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/v20;->l(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/shabakaty/downloader/lc2;-><init>(Lcom/shabakaty/downloader/v20;I)V

    goto/16 :goto_2

    :cond_e
    :goto_4
    return-object v1
.end method

.method public b()Lcom/shabakaty/downloader/qe2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->d:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/sf2;->i:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/fi1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->c:Lcom/shabakaty/downloader/w13;

    sget-object v1, Lcom/shabakaty/downloader/sf2;->i:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "<this>"

    .line 2
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/fi1;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sf2;->g:Z

    return v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->e:Lcom/shabakaty/downloader/b82;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/qb0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sf2;->f:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/sf2;->i:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wq0;->a:Lcom/shabakaty/downloader/wq0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/shabakaty/downloader/wq0;->r(Lcom/shabakaty/downloader/wq0;Lcom/shabakaty/downloader/r8;Lcom/shabakaty/downloader/z8;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
