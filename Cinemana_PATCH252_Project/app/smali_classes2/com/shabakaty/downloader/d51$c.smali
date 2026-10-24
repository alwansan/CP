.class public Lcom/shabakaty/downloader/d51$c;
.super Lcom/shabakaty/downloader/t20;
.source "ErrorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;)V
    .locals 13

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/d51;->a:Lcom/shabakaty/downloader/nu2;

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/eu2;->t:Lcom/shabakaty/downloader/eu2;

    sget-object v4, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v12, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v7, 0x0

    sget-object v8, Lcom/shabakaty/downloader/yj2;->e:Lcom/shabakaty/downloader/md4;

    move-object v0, p0

    move-object v2, p1

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/t20;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/w20;Ljava/util/Collection;Lcom/shabakaty/downloader/s94;ZLcom/shabakaty/downloader/md4;)V

    .line 3
    sget p1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v9, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v10, 0x1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/m20;

    const/4 v8, 0x0

    sget-object v11, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/shabakaty/downloader/m20;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/lr0;->d:Lcom/shabakaty/downloader/mr0;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/m20;->e1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/m20;

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/d51;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/shabakaty/downloader/c51;

    const-string v2, "<ERROR>"

    .line 8
    invoke-static {v2, p0}, Lcom/shabakaty/downloader/d51;->f(Ljava/lang/String;Lcom/shabakaty/downloader/d51$c;)Lcom/shabakaty/downloader/ts4;

    move-result-object v2

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/c51;-><init>(Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/mr2;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/yn1;->b1(Lcom/shabakaty/downloader/qe2;)V

    .line 10
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/shabakaty/downloader/t20;->T0(Lcom/shabakaty/downloader/mr2;Ljava/util/Set;Lcom/shabakaty/downloader/l20;)V

    return-void
.end method

.method public static synthetic w0(I)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_0
    const-string v7, "typeSubstitution"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "kotlinTypeRefiner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "typeArguments"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_4
    const-string v7, "substitutor"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "getMemberScope"

    const-string v7, "substitute"

    const/4 v8, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v2

    goto :goto_4

    :pswitch_5
    aput-object v6, v4, v2

    goto :goto_4

    :pswitch_6
    aput-object v7, v4, v2

    :goto_4
    :pswitch_7
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public N(Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "Error scope for class "

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with arguments: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x7

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/d51$c;->w0(I)V

    throw v0

    :cond_1
    const/4 p1, 0x6

    invoke-static {p1}, Lcom/shabakaty/downloader/d51$c;->w0(I)V

    throw v0
.end method

.method public S0(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/q20;
    .locals 0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/shabakaty/downloader/d51$c;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/d51$c;->w0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
