.class public final Lcom/shabakaty/downloader/ab2;
.super Ljava/lang/Object;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/o4;
.implements Lcom/shabakaty/downloader/oc3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ab2$a;
    }
.end annotation


# static fields
.field public static final synthetic h:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Lcom/shabakaty/downloader/nu2;

.field public final b:Lcom/shabakaty/downloader/f82;

.field public final c:Lcom/shabakaty/downloader/d03;

.field public final d:Lcom/shabakaty/downloader/qe2;

.field public final e:Lcom/shabakaty/downloader/d03;

.field public final f:Lcom/shabakaty/downloader/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gq<",
            "Lcom/shabakaty/downloader/fi1;",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/ab2;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "notConsideredDeprecation"

    const-string v4, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nu2;",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/xa2$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ab2;->a:Lcom/shabakaty/downloader/nu2;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/f82;->a:Lcom/shabakaty/downloader/f82;

    iput-object v0, p0, Lcom/shabakaty/downloader/ab2;->b:Lcom/shabakaty/downloader/f82;

    .line 4
    invoke-interface {p2, p3}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/ab2;->c:Lcom/shabakaty/downloader/d03;

    .line 5
    new-instance p3, Lcom/shabakaty/downloader/fi1;

    const-string v0, "java.io"

    invoke-direct {p3, v0}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/shabakaty/downloader/bb2;

    invoke-direct {v2, p1, p3}, Lcom/shabakaty/downloader/bb2;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/yg2;

    new-instance p3, Lcom/shabakaty/downloader/cb2;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/cb2;-><init>(Lcom/shabakaty/downloader/ab2;)V

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/yg2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/t20;

    const-string p3, "Serializable"

    .line 8
    invoke-static {p3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    sget-object v5, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    .line 9
    sget-object v7, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v9, p2

    .line 10
    invoke-direct/range {v1 .. v9}, Lcom/shabakaty/downloader/t20;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/w20;Ljava/util/Collection;Lcom/shabakaty/downloader/s94;ZLcom/shabakaty/downloader/md4;)V

    .line 11
    sget-object p3, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lcom/shabakaty/downloader/t20;->T0(Lcom/shabakaty/downloader/mr2;Ljava/util/Set;Lcom/shabakaty/downloader/l20;)V

    .line 12
    invoke-virtual {p1}, Lcom/shabakaty/downloader/p;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string p3, "mockSerializableClass.defaultType"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/ab2;->d:Lcom/shabakaty/downloader/qe2;

    .line 14
    new-instance p1, Lcom/shabakaty/downloader/ab2$b;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/ab2$b;-><init>(Lcom/shabakaty/downloader/ab2;Lcom/shabakaty/downloader/md4;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ab2;->e:Lcom/shabakaty/downloader/d03;

    .line 15
    invoke-interface {p2}, Lcom/shabakaty/downloader/md4;->b()Lcom/shabakaty/downloader/gq;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ab2;->f:Lcom/shabakaty/downloader/gq;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/ab2$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/ab2$d;-><init>(Lcom/shabakaty/downloader/ab2;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ab2;->g:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/jb2;->a:Lcom/shabakaty/downloader/jb2;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/jb2;->a(Lcom/shabakaty/downloader/gi1;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/shabakaty/downloader/qe2;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ab2;->e:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    const-string v1, "cloneableType"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/shabakaty/downloader/ab2;->d:Lcom/shabakaty/downloader/qe2;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/jb2;->a(Lcom/shabakaty/downloader/gi1;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e82;->g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const-class v0, Ljava/io/Serializable;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/ab2;->d:Lcom/shabakaty/downloader/qe2;

    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_3
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    :goto_2
    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/t64;)Z
    .locals 5

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ab2;->f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/pc3;->a:Lcom/shabakaty/downloader/fi1;

    .line 4
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v1

    .line 6
    iget-boolean v1, v1, Lcom/shabakaty/downloader/xa2$b;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x3

    .line 7
    invoke-static {p2, v2, v2, v1}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uf2;->T0()Lcom/shabakaty/downloader/wf2;

    move-result-object p1

    .line 9
    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p2

    const-string v4, "functionDescriptor.name"

    invoke-static {p2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/shabakaty/downloader/mz2;->u:Lcom/shabakaty/downloader/mz2;

    invoke-virtual {p1, p2, v4}, Lcom/shabakaty/downloader/wf2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    .line 10
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/t64;

    .line 12
    invoke-static {p2, v2, v2, v1}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public c(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/t64;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/z30;->e:Lcom/shabakaty/downloader/z30;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/z30;->f:Lcom/shabakaty/downloader/hw2;

    .line 3
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    instance-of v0, p2, Lcom/shabakaty/downloader/xr0;

    if-eqz v0, :cond_6

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/zd2;->e:Lcom/shabakaty/downloader/hw2;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->h:Lcom/shabakaty/downloader/gi1;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/zd2;->c(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/gi1;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/shabakaty/downloader/zd2;->t(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/sf3;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 6
    check-cast p2, Lcom/shabakaty/downloader/xr0;

    .line 7
    iget-object v0, p2, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/ji3;->E:Ljava/util/List;

    const-string v3, "classDescriptor.classProto.functionList"

    .line 9
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi3;

    .line 12
    iget-object v4, p2, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 13
    iget-object v4, v4, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 14
    iget v3, v3, Lcom/shabakaty/downloader/qi3;->w:I

    .line 15
    invoke-static {v4, v3}, Lcom/shabakaty/downloader/rm3;->i(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/hw2;

    move-result-object v3

    sget-object v4, Lcom/shabakaty/downloader/z30;->e:Lcom/shabakaty/downloader/z30;

    .line 16
    sget-object v4, Lcom/shabakaty/downloader/z30;->f:Lcom/shabakaty/downloader/hw2;

    .line 17
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/ab2;->e:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->s()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/mz2;->u:Lcom/shabakaty/downloader/mz2;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/mr2;->d(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/ll2;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->p0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t64;

    .line 21
    invoke-interface {p1}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object p1

    .line 22
    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/xn1$a;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/xn1$a;

    .line 23
    sget-object v0, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/xn1$a;->e(Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/xn1$a;

    .line 24
    invoke-virtual {p2}, Lcom/shabakaty/downloader/p;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/xn1$a;->c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/xn1$a;

    .line 25
    invoke-virtual {p2}, Lcom/shabakaty/downloader/p;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/xn1$a;->g(Lcom/shabakaty/downloader/ao3;)Lcom/shabakaty/downloader/xn1$a;

    .line 26
    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast p1, Lcom/shabakaty/downloader/t64;

    .line 27
    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v0

    .line 29
    iget-boolean v0, v0, Lcom/shabakaty/downloader/xa2$b;->b:Z

    if-nez v0, :cond_7

    .line 30
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 31
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/ab2$c;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ab2$c;-><init>(Lcom/shabakaty/downloader/hw2;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/ab2;->f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;

    move-result-object p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_8

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto/16 :goto_b

    .line 33
    :cond_8
    iget-object v6, p0, Lcom/shabakaty/downloader/ab2;->b:Lcom/shabakaty/downloader/f82;

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v7

    sget-object v8, Lcom/shabakaty/downloader/v91;->f:Lcom/shabakaty/downloader/v91;

    .line 34
    sget-object v8, Lcom/shabakaty/downloader/v91;->g:Lcom/shabakaty/downloader/zd2;

    .line 35
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "builtIns"

    .line 36
    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    .line 37
    invoke-static {v6, v7, v8, v5, v9}, Lcom/shabakaty/downloader/f82;->d(Lcom/shabakaty/downloader/f82;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/zd2;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/q20;

    move-result-object v6

    if-nez v6, :cond_9

    sget-object v2, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_3

    .line 38
    :cond_9
    sget-object v7, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-static {v6}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v7

    .line 39
    sget-object v9, Lcom/shabakaty/downloader/e82;->l:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/fi1;

    if-nez v7, :cond_a

    .line 40
    invoke-static {v6}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    goto :goto_3

    :cond_a
    new-array v9, v4, [Lcom/shabakaty/downloader/q20;

    aput-object v6, v9, v1

    .line 41
    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object v6

    const-string v7, "builtIns.getBuiltInClass\u2026otlinMutableAnalogFqName)"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v9, v2

    invoke-static {v9}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 42
    :goto_3
    invoke-static {v2}, Lcom/shabakaty/downloader/m50;->j0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/q20;

    if-nez v6, :cond_b

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto/16 :goto_b

    .line 43
    :cond_b
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 45
    check-cast v8, Lcom/shabakaty/downloader/q20;

    .line 46
    invoke-static {v8}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 47
    :cond_c
    new-instance v2, Lcom/shabakaty/downloader/f94;

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/f94;-><init>(Lcom/shabakaty/downloader/nn0;)V

    invoke-virtual {v2, v7}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v7, p0, Lcom/shabakaty/downloader/ab2;->b:Lcom/shabakaty/downloader/f82;

    invoke-virtual {v7, p2}, Lcom/shabakaty/downloader/f82;->b(Lcom/shabakaty/downloader/q20;)Z

    move-result v7

    .line 49
    iget-object v8, p0, Lcom/shabakaty/downloader/ab2;->f:Lcom/shabakaty/downloader/gq;

    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v9

    new-instance v10, Lcom/shabakaty/downloader/db2;

    invoke-direct {v10, p1, v6}, Lcom/shabakaty/downloader/db2;-><init>(Lcom/shabakaty/downloader/uf2;Lcom/shabakaty/downloader/q20;)V

    check-cast v8, Lcom/shabakaty/downloader/yj2$d;

    invoke-virtual {v8, v9, v10}, Lcom/shabakaty/downloader/yj2$d;->c(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q20;

    .line 50
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    const-string v6, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {p1, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ab2$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/shabakaty/downloader/t64;

    .line 54
    invoke-interface {v8}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v9

    sget-object v10, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    if-eq v9, v10, :cond_e

    goto/16 :goto_9

    .line 55
    :cond_e
    invoke-interface {v8}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Lcom/shabakaty/downloader/mr0;->a()Lcom/shabakaty/downloader/y45;

    move-result-object v9

    .line 57
    iget-boolean v9, v9, Lcom/shabakaty/downloader/y45;->b:Z

    if-nez v9, :cond_f

    goto/16 :goto_9

    .line 58
    :cond_f
    invoke-static {v8}, Lcom/shabakaty/downloader/zd2;->E(Lcom/shabakaty/downloader/qm0;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto/16 :goto_9

    .line 59
    :cond_10
    invoke-interface {v8}, Lcom/shabakaty/downloader/xn1;->f()Ljava/util/Collection;

    move-result-object v9

    const-string v10, "analogueMember.overriddenDescriptors"

    invoke-static {v9, v10}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_6

    .line 61
    :cond_11
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/xn1;

    .line 62
    invoke-interface {v10}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v10

    const-string v11, "it.containingDeclaration"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/shabakaty/downloader/f94;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v9, 0x1

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_14

    goto :goto_9

    .line 63
    :cond_14
    invoke-interface {v8}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/q20;

    .line 64
    invoke-static {v8, v1, v1, v3}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v10

    .line 65
    sget-object v11, Lcom/shabakaty/downloader/jb2;->a:Lcom/shabakaty/downloader/jb2;

    .line 66
    sget-object v11, Lcom/shabakaty/downloader/jb2;->e:Ljava/util/Set;

    .line 67
    sget-object v12, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    invoke-static {v12, v9, v10}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_15

    const/4 v8, 0x1

    goto :goto_8

    .line 68
    :cond_15
    invoke-static {v8}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 69
    sget-object v9, Lcom/shabakaty/downloader/gb2;->a:Lcom/shabakaty/downloader/gb2;

    new-instance v10, Lcom/shabakaty/downloader/hb2;

    invoke-direct {v10, p0}, Lcom/shabakaty/downloader/hb2;-><init>(Lcom/shabakaty/downloader/ab2;)V

    invoke-static {v8, v9, v10}, Lcom/shabakaty/downloader/nh0;->d(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/tm1;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "private fun SimpleFuncti\u2026scriptor)\n        }\n    }"

    invoke-static {v8, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_8
    if-nez v8, :cond_16

    const/4 v8, 0x1

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_d

    .line 70
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_17
    move-object p1, v0

    .line 71
    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    check-cast v2, Lcom/shabakaty/downloader/t64;

    .line 74
    invoke-interface {v2}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/q20;

    .line 75
    invoke-static {v6, p2}, Lcom/shabakaty/downloader/bp;->j(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ws4;

    move-result-object v6

    .line 76
    new-instance v7, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v7, v6}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 77
    invoke-interface {v2, v7}, Lcom/shabakaty/downloader/xn1;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    .line 78
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/shabakaty/downloader/t64;

    .line 79
    invoke-interface {v6}, Lcom/shabakaty/downloader/t64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v6

    .line 80
    invoke-interface {v6, p2}, Lcom/shabakaty/downloader/xn1$a;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/xn1$a;

    .line 81
    move-object v7, p2

    check-cast v7, Lcom/shabakaty/downloader/p;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/p;->R0()Lcom/shabakaty/downloader/ao3;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/shabakaty/downloader/xn1$a;->g(Lcom/shabakaty/downloader/ao3;)Lcom/shabakaty/downloader/xn1$a;

    .line 82
    invoke-interface {v6}, Lcom/shabakaty/downloader/xn1$a;->d()Lcom/shabakaty/downloader/xn1$a;

    .line 83
    invoke-interface {v2}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/q20;

    .line 84
    invoke-static {v2, v1, v1, v3}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v8, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v8}, Lcom/shabakaty/downloader/lo3;-><init>()V

    .line 86
    invoke-static {v7}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 87
    new-instance v9, Lcom/shabakaty/downloader/eb2;

    invoke-direct {v9, p0}, Lcom/shabakaty/downloader/eb2;-><init>(Lcom/shabakaty/downloader/ab2;)V

    .line 88
    new-instance v10, Lcom/shabakaty/downloader/fb2;

    invoke-direct {v10, v2, v8}, Lcom/shabakaty/downloader/fb2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/lo3;)V

    .line 89
    invoke-static {v7, v9, v10}, Lcom/shabakaty/downloader/nh0;->b(Ljava/util/Collection;Lcom/shabakaty/downloader/nh0$c;Lcom/shabakaty/downloader/nh0$d;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "private fun FunctionDesc\u2026ERED\n            })\n    }"

    invoke-static {v2, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/shabakaty/downloader/ab2$a;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v4, :cond_18

    if-eq v2, v3, :cond_1a

    goto :goto_d

    .line 91
    :cond_18
    iget-object v2, p0, Lcom/shabakaty/downloader/ab2;->g:Lcom/shabakaty/downloader/d03;

    sget-object v7, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    aget-object v7, v7, v4

    invoke-static {v2, v7}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/d9;

    .line 92
    invoke-interface {v6, v2}, Lcom/shabakaty/downloader/xn1$a;->p(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xn1$a;

    goto :goto_d

    .line 93
    :cond_19
    invoke-static {p2}, Lcom/shabakaty/downloader/z02;->n(Lcom/shabakaty/downloader/q20;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    move-object v2, v5

    goto :goto_e

    .line 94
    :cond_1b
    invoke-interface {v6}, Lcom/shabakaty/downloader/xn1$a;->h()Lcom/shabakaty/downloader/xn1$a;

    .line 95
    :goto_d
    invoke-interface {v6}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    check-cast v2, Lcom/shabakaty/downloader/t64;

    :goto_e
    if-nez v2, :cond_1c

    goto/16 :goto_c

    .line 96
    :cond_1c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_1d
    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/shabakaty/downloader/xa2$b;->b:Z

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ab2;->f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uf2;->T0()Lcom/shabakaty/downloader/wf2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/cg2;->a()Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/q20;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q20;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l20;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/xr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xr0;->B:Lcom/shabakaty/downloader/w20;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/shabakaty/downloader/xa2$b;->b:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ab2;->f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ab2;->b:Lcom/shabakaty/downloader/f82;

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->g(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/v91;->f:Lcom/shabakaty/downloader/v91;

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/v91;->g:Lcom/shabakaty/downloader/zd2;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 8
    invoke-static {v1, v2, v3, v5, v4}, Lcom/shabakaty/downloader/f82;->d(Lcom/shabakaty/downloader/f82;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/zd2;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/q20;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1

    .line 9
    :cond_2
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/bp;->j(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/ws4;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/uf2;->I:Lcom/shabakaty/downloader/wf2;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/wf2;->q:Lcom/shabakaty/downloader/d03;

    .line 13
    invoke-interface {v2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/shabakaty/downloader/l20;

    .line 16
    invoke-interface {v9}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v10

    .line 17
    invoke-virtual {v10}, Lcom/shabakaty/downloader/mr0;->a()Lcom/shabakaty/downloader/y45;

    move-result-object v10

    .line 18
    iget-boolean v10, v10, Lcom/shabakaty/downloader/y45;->b:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_a

    .line 19
    invoke-interface {v1}, Lcom/shabakaty/downloader/q20;->o()Ljava/util/Collection;

    move-result-object v10

    const-string v12, "defaultKotlinVersion.constructors"

    invoke-static {v10, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/l20;

    const-string v13, "it"

    .line 22
    invoke-static {v12, v13}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v9, v3}, Lcom/shabakaty/downloader/vc0;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/vc0;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/a93;->j(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/rq;)Lcom/shabakaty/downloader/a93$c$a;

    move-result-object v12

    .line 24
    sget-object v13, Lcom/shabakaty/downloader/a93$c$a;->r:Lcom/shabakaty/downloader/a93$c$a;

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_5

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_a

    .line 25
    invoke-interface {v9}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v11, :cond_9

    .line 26
    invoke-interface {v9}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v10

    const-string v11, "valueParameters"

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/shabakaty/downloader/m50;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/sz4;

    invoke-interface {v10}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v10

    invoke-interface {v10}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v10

    if-nez v10, :cond_8

    move-object v10, v5

    goto :goto_4

    :cond_8
    invoke-static {v10}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v10

    :goto_4
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_a

    .line 27
    invoke-static {v9}, Lcom/shabakaty/downloader/zd2;->E(Lcom/shabakaty/downloader/qm0;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 28
    sget-object v10, Lcom/shabakaty/downloader/jb2;->a:Lcom/shabakaty/downloader/jb2;

    .line 29
    sget-object v10, Lcom/shabakaty/downloader/jb2;->f:Ljava/util/Set;

    .line 30
    sget-object v11, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    .line 31
    invoke-static {v9, v8, v8, v7}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-static {v11, v0, v7}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v8, 0x1

    :cond_a
    if-eqz v8, :cond_3

    .line 33
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 34
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 36
    check-cast v4, Lcom/shabakaty/downloader/l20;

    .line 37
    invoke-interface {v4}, Lcom/shabakaty/downloader/xn1;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v5

    .line 38
    invoke-interface {v5, p1}, Lcom/shabakaty/downloader/xn1$a;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/xn1$a;

    .line 39
    move-object v6, p1

    check-cast v6, Lcom/shabakaty/downloader/p;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/p;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/xn1$a;->c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/xn1$a;

    .line 40
    invoke-interface {v5}, Lcom/shabakaty/downloader/xn1$a;->d()Lcom/shabakaty/downloader/xn1$a;

    .line 41
    invoke-virtual {v3}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/xn1$a;->l(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/xn1$a;

    .line 42
    sget-object v6, Lcom/shabakaty/downloader/jb2;->a:Lcom/shabakaty/downloader/jb2;

    .line 43
    sget-object v6, Lcom/shabakaty/downloader/jb2;->g:Ljava/util/Set;

    .line 44
    sget-object v9, Lcom/shabakaty/downloader/c64;->a:Lcom/shabakaty/downloader/c64;

    .line 45
    invoke-static {v4, v8, v8, v7}, Lcom/shabakaty/downloader/vd5;->d(Lcom/shabakaty/downloader/xn1;ZZI)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v9, v0, v4}, Lcom/shabakaty/downloader/rm3;->s(Lcom/shabakaty/downloader/c64;Lcom/shabakaty/downloader/q20;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 47
    iget-object v4, p0, Lcom/shabakaty/downloader/ab2;->g:Lcom/shabakaty/downloader/d03;

    sget-object v6, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    const/4 v9, 0x2

    aget-object v6, v6, v9

    invoke-static {v4, v6}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/d9;

    .line 48
    invoke-interface {v5, v4}, Lcom/shabakaty/downloader/xn1$a;->p(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xn1$a;

    .line 49
    :cond_c
    invoke-interface {v5}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    .line 50
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/l20;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    return-object v1

    .line 51
    :cond_e
    :goto_7
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object p1
.end method

.method public final f(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/uf2;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd2;->e:Lcom/shabakaty/downloader/hw2;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->b:Lcom/shabakaty/downloader/gi1;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/zd2;->c(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/gi1;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->O(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->h(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/gi1;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gi1;->f()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 6
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/e82;->a:Lcom/shabakaty/downloader/e82;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/e82;->g(Lcom/shabakaty/downloader/gi1;)Lcom/shabakaty/downloader/v20;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    const-string v1, "JavaToKotlinClassMap.map\u2026leFqName() ?: return null"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/xa2$b;->a:Lcom/shabakaty/downloader/nu2;

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/mz2;->u:Lcom/shabakaty/downloader/mz2;

    invoke-static {v1, p1, v2}, Lcom/shabakaty/downloader/rm3;->r(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/ll2;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    instance-of v1, p1, Lcom/shabakaty/downloader/uf2;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/uf2;

    :cond_4
    return-object v0

    :cond_5
    const/16 p1, 0x6c

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->a(I)V

    throw v0
.end method

.method public final g()Lcom/shabakaty/downloader/xa2$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ab2;->c:Lcom/shabakaty/downloader/d03;

    sget-object v1, Lcom/shabakaty/downloader/ab2;->h:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xa2$b;

    return-object v0
.end method
