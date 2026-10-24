.class public Lcom/shabakaty/downloader/d51;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d51$f;,
        Lcom/shabakaty/downloader/d51$c;,
        Lcom/shabakaty/downloader/d51$e;,
        Lcom/shabakaty/downloader/d51$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/nu2;

.field public static final b:Lcom/shabakaty/downloader/d51$c;

.field public static final c:Lcom/shabakaty/downloader/b74;

.field public static final d:Lcom/shabakaty/downloader/qe2;

.field public static final e:Lcom/shabakaty/downloader/yh3;

.field public static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d51$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/d51$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/d51;->a:Lcom/shabakaty/downloader/nu2;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/d51$c;

    const-string v0, "<ERROR CLASS>"

    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/d51$c;-><init>(Lcom/shabakaty/downloader/hw2;)V

    sput-object v2, Lcom/shabakaty/downloader/d51;->b:Lcom/shabakaty/downloader/d51$c;

    const-string v0, "<LOOP IN SUPERTYPES>"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/d51;->c:Lcom/shabakaty/downloader/b74;

    const-string v0, "<ERROR PROPERTY TYPE>"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/d51;->d:Lcom/shabakaty/downloader/qe2;

    .line 5
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v4, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    sget-object v5, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    sget-object v6, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const-string v1, "<ERROR PROPERTY>"

    invoke-static {v1}, Lcom/shabakaty/downloader/hw2;->D(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v8

    sget-object v9, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    sget-object v10, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v15, 0x0

    if-eqz v6, :cond_0

    .line 6
    new-instance v14, Lcom/shabakaty/downloader/zh3;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v14

    move-object/from16 v19, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v1 .. v16}, Lcom/shabakaty/downloader/zh3;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;ZLcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;ZZZZZZ)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v19

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Lcom/shabakaty/downloader/zh3;->Y0(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/ao3;)V

    .line 8
    sput-object v2, Lcom/shabakaty/downloader/d51;->e:Lcom/shabakaty/downloader/yh3;

    .line 9
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/d51;->f:Ljava/util/Set;

    return-void

    :cond_0
    move-object v3, v15

    const/16 v0, 0xa

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/zh3;->N(I)V

    throw v3
.end method

.method public static synthetic a(I)V
    .locals 9

    const/16 v0, 0x13

    const/4 v1, 0x6

    const/4 v2, 0x4

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "function"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    const-string v8, "typeParameterDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "errorClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "presentableName"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "arguments"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "typeConstructor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "debugName"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "ownerScope"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "debugMessage"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createErrorFunction"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v8

    goto :goto_3

    :cond_2
    const-string v6, "getErrorModule"

    aput-object v6, v5, v8

    goto :goto_3

    :cond_3
    aput-object v7, v5, v8

    goto :goto_3

    :cond_4
    const-string v6, "createErrorProperty"

    aput-object v6, v5, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "containsErrorTypeInParameters"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_9
    const-string v6, "createUninferredParameterType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_a
    const-string v6, "createErrorTypeConstructorWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createErrorTypeConstructor"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "createUnresolvedType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "createErrorTypeWithArguments"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "createErrorTypeWithCustomConstructor"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "createErrorTypeWithCustomDebugName"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "createErrorType"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_11
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_12
    const-string v6, "createErrorScope"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_13
    const-string v6, "createErrorClass"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_14
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/d51;->c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ljava/lang/String;Z)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/d51$e;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/d51$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/d51$a;)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/d51$d;

    invoke-direct {p1, p0, v0}, Lcom/shabakaty/downloader/d51$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/d51$a;)V

    return-object p1

    :cond_1
    const/4 p0, 0x3

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/d51;->g(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/b74;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x7

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Ljava/lang/String;)Lcom/shabakaty/downloader/ts4;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "[ERROR : "

    const-string v1, "]"

    .line 1
    invoke-static {v0, p0, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/downloader/d51;->b:Lcom/shabakaty/downloader/d51$c;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/d51;->f(Ljava/lang/String;Lcom/shabakaty/downloader/d51$c;)Lcom/shabakaty/downloader/ts4;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Ljava/lang/String;Lcom/shabakaty/downloader/d51$c;)Lcom/shabakaty/downloader/ts4;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d51$b;

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/d51$b;-><init>(Lcom/shabakaty/downloader/d51$c;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 p0, 0x12

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x11

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    throw v0
.end method

.method public static g(Ljava/lang/String;Ljava/util/List;)Lcom/shabakaty/downloader/b74;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;)",
            "Lcom/shabakaty/downloader/b74;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c51;

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->e(Ljava/lang/String;)Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;

    move-result-object v3

    const/4 v5, 0x0

    const-string p0, "constructor"

    .line 2
    invoke-static {v2, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "memberScope"

    invoke-static {v3, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;Ljava/util/List;ZLjava/lang/String;I)V

    return-object v0

    :cond_0
    const/16 p0, 0xc

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xb

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    throw v0
.end method

.method public static h(Ljava/lang/String;Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/b74;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c51;

    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;)V

    return-object v0

    :cond_0
    const/16 p0, 0x9

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Lcom/shabakaty/downloader/qm0;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/shabakaty/downloader/d51$c;

    if-nez v1, :cond_1

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/qm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v1

    .line 3
    instance-of v1, v1, Lcom/shabakaty/downloader/d51$c;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/d51;->a:Lcom/shabakaty/downloader/nu2;

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
