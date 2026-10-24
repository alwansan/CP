.class public abstract Lcom/shabakaty/downloader/p;
.super Lcom/shabakaty/downloader/iu2;
.source "AbstractClassDescriptor.java"


# instance fields
.field public final r:Lcom/shabakaty/downloader/hw2;

.field public final s:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/mr2;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Lcom/shabakaty/downloader/ao3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hw2;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iu2;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/p;->r:Lcom/shabakaty/downloader/hw2;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/p$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/p$a;-><init>(Lcom/shabakaty/downloader/p;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/p;->s:Lcom/shabakaty/downloader/d03;

    .line 4
    new-instance p2, Lcom/shabakaty/downloader/p$b;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/p$b;-><init>(Lcom/shabakaty/downloader/p;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/p;->t:Lcom/shabakaty/downloader/d03;

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/p$c;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/p$c;-><init>(Lcom/shabakaty/downloader/p;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/p;->u:Lcom/shabakaty/downloader/d03;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    throw v0
.end method

.method public static synthetic w0(I)V
    .locals 18

    move/from16 v0, p0

    const/16 v1, 0x13

    const/16 v2, 0x12

    const/16 v3, 0x10

    const/16 v4, 0xf

    const/16 v5, 0xd

    const/16 v6, 0xb

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v12, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v12, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v13, 0x3

    goto :goto_1

    :cond_1
    const/4 v13, 0x2

    :goto_1
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor"

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v16, "storageManager"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_0
    const-string v16, "substitutor"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_1
    const-string v16, "typeSubstitution"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_2
    const-string v16, "kotlinTypeRefiner"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_3
    const-string v16, "typeArguments"

    aput-object v16, v13, v15

    goto :goto_2

    :pswitch_4
    aput-object v14, v13, v15

    goto :goto_2

    :pswitch_5
    const-string v16, "name"

    aput-object v16, v13, v15

    :goto_2
    const-string v15, "substitute"

    const-string v16, "getMemberScope"

    const/16 v17, 0x1

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v14, v13, v17

    goto :goto_3

    :cond_2
    const-string v14, "getDefaultType"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_3
    aput-object v15, v13, v17

    goto :goto_3

    :cond_4
    const-string v14, "getUnsubstitutedMemberScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_5
    aput-object v16, v13, v17

    goto :goto_3

    :cond_6
    const-string v14, "getThisAsReceiverParameter"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_7
    const-string v14, "getUnsubstitutedInnerClassesScope"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_8
    const-string v14, "getOriginal"

    aput-object v14, v13, v17

    goto :goto_3

    :cond_9
    const-string v14, "getName"

    aput-object v14, v13, v17

    :goto_3
    packed-switch v0, :pswitch_data_1

    const-string v14, "<init>"

    aput-object v14, v13, v11

    goto :goto_4

    :pswitch_6
    aput-object v15, v13, v11

    goto :goto_4

    :pswitch_7
    aput-object v16, v13, v11

    :goto_4
    :pswitch_8
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eq v0, v11, :cond_a

    if-eq v0, v10, :cond_a

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_a

    if-eq v0, v7, :cond_a

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_8
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

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/p;->N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xf

    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public J0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p;->t:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M0()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/gr0;->d(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->i(Lcom/shabakaty/downloader/nu2;)Lcom/shabakaty/downloader/ve2;

    sget-object v0, Lcom/shabakaty/downloader/ve2$a;->a:Lcom/shabakaty/downloader/ve2$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tt4;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    throw v0

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/wt4;->e(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/wt4;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ag4;

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/iu2;->O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/shabakaty/downloader/ag4;-><init>(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/wt4;)V

    return-object v0

    :cond_2
    const/16 p1, 0xa

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    throw v0

    :cond_3
    const/16 p1, 0x9

    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    throw v0
.end method

.method public R0()Lcom/shabakaty/downloader/ao3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p;->u:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ao3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public S0(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/q20;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wt4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/wg2;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/wg2;-><init>(Lcom/shabakaty/downloader/iu2;Lcom/shabakaty/downloader/wt4;)V

    return-object v0

    :cond_1
    const/16 p1, 0x11

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a()Lcom/shabakaty/downloader/g30;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/q20;
    .locals 0

    return-object p0
.end method

.method public a()Lcom/shabakaty/downloader/qm0;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/p;->S0(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    return-object p1
.end method

.method public getName()Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p;->r:Lcom/shabakaty/downloader/hw2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shabakaty/downloader/p;->w0(I)V

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

.method public x()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p;->s:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b74;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/shabakaty/downloader/p;->w0(I)V

    const/4 v0, 0x0

    throw v0
.end method
