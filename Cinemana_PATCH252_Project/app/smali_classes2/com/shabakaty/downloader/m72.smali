.class public Lcom/shabakaty/downloader/m72;
.super Lcom/shabakaty/downloader/u64;
.source "JavaMethodDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/p62;


# static fields
.field public static final W:Lcom/shabakaty/downloader/rq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rq$a<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Lcom/shabakaty/downloader/rq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rq$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public U:I

.field public final V:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m72$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m72$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/m72;->W:Lcom/shabakaty/downloader/rq$a;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/m72$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m72$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/m72;->X:Lcom/shabakaty/downloader/rq$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/shabakaty/downloader/u64;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/m72;->U:I

    .line 3
    iput-boolean p7, p0, Lcom/shabakaty/downloader/m72;->V:Z

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v1

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v1

    :cond_2
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v1

    :cond_3
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v1

    :cond_4
    invoke-static {v0}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v1
.end method

.method public static synthetic N(I)V
    .locals 11

    const/16 v0, 0x14

    const/16 v1, 0x11

    const/16 v2, 0xc

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "enhancedValueParametersData"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "enhance"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v7, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v9, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_d
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_e
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_10
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public static h1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/s94;Z)Lcom/shabakaty/downloader/m72;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m72;

    const/4 v3, 0x0

    sget-object v6, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/m72;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;Z)V

    return-object v0

    :cond_0
    const/16 p0, 0x8

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0
.end method


# virtual methods
.method public B0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/x93;)Lcom/shabakaty/downloader/p62;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lcom/shabakaty/downloader/md0;->k(Ljava/util/Collection;Ljava/util/Collection;Lcom/shabakaty/downloader/rq;)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {p0, p1, v1}, Lcom/shabakaty/downloader/tq0;->f(Lcom/shabakaty/downloader/rq;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/ao3;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/u64;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yn1$c;

    .line 4
    iput-object p2, v1, Lcom/shabakaty/downloader/yn1$c;->g:Ljava/util/List;

    .line 5
    invoke-virtual {v1, p3}, Lcom/shabakaty/downloader/yn1$c;->c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/xn1$a;

    .line 6
    iput-object p1, v1, Lcom/shabakaty/downloader/yn1$c;->h:Lcom/shabakaty/downloader/ao3;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v1, Lcom/shabakaty/downloader/yn1$c;->o:Z

    .line 8
    iput-boolean p1, v1, Lcom/shabakaty/downloader/yn1$c;->n:Z

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1$c;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/m72;

    if-eqz p4, :cond_1

    .line 10
    iget-object p2, p4, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 11
    check-cast p2, Lcom/shabakaty/downloader/rq$a;

    .line 12
    iget-object p3, p4, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/shabakaty/downloader/yn1;->Y0(Lcom/shabakaty/downloader/rq$a;Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/16 p1, 0x14

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_3
    const/16 p1, 0x13

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/m72;->U:I

    invoke-static {v0}, Lcom/shabakaty/downloader/su;->w(I)Z

    move-result v0

    return v0
.end method

.method public T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m72;

    move-object v3, p2

    check-cast v3, Lcom/shabakaty/downloader/t64;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p4

    :goto_0
    move-object v5, p4

    iget-boolean v8, p0, Lcom/shabakaty/downloader/m72;->V:Z

    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/m72;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/t64;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;Z)V

    .line 2
    iget p1, p0, Lcom/shabakaty/downloader/m72;->U:I

    invoke-static {p1}, Lcom/shabakaty/downloader/su;->v(I)Z

    move-result p2

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/su;->w(I)Z

    move-result p1

    .line 4
    invoke-virtual {v0, p2, p1}, Lcom/shabakaty/downloader/m72;->i1(ZZ)V

    return-object v0

    :cond_1
    const/16 p1, 0xf

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_2
    const/16 p1, 0xe

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_3
    const/16 p1, 0xd

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0
.end method

.method public g1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Ljava/util/Map;)Lcom/shabakaty/downloader/u64;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ao3;",
            "Lcom/shabakaty/downloader/ao3;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/eu2;",
            "Lcom/shabakaty/downloader/mr0;",
            "Ljava/util/Map<",
            "+",
            "Lcom/shabakaty/downloader/rq$a<",
            "*>;*>;)",
            "Lcom/shabakaty/downloader/u64;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    if-eqz p4, :cond_9

    if-eqz p7, :cond_8

    .line 1
    invoke-super/range {p0 .. p8}, Lcom/shabakaty/downloader/u64;->g1(Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Ljava/util/Map;)Lcom/shabakaty/downloader/u64;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/a83;->a:Lcom/shabakaty/downloader/a83;

    const-string p2, "functionDescriptor"

    .line 3
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/a83;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/mz;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p4, p3, Lcom/shabakaty/downloader/mz;->a:Lcom/shabakaty/downloader/hw2;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p4

    iget-object p6, p3, Lcom/shabakaty/downloader/mz;->a:Lcom/shabakaty/downloader/hw2;

    invoke-static {p4, p6}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object p4, p3, Lcom/shabakaty/downloader/mz;->b:Lcom/shabakaty/downloader/mq3;

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p4

    invoke-virtual {p4}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p4

    const-string p6, "functionDescriptor.name.asString()"

    invoke-static {p4, p6}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p6, p3, Lcom/shabakaty/downloader/mz;->b:Lcom/shabakaty/downloader/mq3;

    invoke-virtual {p6, p4}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p4, p3, Lcom/shabakaty/downloader/mz;->c:Ljava/util/Collection;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object p6

    invoke-interface {p4, p6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    :goto_1
    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    const/4 p4, 0x1

    :goto_2
    if-nez p4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p0, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p3, Lcom/shabakaty/downloader/mz;->e:[Lcom/shabakaty/downloader/jz;

    array-length p2, p1

    :cond_4
    if-ge p5, p2, :cond_5

    aget-object p4, p1, p5

    add-int/lit8 p5, p5, 0x1

    .line 12
    invoke-interface {p4, p0}, Lcom/shabakaty/downloader/jz;->c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/kz$b;

    invoke-direct {p1, p4}, Lcom/shabakaty/downloader/kz$b;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_5
    iget-object p1, p3, Lcom/shabakaty/downloader/mz;->d:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/kz$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/kz$b;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_3

    .line 16
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/kz$c;->b:Lcom/shabakaty/downloader/kz$c;

    goto :goto_3

    .line 17
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/kz$a;->b:Lcom/shabakaty/downloader/kz$a;

    .line 18
    :goto_3
    iget-boolean p1, p1, Lcom/shabakaty/downloader/kz;->a:Z

    .line 19
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn1;->C:Z

    return-object p0

    :cond_8
    const/16 p1, 0xb

    .line 20
    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_9
    const/16 p1, 0xa

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0

    :cond_a
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/shabakaty/downloader/m72;->N(I)V

    throw v0
.end method

.method public i1(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1
    :goto_0
    iput p1, p0, Lcom/shabakaty/downloader/m72;->U:I

    return-void
.end method
