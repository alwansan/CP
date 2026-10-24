.class public final Lcom/shabakaty/downloader/y02;
.super Ljava/lang/Object;
.source "InlineClassAwareCaller.kt"

# interfaces
.implements Lcom/shabakaty/downloader/er;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/y02$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/er<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/er<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Lcom/shabakaty/downloader/y02$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tq;Lcom/shabakaty/downloader/er;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tq;",
            "Lcom/shabakaty/downloader/er<",
            "+TM;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/y02;->a:Lcom/shabakaty/downloader/er;

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/y02;->b:Z

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/z02;->C(Lcom/shabakaty/downloader/qe2;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v4, "box-impl"

    new-array v2, v2, [Ljava/lang/Class;

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/z02;->h(Ljava/lang/Class;Lcom/shabakaty/downloader/tq;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "{\n        getDeclaredMet\u2026riptor).returnType)\n    }"

    .line 6
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/b12;->a(Lcom/shabakaty/downloader/rq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/y02$a;

    sget-object p2, Lcom/shabakaty/downloader/n22;->u:Lcom/shabakaty/downloader/n22;

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/n22;->v:Lcom/shabakaty/downloader/n22;

    new-array p3, v3, [Ljava/lang/reflect/Method;

    .line 10
    invoke-direct {p1, p2, p3, v2}, Lcom/shabakaty/downloader/y02$a;-><init>(Lcom/shabakaty/downloader/n22;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto/16 :goto_c

    .line 11
    :cond_1
    instance-of v0, p2, Lcom/shabakaty/downloader/fr$g$c;

    const-string v4, "descriptor.containingDeclaration"

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    instance-of v0, p1, Lcom/shabakaty/downloader/vc0;

    if-eqz v0, :cond_3

    .line 13
    instance-of p2, p2, Lcom/shabakaty/downloader/tn;

    if-eqz p2, :cond_5

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of p2, p2, Lcom/shabakaty/downloader/tn;

    if-nez p2, :cond_5

    .line 15
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz p3, :cond_6

    const/4 p2, 0x2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 16
    :goto_3
    instance-of p3, p1, Lcom/shabakaty/downloader/xn1;

    if-eqz p3, :cond_7

    move-object p3, p1

    check-cast p3, Lcom/shabakaty/downloader/xn1;

    invoke-interface {p3}, Lcom/shabakaty/downloader/xn1;->H0()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :goto_4
    add-int/2addr p2, p3

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v1

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 20
    :cond_9
    instance-of v0, p1, Lcom/shabakaty/downloader/vc0;

    if-eqz v0, :cond_a

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/vc0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vc0;->I()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const-string v4, "descriptor.constructedClass"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v0}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 23
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 24
    :cond_a
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v4, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v4, :cond_b

    invoke-static {v0}, Lcom/shabakaty/downloader/b12;->b(Lcom/shabakaty/downloader/qm0;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 26
    check-cast v0, Lcom/shabakaty/downloader/q20;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_b
    :goto_6
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object v0

    const-string v4, "descriptor.valueParameters"

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 29
    check-cast v4, Lcom/shabakaty/downloader/sz4;

    .line 30
    invoke-interface {v4}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 31
    :cond_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, p2

    .line 32
    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->i(Lcom/shabakaty/downloader/er;)I

    move-result p2

    if-ne p2, v0, :cond_11

    .line 33
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {p2, v3}, Lcom/shabakaty/downloader/rm3;->z(II)Lcom/shabakaty/downloader/n22;

    move-result-object p2

    .line 34
    new-array v3, v0, [Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v0, :cond_10

    .line 35
    iget v6, p2, Lcom/shabakaty/downloader/l22;->r:I

    .line 36
    iget v7, p2, Lcom/shabakaty/downloader/l22;->s:I

    if-gt v4, v7, :cond_d

    if-gt v6, v4, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_f

    sub-int v6, v4, v5

    .line 37
    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/qe2;

    invoke-static {v6}, Lcom/shabakaty/downloader/z02;->C(Lcom/shabakaty/downloader/qe2;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v6, p1}, Lcom/shabakaty/downloader/z02;->h(Ljava/lang/Class;Lcom/shabakaty/downloader/tq;)Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_b

    :cond_f
    :goto_a
    move-object v6, v1

    .line 38
    :goto_b
    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 39
    :cond_10
    new-instance p1, Lcom/shabakaty/downloader/y02$a;

    invoke-direct {p1, p2, v3, v2}, Lcom/shabakaty/downloader/y02$a;-><init>(Lcom/shabakaty/downloader/n22;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 40
    :goto_c
    iput-object p1, p0, Lcom/shabakaty/downloader/y02;->c:Lcom/shabakaty/downloader/y02$a;

    return-void

    .line 41
    :cond_11
    new-instance p2, Lcom/shabakaty/downloader/me2;

    const-string p3, "Inconsistent number of parameters in the descriptor and Java reflection object: "

    .line 42
    invoke-static {p3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p0}, Lcom/shabakaty/downloader/vd5;->i(Lcom/shabakaty/downloader/er;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCalling: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nParameter types: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y02;->b()Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")\nDefault: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-boolean p1, p0, Lcom/shabakaty/downloader/y02;->b:Z

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :catch_0
    new-instance p2, Lcom/shabakaty/downloader/me2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No box method found in inline class: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (calling "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "args"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y02;->c:Lcom/shabakaty/downloader/y02$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/y02$a;->a:Lcom/shabakaty/downloader/n22;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/y02$a;->b:[Ljava/lang/reflect/Method;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/y02$a;->c:Ljava/lang/reflect/Method;

    .line 5
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "copyOf(this, size)"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v4, v1, Lcom/shabakaty/downloader/l22;->r:I

    .line 7
    iget v1, v1, Lcom/shabakaty/downloader/l22;->s:I

    const/4 v5, 0x0

    if-gt v4, v1, :cond_3

    :goto_0
    add-int/lit8 v6, v4, 0x1

    .line 8
    aget-object v7, v2, v4

    .line 9
    aget-object v8, p1, v4

    if-eqz v7, :cond_1

    if-eqz v8, :cond_0

    new-array v9, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "method.returnType"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/shabakaty/downloader/ty4;->c(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    :cond_1
    :goto_1
    aput-object v8, v3, v4

    if-ne v4, v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_0

    .line 13
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/downloader/y02;->a:Lcom/shabakaty/downloader/er;

    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/er;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y02;->a:Lcom/shabakaty/downloader/er;

    invoke-interface {v0}, Lcom/shabakaty/downloader/er;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y02;->a:Lcom/shabakaty/downloader/er;

    invoke-interface {v0}, Lcom/shabakaty/downloader/er;->c()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y02;->a:Lcom/shabakaty/downloader/er;

    invoke-interface {v0}, Lcom/shabakaty/downloader/er;->h()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
