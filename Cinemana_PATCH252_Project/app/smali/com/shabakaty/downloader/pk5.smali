.class public final Lcom/shabakaty/downloader/pk5;
.super Lcom/shabakaty/downloader/wk5;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/shabakaty/downloader/pk5;->b:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wk5;-><init>()V

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/op5;->w:Lcom/shabakaty/downloader/op5;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->x:Lcom/shabakaty/downloader/op5;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->y:Lcom/shabakaty/downloader/op5;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->z:Lcom/shabakaty/downloader/op5;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->A:Lcom/shabakaty/downloader/op5;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->B:Lcom/shabakaty/downloader/op5;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shabakaty/downloader/wk5;->a:Ljava/util/List;

    sget-object v0, Lcom/shabakaty/downloader/op5;->C:Lcom/shabakaty/downloader/op5;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/shabakaty/downloader/wk5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/pk5;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    sget-object v0, Lcom/shabakaty/downloader/op5;->s:Lcom/shabakaty/downloader/op5;

    invoke-static {p1}, Lcom/shabakaty/downloader/kl3;->q(Ljava/lang/String;)Lcom/shabakaty/downloader/op5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v3, 0x1f

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wk5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    const/4 p1, 0x0

    throw p1

    .line 3
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/op5;->C:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_XOR"

    .line 4
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    .line 6
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p2

    new-instance p3, Lcom/shabakaty/downloader/ug5;

    xor-int/2addr p1, p2

    int-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    sget-object p1, Lcom/shabakaty/downloader/op5;->B:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_UNSIGNED_RIGHT_SHIFT"

    .line 9
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->p(D)J

    move-result-wide v0

    .line 11
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/kl3;->p(D)J

    move-result-wide p1

    new-instance p3, Lcom/shabakaty/downloader/ug5;

    and-long/2addr p1, v3

    long-to-int p2, p1

    ushr-long p1, v0, p2

    long-to-double p1, p1

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 13
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/op5;->A:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_RIGHT_SHIFT"

    .line 14
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 15
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/kl3;->p(D)J

    move-result-wide p2

    new-instance v0, Lcom/shabakaty/downloader/ug5;

    and-long/2addr p2, v3

    long-to-int p3, p2

    shr-int/2addr p1, p3

    int-to-double p1, p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 18
    :pswitch_4
    sget-object p1, Lcom/shabakaty/downloader/op5;->z:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_OR"

    .line 19
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 20
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    .line 21
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p2

    new-instance p3, Lcom/shabakaty/downloader/ug5;

    or-int/2addr p1, p2

    int-to-double p1, p1

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 23
    :pswitch_5
    sget-object p1, Lcom/shabakaty/downloader/op5;->y:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_NOT"

    .line 24
    invoke-static {p1, v2, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 25
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    new-instance p3, Lcom/shabakaty/downloader/ug5;

    not-int p1, p1

    int-to-double p1, p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1

    .line 27
    :pswitch_6
    sget-object p1, Lcom/shabakaty/downloader/op5;->x:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_LEFT_SHIFT"

    .line 28
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 29
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    .line 30
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/kl3;->p(D)J

    move-result-wide p2

    new-instance v0, Lcom/shabakaty/downloader/ug5;

    and-long/2addr p2, v3

    long-to-int p3, p2

    shl-int/2addr p1, p3

    int-to-double p1, p1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    :goto_0
    move-object p3, v0

    goto :goto_1

    .line 32
    :pswitch_7
    sget-object p1, Lcom/shabakaty/downloader/op5;->w:Lcom/shabakaty/downloader/op5;

    const-string p1, "BITWISE_AND"

    .line 33
    invoke-static {p1, v5, p3}, Lcom/shabakaty/downloader/kl3;->t(Ljava/lang/String;ILjava/util/List;)V

    .line 34
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p1

    .line 35
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/gj5;

    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/np4;->f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p2

    invoke-interface {p2}, Lcom/shabakaty/downloader/gj5;->f()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/kl3;->m(D)I

    move-result p2

    new-instance p3, Lcom/shabakaty/downloader/ug5;

    and-int/2addr p1, p2

    int-to-double p1, p1

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    :goto_1
    return-object p3

    :goto_2
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 39
    instance-of v3, v0, Lcom/shabakaty/downloader/bh5;

    if-eqz v3, :cond_0

    .line 40
    check-cast v0, Lcom/shabakaty/downloader/bh5;

    invoke-virtual {v0, p2, p3}, Lcom/shabakaty/downloader/bh5;->a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "Function %s is not defined"

    .line 42
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "Command not found: %s"

    .line 44
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
