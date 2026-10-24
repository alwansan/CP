.class public final synthetic Lcom/shabakaty/downloader/sk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lcom/shabakaty/downloader/xk;

.field public final synthetic u:Lcom/shabakaty/downloader/f74;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/sk;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sk;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sk;->t:Lcom/shabakaty/downloader/xk;

    iput-object p3, p0, Lcom/shabakaty/downloader/sk;->u:Lcom/shabakaty/downloader/f74;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/xv2;Lcom/shabakaty/downloader/xk;Lcom/shabakaty/downloader/f74;I)V
    .locals 0

    iput p4, p0, Lcom/shabakaty/downloader/sk;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sk;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/sk;->t:Lcom/shabakaty/downloader/xk;

    iput-object p3, p0, Lcom/shabakaty/downloader/sk;->u:Lcom/shabakaty/downloader/f74;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lcom/shabakaty/downloader/sk;->r:I

    const-string v1, "it"

    const-string v2, "$consumerObject"

    const-string v3, "$this_consume"

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sk;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xv2;

    iget-object v5, p0, Lcom/shabakaty/downloader/sk;->t:Lcom/shabakaty/downloader/xk;

    iget-object v6, p0, Lcom/shabakaty/downloader/sk;->u:Lcom/shabakaty/downloader/f74;

    move-object v10, p1

    check-cast v10, Ljava/lang/Throwable;

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v10, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    const/4 v9, 0x0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/tj;

    .line 4
    sget-object v8, Lcom/shabakaty/downloader/tj$a;->s:Lcom/shabakaty/downloader/tj$a;

    const/4 v11, 0x0

    const/16 v12, 0x8

    move-object v7, p1

    .line 5
    invoke-direct/range {v7 .. v12}, Lcom/shabakaty/downloader/tj;-><init>(Lcom/shabakaty/downloader/tj$a;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/vk;

    invoke-direct {p1, v5}, Lcom/shabakaty/downloader/vk;-><init>(Lcom/shabakaty/downloader/xk;)V

    invoke-virtual {v5, v6, p1}, Lcom/shabakaty/downloader/xk;->g(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/rm1;)V

    return-void

    .line 8
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/sk;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/xv2;

    iget-object v1, p0, Lcom/shabakaty/downloader/sk;->t:Lcom/shabakaty/downloader/xk;

    iget-object v5, p0, Lcom/shabakaty/downloader/sk;->u:Lcom/shabakaty/downloader/f74;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    .line 9
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/uk;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/uk;-><init>(Lcom/shabakaty/downloader/xk;)V

    invoke-virtual {v1, v5, p1}, Lcom/shabakaty/downloader/xk;->g(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/rm1;)V

    return-void

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sk;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    iget-object v2, p0, Lcom/shabakaty/downloader/sk;->t:Lcom/shabakaty/downloader/xk;

    iget-object v5, p0, Lcom/shabakaty/downloader/sk;->u:Lcom/shabakaty/downloader/f74;

    check-cast p1, Ljava/lang/Throwable;

    const-string v6, "$onError"

    .line 13
    invoke-static {v0, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance p1, Lcom/shabakaty/downloader/tk;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/tk;-><init>(Lcom/shabakaty/downloader/xk;)V

    invoke-virtual {v2, v5, p1}, Lcom/shabakaty/downloader/xk;->g(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/rm1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
