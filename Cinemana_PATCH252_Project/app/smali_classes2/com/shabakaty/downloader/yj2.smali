.class public Lcom/shabakaty/downloader/yj2;
.super Ljava/lang/Object;
.source "LockBasedStorageManager.java"

# interfaces
.implements Lcom/shabakaty/downloader/md4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yj2$g;,
        Lcom/shabakaty/downloader/yj2$d;,
        Lcom/shabakaty/downloader/yj2$e;,
        Lcom/shabakaty/downloader/yj2$m;,
        Lcom/shabakaty/downloader/yj2$l;,
        Lcom/shabakaty/downloader/yj2$j;,
        Lcom/shabakaty/downloader/yj2$k;,
        Lcom/shabakaty/downloader/yj2$i;,
        Lcom/shabakaty/downloader/yj2$h;,
        Lcom/shabakaty/downloader/yj2$n;,
        Lcom/shabakaty/downloader/yj2$o;,
        Lcom/shabakaty/downloader/yj2$f;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Lcom/shabakaty/downloader/md4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/v64;

.field public final b:Lcom/shabakaty/downloader/yj2$f;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/shabakaty/downloader/yj2;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    const-string v3, "<this>"

    .line 2
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "delimiter"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "missingDelimiterValue"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 3
    invoke-static {v0, v1, v3, v3, v4}, Lcom/shabakaty/downloader/re4;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    sput-object v2, Lcom/shabakaty/downloader/yj2;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/yj2$a;

    sget-object v1, Lcom/shabakaty/downloader/yj2$f;->a:Lcom/shabakaty/downloader/yj2$f;

    sget-object v2, Lcom/shabakaty/downloader/d31;->b:Lcom/shabakaty/downloader/d31;

    const-string v3, "NO_LOCKS"

    invoke-direct {v0, v3, v1, v2}, Lcom/shabakaty/downloader/yj2$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yj2$f;Lcom/shabakaty/downloader/v64;)V

    sput-object v0, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/yj2$f;->a:Lcom/shabakaty/downloader/yj2$f;

    sget v1, Lcom/shabakaty/downloader/v64;->a:I

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/xo0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/xo0;-><init>(Ljava/util/concurrent/locks/Lock;I)V

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/shabakaty/downloader/yj2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/yj2$f;Lcom/shabakaty/downloader/v64;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/yj2$f;Lcom/shabakaty/downloader/v64;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/yj2;->a:Lcom/shabakaty/downloader/v64;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yj2;->b:Lcom/shabakaty/downloader/yj2$f;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/yj2;->c:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/yj2;->i(I)V

    throw v0

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/shabakaty/downloader/yj2;->i(I)V

    throw v0

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Lcom/shabakaty/downloader/yj2;->i(I)V

    throw v0
.end method

