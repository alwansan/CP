.class public final synthetic Lcom/shabakaty/downloader/zk2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/al2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/al2;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/zk2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zk2;->s:Lcom/shabakaty/downloader/al2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/shabakaty/downloader/zk2;->r:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zk2;->s:Lcom/shabakaty/downloader/al2;

    check-cast p1, Lcom/shabakaty/usermanagement/utils/LoginState;

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/al2;->c:Lcom/shabakaty/downloader/vj3;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/vj3;->e(Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/al2;->b:Lcom/shabakaty/downloader/mu0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, v0, Lcom/shabakaty/downloader/al2;->b:Lcom/shabakaty/downloader/mu0;

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/al2;->a()Lcom/shabakaty/downloader/qf1;

    move-result-object p1

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/ay3;->b:Lcom/shabakaty/downloader/wx3;

    const-string v5, "unit is null"

    .line 10
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "scheduler is null"

    .line 11
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v5, Lcom/shabakaty/downloader/zg1;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/shabakaty/downloader/zg1;-><init>(JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/vf1;

    invoke-direct {v1, p1, v5}, Lcom/shabakaty/downloader/vf1;-><init>(Lcom/shabakaty/downloader/wj3;Lcom/shabakaty/downloader/wj3;)V

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/fw3;->x:Lcom/shabakaty/downloader/fw3;

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/ug1;

    invoke-direct {v2, v1, p1}, Lcom/shabakaty/downloader/ug1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/ye3;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/al2;->b(Lcom/shabakaty/downloader/qf1;)V

    :cond_2
    return-void

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zk2;->s:Lcom/shabakaty/downloader/al2;

    check-cast p1, Ljava/lang/Throwable;

    .line 18
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/al2;->c:Lcom/shabakaty/downloader/vj3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/vj3;->b(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
