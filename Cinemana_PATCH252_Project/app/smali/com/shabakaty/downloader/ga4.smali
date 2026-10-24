.class public final synthetic Lcom/shabakaty/downloader/ga4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ka4;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ka4;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/ga4;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ga4;->s:Lcom/shabakaty/downloader/ka4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/ga4;->r:I

    const/4 v1, 0x0

    const-string v2, "it"

    const/4 v3, 0x1

    const-string v4, "key_is_etl_subscriber"

    const-string v5, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ga4;->s:Lcom/shabakaty/downloader/ka4;

    check-cast p1, Lcom/shabakaty/downloader/ws3;

    .line 1
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 3
    invoke-static {v2}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fa4;->D()V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    :goto_0
    return-void

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ga4;->s:Lcom/shabakaty/downloader/ka4;

    check-cast p1, Ljava/lang/Throwable;

    .line 10
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v5}, Lcom/shabakaty/downloader/fa4;->G1()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget v5, v0, Lcom/shabakaty/downloader/ka4;->n:I

    iget v6, v0, Lcom/shabakaty/downloader/ka4;->m:I

    if-ge v5, v6, :cond_1

    add-int/2addr v5, v3

    .line 13
    iput v5, v0, Lcom/shabakaty/downloader/ka4;->n:I

    const-wide/16 v3, 0x3e8

    .line 14
    iput-wide v3, v0, Lcom/shabakaty/downloader/ka4;->o:J

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka4;->m()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v5, v0, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 17
    iget-object v5, v5, Lcom/shabakaty/downloader/ff3;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 19
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fa4;->U()V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 22
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 23
    iget-object v1, v0, Lcom/shabakaty/downloader/ka4;->j:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/a63;

    .line 24
    iget-object v4, v0, Lcom/shabakaty/downloader/ka4;->l:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v4}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/vr3;

    .line 25
    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/a63;->a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/ha4;

    invoke-direct {v4, v1, v3}, Lcom/shabakaty/downloader/ha4;-><init>(Lcom/shabakaty/downloader/mq;I)V

    .line 26
    new-instance v1, Lcom/shabakaty/downloader/r74;

    invoke-direct {v1, v4, v3}, Lcom/shabakaty/downloader/r74;-><init>(Ljava/util/concurrent/Callable;I)V

    .line 27
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/shabakaty/downloader/uv3;->b(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v1

    .line 29
    new-instance v3, Lcom/shabakaty/downloader/ga4;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/ga4;-><init>(Lcom/shabakaty/downloader/ka4;I)V

    new-instance v4, Lcom/shabakaty/downloader/ga4;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/shabakaty/downloader/ga4;-><init>(Lcom/shabakaty/downloader/ka4;I)V

    .line 30
    new-instance v5, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v5, v3, v4}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 31
    invoke-virtual {v1, v5}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 32
    iget-object v0, v0, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 33
    invoke-static {v5, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 34
    :cond_3
    :goto_1
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ga4;->s:Lcom/shabakaty/downloader/ka4;

    check-cast p1, Lcom/shabakaty/downloader/ws3;

    .line 36
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v1, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 38
    invoke-static {v1}, Lcom/shabakaty/downloader/zi2;->k(Lcom/shabakaty/downloader/xv2;)V

    .line 39
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/fa4;->G1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    iget-object v1, v0, Lcom/shabakaty/downloader/ka4;->f:Lcom/shabakaty/downloader/ff3;

    .line 41
    iget-object v1, v1, Lcom/shabakaty/downloader/ff3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v0}, Lcom/shabakaty/downloader/fa4;->U()V

    .line 43
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-nez p1, :cond_5

    goto :goto_2

    .line 44
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ys3;->close()V

    :goto_2
    return-void

    .line 45
    :goto_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ga4;->s:Lcom/shabakaty/downloader/ka4;

    check-cast p1, Ljava/lang/Throwable;

    .line 46
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fa4;

    invoke-interface {v1}, Lcom/shabakaty/downloader/fa4;->G1()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/fa4;

    const v3, 0x7f1201a4

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/vj;->q(I)V

    .line 49
    :cond_6
    iget-object v0, v0, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 50
    invoke-static {v0}, Lcom/shabakaty/downloader/zi2;->g(Lcom/shabakaty/downloader/xv2;)V

    .line 51
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