.method public static synthetic i(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x14

    const/16 v2, 0xd

    const/16 v3, 0xa

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager"

    const-string v9, "compute"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq p0, v10, :cond_3

    if-eq p0, v5, :cond_3

    const/4 v5, 0x5

    if-eq p0, v5, :cond_3

    const/4 v5, 0x6

    if-eq p0, v5, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string v5, "debugText"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_0
    const-string v5, "throwable"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_1
    const-string v5, "source"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_2
    const-string v5, "postCompute"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_3
    const-string v5, "computable"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_4
    const-string v5, "map"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_5
    const-string v5, "onRecursiveCall"

    aput-object v5, v7, v11

    goto :goto_2

    :pswitch_6
    aput-object v8, v7, v11

    goto :goto_2

    :pswitch_7
    aput-object v9, v7, v11

    goto :goto_2

    :cond_2
    const-string v5, "lock"

    aput-object v5, v7, v11

    goto :goto_2

    :cond_3
    :pswitch_8
    const-string v5, "exceptionHandlingStrategy"

    aput-object v5, v7, v11

    :goto_2
    const-string v5, "sanitizeStackTrace"

    const-string v11, "createMemoizedFunctionWithNullableValues"

    const-string v12, "createMemoizedFunction"

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_4

    aput-object v8, v7, v10

    goto :goto_3

    :cond_4
    aput-object v5, v7, v10

    goto :goto_3

    :cond_5
    aput-object v11, v7, v10

    goto :goto_3

    :cond_6
    aput-object v12, v7, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "createWithExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_9
    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_a
    const-string v5, "recursionDetectedDefault"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_b
    aput-object v9, v7, v6

    goto :goto_4

    :pswitch_c
    const-string v5, "createNullableLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_d
    const-string v5, "createRecursionTolerantNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_e
    const-string v5, "createNullableLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_f
    const-string v5, "createLazyValueWithPostCompute"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_10
    const-string v5, "createRecursionTolerantLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_11
    const-string v5, "createLazyValue"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_12
    aput-object v11, v7, v6

    goto :goto_4

    :pswitch_13
    aput-object v12, v7, v6

    goto :goto_4

    :pswitch_14
    const-string v5, "replaceExceptionHandling"

    aput-object v5, v7, v6

    goto :goto_4

    :pswitch_15
    const-string v5, "<init>"

    aput-object v5, v7, v6

    :goto_4
    :pswitch_16
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_16
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_16
    .end packed-switch
.end method

.method public static j()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0
.end method

.method public static l(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/yj2;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0

    :cond_2
    const/16 p0, 0x24

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/yj2;->i(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/hq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/shabakaty/downloader/hq<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2$e;

    invoke-static {}, Lcom/shabakaty/downloader/yj2;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/shabakaty/downloader/yj2$e;-><init>(Lcom/shabakaty/downloader/yj2;Ljava/util/concurrent/ConcurrentMap;Lcom/shabakaty/downloader/yj2$a;)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/gq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/shabakaty/downloader/gq<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2$d;

    invoke-static {}, Lcom/shabakaty/downloader/yj2;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/shabakaty/downloader/yj2$d;-><init>(Lcom/shabakaty/downloader/yj2;Ljava/util/concurrent/ConcurrentMap;Lcom/shabakaty/downloader/yj2$a;)V

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/d03;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Lcom/shabakaty/downloader/d03<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/yj2$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/yj2$c;-><init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)V

    return-object v6
.end method

.method public d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/w13<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2$h;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/yj2$h;-><init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)Lcom/shabakaty/downloader/d03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;TT;)",
            "Lcom/shabakaty/downloader/d03<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2$b;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/shabakaty/downloader/yj2$b;-><init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/d03<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yj2$j;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/yj2$j;-><init>(Lcom/shabakaty/downloader/yj2;Lcom/shabakaty/downloader/rm1;)V

    return-object v0

    :cond_0
    const/16 p1, 0x17

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yj2;->i(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/rr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TK;+TV;>;)",
            "Lcom/shabakaty/downloader/rr2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/yj2;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yj2$l;

    invoke-direct {v1, p0, v0, p1}, Lcom/shabakaty/downloader/yj2$l;-><init>(Lcom/shabakaty/downloader/yj2;Ljava/util/concurrent/ConcurrentMap;Lcom/shabakaty/downloader/tm1;)V

    return-object v1
.end method

.method public h(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/qr2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/tm1<",
            "-TK;+TV;>;)",
            "Lcom/shabakaty/downloader/qr2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/yj2;->j()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yj2$m;

    invoke-direct {v1, p0, v0, p1}, Lcom/shabakaty/downloader/yj2$m;-><init>(Lcom/shabakaty/downloader/yj2;Ljava/util/concurrent/ConcurrentMap;Lcom/shabakaty/downloader/tm1;)V

    return-object v1
.end method

.method public k(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/yj2$o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lcom/shabakaty/downloader/yj2$o<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Recursion detected "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/vf3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string v1, "on input: "

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/c50;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " under "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/yj2;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/yj2;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
