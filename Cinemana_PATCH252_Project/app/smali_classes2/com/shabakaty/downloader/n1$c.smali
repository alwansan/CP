.class public Lcom/shabakaty/downloader/n1$c;
.super Lcom/shabakaty/downloader/k1;
.source "AbstractTypeParameterDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/shabakaty/downloader/ph4;

.field public final synthetic d:Lcom/shabakaty/downloader/n1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ph4;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    .line 2
    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/k1;-><init>(Lcom/shabakaty/downloader/md4;)V

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/n1$c;->c:Lcom/shabakaty/downloader/ph4;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic q(I)V
    .locals 11

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

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

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v10, "storageManager"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_0
    const-string v10, "classifier"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_1
    const-string v10, "supertypes"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_2
    const-string v10, "type"

    aput-object v10, v7, v9

    goto :goto_2

    :pswitch_3
    aput-object v8, v7, v9

    :goto_2
    const-string v9, "processSupertypesWithoutCycles"

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v8, v7, v5

    goto :goto_3

    :cond_2
    aput-object v9, v7, v5

    goto :goto_3

    :cond_3
    const-string v8, "getSupertypeLoopChecker"

    aput-object v8, v7, v5

    goto :goto_3

    :cond_4
    const-string v8, "getBuiltIns"

    aput-object v8, v7, v5

    goto :goto_3

    :cond_5
    const-string v8, "getDeclarationDescriptor"

    aput-object v8, v7, v5

    goto :goto_3

    :cond_6
    const-string v8, "getParameters"

    aput-object v8, v7, v5

    goto :goto_3

    :cond_7
    const-string v8, "computeSupertypes"

    aput-object v8, v7, v5

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v8, "<init>"

    aput-object v8, v7, v4

    goto :goto_4

    :pswitch_4
    const-string v8, "isSameClassifier"

    aput-object v8, v7, v4

    goto :goto_4

    :pswitch_5
    aput-object v9, v7, v4

    goto :goto_4

    :pswitch_6
    const-string v8, "reportSupertypeLoopError"

    aput-object v8, v7, v4

    :goto_4
    :pswitch_7
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public d()Lcom/shabakaty/downloader/g30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public e()Ljava/util/List;
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Lcom/shabakaty/downloader/g30;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/kt4;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/sq0;->a:Lcom/shabakaty/downloader/sq0;

    iget-object v2, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    const-string v3, "a"

    .line 2
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/shabakaty/downloader/rq0;->r:Lcom/shabakaty/downloader/rq0;

    .line 4
    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/shabakaty/downloader/sq0;->b(Lcom/shabakaty/downloader/kt4;Lcom/shabakaty/downloader/kt4;ZLcom/shabakaty/downloader/hn1;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n1;->U0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k()Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "Cyclic upper bounds"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/shabakaty/downloader/ph4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->c:Lcom/shabakaty/downloader/ph4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n1;->S0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0x8

    invoke-static {p1}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public p(Lcom/shabakaty/downloader/qe2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/n1;->T0(Lcom/shabakaty/downloader/qe2;)V

    return-void
.end method

.method public r()Lcom/shabakaty/downloader/zd2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->e(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/shabakaty/downloader/n1$c;->q(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/n1$c;->d:Lcom/shabakaty/downloader/n1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hw2;->r:Ljava/lang/String;

    return-object v0
.end method
