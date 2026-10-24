.class public final Lcom/shabakaty/downloader/yp3;
.super Ljava/lang/Object;
.source "ReflectKotlinClass.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/be2;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/shabakaty/downloader/be2;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lcom/shabakaty/downloader/yp3;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/shabakaty/downloader/yp3;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/bn3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/bn3;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "klass.declaredAnnotations"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    const-string v6, "annotation"

    .line 4
    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v5}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v6

    .line 6
    invoke-static {v6}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v7

    new-instance v8, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v8, v5}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {v1, v7, v8}, Lcom/shabakaty/downloader/he2$c;->b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v7, v5, v6}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/yp3;

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->a:[I

    if-nez v2, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    new-instance v7, Lcom/shabakaty/downloader/ob2;

    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->a:[I

    iget v5, v1, Lcom/shabakaty/downloader/bn3;->c:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v7, v2, v5}, Lcom/shabakaty/downloader/ob2;-><init>([IZ)V

    .line 11
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ob2;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->e:[Ljava/lang/String;

    iput-object v2, v1, Lcom/shabakaty/downloader/bn3;->g:[Ljava/lang/String;

    .line 13
    iput-object v4, v1, Lcom/shabakaty/downloader/bn3;->e:[Ljava/lang/String;

    goto :goto_2

    .line 14
    :cond_4
    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    sget-object v5, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    if-eq v2, v5, :cond_5

    sget-object v5, Lcom/shabakaty/downloader/be2$a;->v:Lcom/shabakaty/downloader/be2$a;

    if-eq v2, v5, :cond_5

    sget-object v5, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    if-ne v2, v5, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-eqz v3, :cond_7

    .line 15
    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->e:[Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    :goto_2
    iget-object v2, v1, Lcom/shabakaty/downloader/bn3;->i:[Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 17
    invoke-static {v2}, Lcom/shabakaty/downloader/im;->b([Ljava/lang/String;)[B

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :cond_8
    move-object v14, v4

    .line 18
    :goto_3
    new-instance v2, Lcom/shabakaty/downloader/be2;

    iget-object v6, v1, Lcom/shabakaty/downloader/bn3;->h:Lcom/shabakaty/downloader/be2$a;

    iget-object v8, v1, Lcom/shabakaty/downloader/bn3;->e:[Ljava/lang/String;

    iget-object v9, v1, Lcom/shabakaty/downloader/bn3;->g:[Ljava/lang/String;

    iget-object v10, v1, Lcom/shabakaty/downloader/bn3;->f:[Ljava/lang/String;

    iget-object v11, v1, Lcom/shabakaty/downloader/bn3;->b:Ljava/lang/String;

    iget v12, v1, Lcom/shabakaty/downloader/bn3;->c:I

    iget-object v13, v1, Lcom/shabakaty/downloader/bn3;->d:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Lcom/shabakaty/downloader/be2;-><init>(Lcom/shabakaty/downloader/be2$a;Lcom/shabakaty/downloader/ob2;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V

    goto :goto_5

    :cond_9
    :goto_4
    move-object v2, v4

    :goto_5
    if-nez v2, :cond_a

    return-object v4

    .line 19
    :cond_a
    invoke-direct {v0, p0, v2, v4}, Lcom/shabakaty/downloader/yp3;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/be2;Lcom/shabakaty/downloader/nn0;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/yp3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    check-cast p1, Lcom/shabakaty/downloader/yp3;

    iget-object p1, p1, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Lcom/shabakaty/downloader/v20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/ne4;->G(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/shabakaty/downloader/be2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp3;->b:Lcom/shabakaty/downloader/be2;

    return-object v0
.end method

.method public j(Lcom/shabakaty/downloader/he2$c;[B)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    const-string v0, "klass"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    const-string v0, "klass.declaredAnnotations"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    const-string v3, "annotation"

    .line 4
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v4

    new-instance v5, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v5, v2}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {p1, v4, v5}, Lcom/shabakaty/downloader/he2$c;->b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v4, v2, v3}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2$c;->a()V

    return-void
.end method

.method public k(Lcom/shabakaty/downloader/he2$d;[B)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    const-string v2, "klass"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "klass.declaredMethods"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const-string v5, "annotations"

    const-string v6, "parameterType"

    const-string v7, "sb.toString()"

    const-string v8, "("

    const-string v9, "annotation"

    if-ge v4, v3, :cond_6

    aget-object v10, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v11

    .line 5
    invoke-static {v8}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 6
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const-string v13, "method.parameterTypes"

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_0

    aget-object v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    .line 7
    invoke-static {v15, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/shabakaty/downloader/qo3;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v6, ")"

    .line 8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-string v12, "method.returnType"

    invoke-static {v6, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/shabakaty/downloader/qo3;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object/from16 v7, p1

    check-cast v7, Lcom/shabakaty/downloader/l;

    invoke-virtual {v7, v11, v6}, Lcom/shabakaty/downloader/l;->b(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;)Lcom/shabakaty/downloader/he2$e;

    move-result-object v6

    .line 12
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    const-string v8, "method.declaredAnnotations"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_2

    aget-object v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    .line 13
    invoke-static {v12, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v12}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v13

    invoke-static {v13}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v13

    .line 15
    invoke-static {v13}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v14

    new-instance v15, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v15, v12}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object v0, v6

    check-cast v0, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v0, v14, v15}, Lcom/shabakaty/downloader/l$b;->b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 16
    :cond_1
    invoke-static {v0, v12, v13}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_3
    move-object/from16 v0, p0

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v7, "method.parameterAnnotations"

    invoke-static {v0, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_5

    aget-object v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    .line 18
    invoke-static {v9, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v9

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_4

    aget-object v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    .line 19
    invoke-static {v13}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v14

    invoke-static {v14}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v14

    .line 20
    invoke-static {v14}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v15

    move-object/from16 p2, v0

    new-instance v0, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v0, v13}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v16, v2

    move-object v2, v6

    check-cast v2, Lcom/shabakaty/downloader/l$a;

    invoke-virtual {v2, v8, v15, v0}, Lcom/shabakaty/downloader/l$a;->c(ILcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_6

    .line 21
    :cond_3
    invoke-static {v0, v13, v14}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v2, v16

    goto :goto_5

    :cond_4
    move v8, v10

    goto :goto_4

    :cond_5
    move-object/from16 v16, v2

    .line 22
    check-cast v6, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/l$b;->a()V

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "klass.declaredConstructors"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_e

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 24
    sget-object v10, Lcom/shabakaty/downloader/ca4;->f:Lcom/shabakaty/downloader/hw2;

    const-string v11, "constructor"

    invoke-static {v4, v11}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    const-string v13, "constructor.parameterTypes"

    invoke-static {v12, v13}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v12

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    .line 28
    invoke-static {v15, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/shabakaty/downloader/qo3;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_7
    const-string v12, ")V"

    .line 29
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object/from16 v12, p1

    check-cast v12, Lcom/shabakaty/downloader/l;

    invoke-virtual {v12, v10, v11}, Lcom/shabakaty/downloader/l;->b(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;)Lcom/shabakaty/downloader/he2$e;

    move-result-object v10

    .line 32
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    const-string v12, "constructor.declaredAnnotations"

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v11

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_9

    aget-object v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    .line 33
    invoke-static {v14, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v14}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v15

    invoke-static {v15}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v15

    move-object/from16 p2, v0

    .line 35
    invoke-static {v15}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    move/from16 v16, v2

    new-instance v2, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v2, v14}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    move/from16 v17, v3

    move-object v3, v10

    check-cast v3, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v3, v0, v2}, Lcom/shabakaty/downloader/l$b;->b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_a

    .line 36
    :cond_8
    invoke-static {v0, v14, v15}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_a
    move-object/from16 v0, p2

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_9

    :cond_9
    move-object/from16 p2, v0

    move/from16 v16, v2

    move/from16 v17, v3

    .line 37
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "parameterAnnotations"

    .line 38
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    .line 39
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    array-length v3, v0

    sub-int/2addr v2, v3

    .line 40
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_d

    aget-object v11, v0, v4

    add-int/lit8 v12, v4, 0x1

    .line 41
    invoke-static {v11, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_c

    aget-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    .line 42
    invoke-static {v15}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v18

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v0

    move/from16 v18, v3

    add-int v3, v4, v2

    move/from16 v20, v2

    .line 43
    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    move/from16 v21, v4

    new-instance v4, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v4, v15}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object/from16 v22, v5

    .line 44
    move-object v5, v10

    check-cast v5, Lcom/shabakaty/downloader/l$a;

    invoke-virtual {v5, v3, v2, v4}, Lcom/shabakaty/downloader/l$a;->c(ILcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_e

    .line 45
    :cond_b
    invoke-static {v2, v15, v0}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_e
    move/from16 v3, v18

    move-object/from16 v0, v19

    move/from16 v2, v20

    move/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_d

    :cond_c
    move v4, v12

    goto :goto_c

    :cond_d
    move-object/from16 v22, v5

    .line 46
    check-cast v10, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v10}, Lcom/shabakaty/downloader/l$b;->a()V

    move-object/from16 v0, p2

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v5, v22

    goto/16 :goto_7

    .line 47
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "klass.declaredFields"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 48
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    .line 49
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "field.type"

    invoke-static {v5, v6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/shabakaty/downloader/qo3;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 50
    move-object/from16 v7, p1

    check-cast v7, Lcom/shabakaty/downloader/l;

    invoke-virtual {v7, v4, v5, v6}, Lcom/shabakaty/downloader/l;->a(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/he2$c;

    move-result-object v4

    .line 51
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    const-string v5, "field.declaredAnnotations"

    invoke-static {v3, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v5, :cond_10

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 52
    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v7}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v8

    .line 54
    invoke-static {v8}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v10

    new-instance v11, Lcom/shabakaty/downloader/oo3;

    invoke-direct {v11, v7}, Lcom/shabakaty/downloader/oo3;-><init>(Ljava/lang/annotation/Annotation;)V

    move-object v12, v4

    check-cast v12, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v12, v10, v11}, Lcom/shabakaty/downloader/l$b;->b(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/he2$a;

    move-result-object v10

    if-nez v10, :cond_f

    goto :goto_10

    .line 55
    :cond_f
    invoke-static {v10, v7, v8}, Lcom/shabakaty/downloader/po3;->b(Lcom/shabakaty/downloader/he2$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_10

    .line 56
    :cond_10
    check-cast v4, Lcom/shabakaty/downloader/l$b;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/l$b;->a()V

    goto :goto_f

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/yp3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/yp3;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
