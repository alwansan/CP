.class public Lcom/shabakaty/downloader/wt4;
.super Ljava/lang/Object;
.source "TypeSubstitutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wt4$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/wt4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/tt4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-static {v0}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/wt4;->b:Lcom/shabakaty/downloader/wt4;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tt4;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    return-void

    :cond_0
    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v6, 0x2

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "combine"

    const-string v9, "filterOutUnsafeVariance"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "unsafeSubstitute"

    const-string v12, "safeSubstitute"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v11, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v12, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v8, v6, v3

    goto :goto_3

    :cond_3
    aput-object v9, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/xz4;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x28

    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0x29

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/16 p0, 0x2a

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x27

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x26

    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0
.end method

.method public static c(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    sget-object v1, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    if-ne p0, v1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object p0

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ws4;->b:Lcom/shabakaty/downloader/ws4$a;

    invoke-virtual {v1, v0, p0}, Lcom/shabakaty/downloader/ws4$a;->b(Lcom/shabakaty/downloader/ts4;Ljava/util/List;)Lcom/shabakaty/downloader/tt4;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wt4;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    return-object v0
.end method

.method public static f(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "first"

    .line 1
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "second"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/tt4;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tt4;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/ut0;

    invoke-direct {v1, p0, p1, v0}, Lcom/shabakaty/downloader/ut0;-><init>(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/nn0;)V

    move-object p0, v1

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x4

    .line 6
    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/nh3;->v(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Exception while computing toString(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public g()Lcom/shabakaty/downloader/tt4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/shabakaty/downloader/wt4;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->e()Z

    move-result v0

    return v0
.end method

.method public i(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/st4;

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/wt4$a; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/16 p1, 0xc

    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x9

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0
.end method

.method public k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/st4;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/shabakaty/downloader/tt4;->f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/wt4;->l(Lcom/shabakaty/downloader/qt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/tt4;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/tt4;->b()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/tt4;->b()Z

    move-result p2

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    const-string v2, "typeProjection.type"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/aw;->r:Lcom/shabakaty/downloader/aw;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/eu4;->c(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/tm1;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v2

    const-string v3, "typeProjection.projectionKind"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    if-ne v2, v3, :cond_4

    .line 10
    invoke-static {v1}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/st4;

    .line 12
    iget-object p1, p1, Lcom/shabakaty/downloader/rc;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/qe2;

    invoke-direct {p2, v2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 14
    invoke-static {v1}, Lcom/shabakaty/downloader/cw;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/rc;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/rc;->a:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/shabakaty/downloader/qe2;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/st4;

    invoke-direct {p2, v2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    .line 18
    :cond_5
    new-instance p2, Lcom/shabakaty/downloader/bw;

    invoke-direct {p2}, Lcom/shabakaty/downloader/bw;-><init>()V

    invoke-static {p2}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p2

    .line 19
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/wt4;->l(Lcom/shabakaty/downloader/qt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_7
    const/16 p1, 0xf

    .line 21
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_8
    const/16 p1, 0xe

    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0
.end method

.method public l(Lcom/shabakaty/downloader/qt4;)Lcom/shabakaty/downloader/qt4;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object p1
    :try_end_0
    .catch Lcom/shabakaty/downloader/wt4$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_1
    const/16 p1, 0x11

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0
.end method

.method public final m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    const/16 v2, 0x64

    if-gt p3, v2, :cond_2b

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/shabakaty/downloader/ku4;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 5
    check-cast v1, Lcom/shabakaty/downloader/ku4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/ku4;->getOrigin()Lcom/shabakaty/downloader/qw4;

    move-result-object v0

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/ku4;->O()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/shabakaty/downloader/st4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    add-int/2addr p3, v3

    invoke-virtual {p0, v2, p2, p3}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p2

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    .line 10
    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p3

    instance-of v0, p1, Lcom/shabakaty/downloader/ku4;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/shabakaty/downloader/ku4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ku4;->O()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    :cond_2
    invoke-static {p3, p1}, Lcom/shabakaty/downloader/vd5;->E(Lcom/shabakaty/downloader/qw4;Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    .line 11
    new-instance p3, Lcom/shabakaty/downloader/st4;

    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object p3

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/shabakaty/downloader/bp;->o(Lcom/shabakaty/downloader/qe2;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v2

    instance-of v2, v2, Lcom/shabakaty/downloader/zm3;

    if-eqz v2, :cond_4

    goto/16 :goto_11

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/tt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 14
    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v4

    sget-object v5, Lcom/shabakaty/downloader/tb4$a;->y:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v4, v5}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v4

    .line 16
    instance-of v5, v4, Lcom/shabakaty/downloader/zy2;

    if-nez v5, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    check-cast v4, Lcom/shabakaty/downloader/zy2;

    .line 18
    iget-object v4, v4, Lcom/shabakaty/downloader/zy2;->a:Lcom/shabakaty/downloader/qt4;

    .line 19
    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v5

    .line 20
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/wt4;->c(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/st4;

    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    :cond_7
    if-nez p2, :cond_8

    goto :goto_0

    .line 22
    :cond_8
    invoke-interface {p2}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/shabakaty/downloader/wt4;->c(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/st4;

    invoke-interface {v4}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/qe2;)V

    goto :goto_0

    :cond_9
    move-object v2, v0

    .line 24
    :cond_a
    :goto_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_e

    .line 25
    invoke-static {v1}, Lcom/shabakaty/downloader/rm3;->k(Lcom/shabakaty/downloader/qe2;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 26
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object v6

    instance-of v7, v6, Lcom/shabakaty/downloader/gh0;

    if-eqz v7, :cond_b

    check-cast v6, Lcom/shabakaty/downloader/gh0;

    goto :goto_1

    :cond_b
    move-object v6, v0

    :goto_1
    if-nez v6, :cond_c

    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    invoke-interface {v6}, Lcom/shabakaty/downloader/gh0;->N()Z

    move-result v6

    :goto_2
    if-nez v6, :cond_e

    .line 27
    invoke-static {v1}, Lcom/shabakaty/downloader/rm3;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/fe1;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/shabakaty/downloader/st4;

    .line 29
    iget-object v2, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    .line 30
    invoke-direct {v1, v4, v2}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    add-int/2addr p3, v3

    invoke-virtual {p0, v1, p2, p3}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/shabakaty/downloader/st4;

    .line 32
    iget-object v3, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    .line 33
    invoke-direct {v2, v4, v3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object p2

    .line 34
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object p3

    .line 35
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    .line 36
    iget-object v3, v0, Lcom/shabakaty/downloader/fe1;->s:Lcom/shabakaty/downloader/b74;

    if-ne v2, v3, :cond_d

    .line 37
    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    .line 38
    iget-object v0, v0, Lcom/shabakaty/downloader/fe1;->t:Lcom/shabakaty/downloader/b74;

    if-ne v2, v0, :cond_d

    return-object p1

    .line 39
    :cond_d
    invoke-interface {v1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    invoke-interface {p2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/rm3;->b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/b74;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/se2;->c(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/shabakaty/downloader/st4;

    invoke-direct {p2, p3, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object p2

    .line 41
    :cond_e
    invoke-static {v1}, Lcom/shabakaty/downloader/zd2;->H(Lcom/shabakaty/downloader/qe2;)Z

    move-result p2

    if-nez p2, :cond_2a

    invoke-static {v1}, Lcom/shabakaty/downloader/vd5;->r(Lcom/shabakaty/downloader/qe2;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto/16 :goto_11

    :cond_f
    const/4 p2, 0x2

    if-eqz v2, :cond_1c

    .line 42
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/wt4;->c(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)I

    move-result p1

    .line 43
    invoke-static {v1}, Lcom/shabakaty/downloader/fw;->b(Lcom/shabakaty/downloader/qe2;)Z

    move-result p3

    if-nez p3, :cond_12

    .line 44
    invoke-static {p1}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result p3

    if-eq p3, v3, :cond_11

    if-eq p3, p2, :cond_10

    goto :goto_3

    .line 45
    :cond_10
    new-instance p1, Lcom/shabakaty/downloader/wt4$a;

    const-string p2, "Out-projection in in-position"

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/wt4$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_11
    new-instance p1, Lcom/shabakaty/downloader/st4;

    sget-object p2, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p3

    invoke-interface {p3}, Lcom/shabakaty/downloader/ts4;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shabakaty/downloader/zd2;->q()Lcom/shabakaty/downloader/b74;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object p1

    .line 47
    :cond_12
    :goto_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p3

    instance-of v6, p3, Lcom/shabakaty/downloader/gh0;

    if-eqz v6, :cond_13

    check-cast p3, Lcom/shabakaty/downloader/gh0;

    goto :goto_4

    :cond_13
    move-object p3, v0

    :goto_4
    if-nez p3, :cond_14

    goto :goto_5

    .line 48
    :cond_14
    invoke-interface {p3}, Lcom/shabakaty/downloader/gh0;->N()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_6

    :cond_15
    :goto_5
    move-object p3, v0

    .line 49
    :goto_6
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v6

    if-eqz v6, :cond_16

    return-object v2

    :cond_16
    if-eqz p3, :cond_17

    .line 50
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/shabakaty/downloader/gh0;->w0(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    goto :goto_7

    .line 51
    :cond_17
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->U0()Z

    move-result v6

    invoke-static {p3, v6}, Lcom/shabakaty/downloader/eu4;->l(Lcom/shabakaty/downloader/qe2;Z)Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    .line 52
    :goto_7
    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v6

    invoke-interface {v6}, Lcom/shabakaty/downloader/d9;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 53
    iget-object v6, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/shabakaty/downloader/tt4;->c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 54
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->y:Lcom/shabakaty/downloader/fi1;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/d9;->m1(Lcom/shabakaty/downloader/fi1;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_8

    .line 55
    :cond_18
    new-instance v0, Lcom/shabakaty/downloader/mb1;

    new-instance v6, Lcom/shabakaty/downloader/vt4;

    invoke-direct {v6}, Lcom/shabakaty/downloader/vt4;-><init>()V

    invoke-direct {v0, v1, v6}, Lcom/shabakaty/downloader/mb1;-><init>(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tm1;)V

    move-object v1, v0

    .line 56
    :goto_8
    new-instance v0, Lcom/shabakaty/downloader/b90;

    new-array p2, p2, [Lcom/shabakaty/downloader/d9;

    invoke-interface {p3}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v6

    aput-object v6, p2, v5

    aput-object v1, p2, v3

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/b90;-><init>([Lcom/shabakaty/downloader/d9;)V

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/hu4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qe2;

    move-result-object p3

    goto :goto_9

    :cond_19
    const/16 p1, 0x21

    .line 57
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    throw v0

    :cond_1a
    :goto_9
    if-ne p1, v3, :cond_1b

    .line 58
    invoke-interface {v2}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/shabakaty/downloader/wt4;->b(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/xz4;

    move-result-object v4

    .line 59
    :cond_1b
    new-instance p1, Lcom/shabakaty/downloader/st4;

    invoke-direct {p1, v4, p3}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    return-object p1

    .line 60
    :cond_1c
    sget-object p2, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v1

    .line 61
    invoke-interface {p1}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v2

    .line 62
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v3

    instance-of v3, v3, Lcom/shabakaty/downloader/kt4;

    if-eqz v3, :cond_1d

    goto/16 :goto_11

    .line 63
    :cond_1d
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    instance-of v3, p1, Lcom/shabakaty/downloader/d;

    if-eqz v3, :cond_1e

    check-cast p1, Lcom/shabakaty/downloader/d;

    goto :goto_a

    :cond_1e
    move-object p1, v0

    :goto_a
    if-nez p1, :cond_1f

    move-object p1, v0

    goto :goto_b

    .line 64
    :cond_1f
    iget-object p1, p1, Lcom/shabakaty/downloader/d;->t:Lcom/shabakaty/downloader/b74;

    :goto_b
    if-eqz p1, :cond_22

    .line 65
    iget-object v0, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    instance-of v3, v0, Lcom/shabakaty/downloader/n02;

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tt4;->b()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_c

    .line 66
    :cond_20
    new-instance v0, Lcom/shabakaty/downloader/wt4;

    new-instance v3, Lcom/shabakaty/downloader/n02;

    iget-object v4, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    check-cast v4, Lcom/shabakaty/downloader/n02;

    .line 67
    iget-object v6, v4, Lcom/shabakaty/downloader/n02;->b:[Lcom/shabakaty/downloader/kt4;

    .line 68
    iget-object v4, v4, Lcom/shabakaty/downloader/n02;->c:[Lcom/shabakaty/downloader/qt4;

    .line 69
    invoke-direct {v3, v6, v4, v5}, Lcom/shabakaty/downloader/n02;-><init>([Lcom/shabakaty/downloader/kt4;[Lcom/shabakaty/downloader/qt4;Z)V

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/wt4;-><init>(Lcom/shabakaty/downloader/tt4;)V

    goto :goto_d

    :cond_21
    :goto_c
    move-object v0, p0

    .line 70
    :goto_d
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    .line 71
    :cond_22
    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/qe2;->S0()Ljava/util/List;

    move-result-object v3

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 73
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_27

    .line 74
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/kt4;

    .line 75
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shabakaty/downloader/qt4;

    add-int/lit8 v9, p3, 0x1

    .line 76
    invoke-virtual {p0, v8, v7, v9}, Lcom/shabakaty/downloader/wt4;->m(Lcom/shabakaty/downloader/qt4;Lcom/shabakaty/downloader/kt4;I)Lcom/shabakaty/downloader/qt4;

    move-result-object v9

    .line 77
    invoke-interface {v7}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v10

    invoke-interface {v9}, Lcom/shabakaty/downloader/qt4;->a()Lcom/shabakaty/downloader/xz4;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shabakaty/downloader/wt4;->c(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/xz4;)I

    move-result v10

    invoke-static {v10}, Lcom/shabakaty/downloader/su;->k(I)I

    move-result v10

    if-eqz v10, :cond_24

    const/4 v11, 0x1

    if-eq v10, v11, :cond_23

    const/4 v11, 0x2

    if-eq v10, v11, :cond_23

    goto :goto_f

    .line 78
    :cond_23
    invoke-static {v7}, Lcom/shabakaty/downloader/eu4;->n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object v9

    goto :goto_f

    .line 79
    :cond_24
    invoke-interface {v7}, Lcom/shabakaty/downloader/kt4;->q()Lcom/shabakaty/downloader/xz4;

    move-result-object v7

    if-eq v7, p2, :cond_25

    invoke-interface {v9}, Lcom/shabakaty/downloader/qt4;->d()Z

    move-result v7

    if-nez v7, :cond_25

    .line 80
    new-instance v7, Lcom/shabakaty/downloader/st4;

    invoke-interface {v9}, Lcom/shabakaty/downloader/qt4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v9

    invoke-direct {v7, p2, v9}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object v9, v7

    :cond_25
    :goto_f
    if-eq v9, v8, :cond_26

    const/4 v6, 0x1

    .line 81
    :cond_26
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_27
    if-nez v6, :cond_28

    goto :goto_10

    :cond_28
    move-object v3, v4

    .line 82
    :goto_10
    iget-object p1, p0, Lcom/shabakaty/downloader/wt4;->a:Lcom/shabakaty/downloader/tt4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/tt4;->c(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/d9;

    move-result-object p1

    const-string p2, "newArguments"

    .line 83
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "newAnnotations"

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-static {v1, v3, p1, p3, p2}, Lcom/shabakaty/downloader/rm3;->p(Lcom/shabakaty/downloader/qe2;Ljava/util/List;Lcom/shabakaty/downloader/d9;Ljava/util/List;I)Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    .line 84
    instance-of p2, p1, Lcom/shabakaty/downloader/b74;

    if-eqz p2, :cond_29

    instance-of p2, v0, Lcom/shabakaty/downloader/b74;

    if-eqz p2, :cond_29

    .line 85
    check-cast p1, Lcom/shabakaty/downloader/b74;

    check-cast v0, Lcom/shabakaty/downloader/b74;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nh3;->L(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    .line 86
    :cond_29
    new-instance p2, Lcom/shabakaty/downloader/st4;

    invoke-direct {p2, v2, p1}, Lcom/shabakaty/downloader/st4;-><init>(Lcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/qe2;)V

    move-object p1, p2

    :cond_2a
    :goto_11
    return-object p1

    .line 87
    :cond_2b
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-static {p3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; substitution: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/shabakaty/downloader/wt4;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2c
    const/16 p1, 0x12

    .line 88
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
