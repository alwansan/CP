.class public Lcom/shabakaty/downloader/wg2;
.super Lcom/shabakaty/downloader/iu2;
.source "LazySubstitutingClassDescriptor.java"


# instance fields
.field public final r:Lcom/shabakaty/downloader/iu2;

.field public final s:Lcom/shabakaty/downloader/wt4;

.field public t:Lcom/shabakaty/downloader/wt4;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lcom/shabakaty/downloader/ts4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/iu2;Lcom/shabakaty/downloader/wt4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iu2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    return-void
.end method

.method public static synthetic w0(I)V
    .locals 15

    const/16 v0, 0x16

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "substitute"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "getMemberScope"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v11, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v13, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A0(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->i(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/ve2;

    sget-object v0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/wg2;->N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public C()Lcom/shabakaty/downloader/a12;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->C()Lcom/shabakaty/downloader/a12;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/a12;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/a12;->a:Lcom/shabakaty/downloader/hw2;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->C()Lcom/shabakaty/downloader/a12;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/a12;->b:Lcom/shabakaty/downloader/d74;

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/b74;

    if-eqz v2, :cond_2

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v3

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v3, v2, v4}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/shabakaty/downloader/b74;

    .line 11
    :cond_2
    :goto_0
    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/a12;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d74;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->F()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->J()Z

    move-result v0

    return v0
.end method

.method public J0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->J0()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-static {v0}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->i(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/ve2;

    sget-object v0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/wg2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/iu2;->N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v0

    .line 4
    :cond_1
    new-instance p2, Lcom/shabakaty/downloader/ag4;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/ag4;-><init>(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/wt4;)V

    return-object p2

    :cond_2
    const/4 p1, 0x6

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v0

    :cond_3
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v0
.end method

.method public N0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->N0()Z

    move-result v0

    return v0
.end method

.method public O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xe

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/ag4;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/ag4;-><init>(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/wt4;)V

    return-object v0

    :cond_2
    const/16 p1, 0xd

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v0
.end method

.method public Q()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->Q()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Q0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->Q0()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->R()Z

    move-result v0

    return v0
.end method

.method public R0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->S()Z

    move-result v0

    return v0
.end method

.method public final S0()Lcom/shabakaty/downloader/wt4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->t:Lcom/shabakaty/downloader/wt4;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    iput-object v0, p0, Lcom/shabakaty/downloader/wg2;->t:Lcom/shabakaty/downloader/wt4;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/wg2;->u:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/wg2;->u:Ljava/util/List;

    invoke-static {v0, v1, p0, v2}, Lcom/shabakaty/downloader/nh3;->J(Ljava/util/List;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Ljava/util/List;)Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wg2;->t:Lcom/shabakaty/downloader/wt4;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->u:Ljava/util/List;

    new-instance v1, Lcom/shabakaty/downloader/wg2$a;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/wg2$a;-><init>(Lcom/shabakaty/downloader/wg2;)V

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/m50;->X(Ljava/lang/Iterable;Lcom/shabakaty/downloader/tm1;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wg2;->v:Ljava/util/List;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->t:Lcom/shabakaty/downloader/wt4;

    return-object v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h30;->T()Z

    move-result v0

    return v0
.end method

.method public Y()Lcom/shabakaty/downloader/l20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->Y()Lcom/shabakaty/downloader/l20;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->Z()Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->a()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public b0()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->b0()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/wg2;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object p1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt4;->g()Lcom/shabakaty/downloader/tt4;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/wt4;->f(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wg2;-><init>(Lcom/shabakaty/downloader/iu2;Lcom/shabakaty/downloader/wt4;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p1, 0x16

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getName()Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j0(Lcom/shabakaty/downloader/um0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/um0<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/shabakaty/downloader/um0;->f(Lcom/shabakaty/downloader/q20;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/ir2;->l()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->s:Lcom/shabakaty/downloader/wt4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->w:Lcom/shabakaty/downloader/ts4;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->a()Ljava/util/Collection;

    move-result-object v0

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/qe2;

    .line 9
    sget-object v5, Lcom/shabakaty/downloader/xz4;->t:Lcom/shabakaty/downloader/xz4;

    invoke-virtual {v1, v4, v5}, Lcom/shabakaty/downloader/wt4;->k(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/xz4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/b30;

    iget-object v1, p0, Lcom/shabakaty/downloader/wg2;->u:Ljava/util/List;

    sget-object v4, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/shabakaty/downloader/b30;-><init>(Lcom/shabakaty/downloader/q20;Ljava/util/List;Ljava/util/Collection;Lcom/shabakaty/downloader/md4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wg2;->w:Lcom/shabakaty/downloader/ts4;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->w:Lcom/shabakaty/downloader/ts4;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    throw v2
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l20;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->o()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l20;

    .line 4
    invoke-interface {v2}, Lcom/shabakaty/downloader/xn1;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v3

    invoke-interface {v2}, Lcom/shabakaty/downloader/l20;->a()Lcom/shabakaty/downloader/l20;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/xn1$a;->q(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object v3

    invoke-interface {v2}, Lcom/shabakaty/downloader/ir2;->n()Lcom/shabakaty/downloader/eu2;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/xn1$a;->f(Lcom/shabakaty/downloader/eu2;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object v3

    invoke-interface {v2}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/shabakaty/downloader/xn1$a;->e(Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object v3

    invoke-interface {v2}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/xn1$a;->b(Lcom/shabakaty/downloader/tq$a;)Lcom/shabakaty/downloader/xn1$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/xn1$a;->i(Z)Lcom/shabakaty/downloader/xn1$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/l20;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->S0()Lcom/shabakaty/downloader/wt4;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/l20;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/l20;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public w()Lcom/shabakaty/downloader/w20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x()Lcom/shabakaty/downloader/b74;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/eu4;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/wg2;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/shabakaty/downloader/wg2;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg2;->r:Lcom/shabakaty/downloader/iu2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->z()Z

    move-result v0

    return v0
.end method
