.class public final synthetic Lcom/shabakaty/downloader/mx4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ox4;

.field public final synthetic t:Lcom/shabakaty/downloader/i25;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ox4;Lcom/shabakaty/downloader/i25;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/mx4;->r:I

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iput-object p2, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/mx4;->r:I

    const-string v1, "$entity"

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 3
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 4
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 7
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 10
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->x(Ljava/lang/String;)V

    return-void

    .line 12
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 13
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 15
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 16
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->d(Ljava/lang/String;)V

    return-void

    .line 18
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 19
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 21
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 22
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->v(Ljava/lang/String;)V

    return-void

    .line 24
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 25
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 27
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 28
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 29
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->y(Ljava/lang/String;)V

    return-void

    .line 30
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 31
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 33
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 34
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 35
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->k(Ljava/lang/String;)V

    return-void

    .line 36
    :pswitch_6
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 37
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 39
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 40
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 41
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->e(Ljava/lang/String;)V

    return-void

    .line 42
    :pswitch_7
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 43
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 45
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 46
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 47
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->F(Ljava/lang/String;)V

    return-void

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mx4;->s:Lcom/shabakaty/downloader/ox4;

    iget-object v3, p0, Lcom/shabakaty/downloader/mx4;->t:Lcom/shabakaty/downloader/i25;

    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/LogoutResponse;

    .line 49
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ox4;->c(Lcom/shabakaty/downloader/i25;)V

    .line 51
    iget-object p1, v0, Lcom/shabakaty/downloader/ox4;->d:Lcom/shabakaty/downloader/s25;

    .line 52
    iget-object v0, v3, Lcom/shabakaty/downloader/i25;->r:Ljava/lang/String;

    .line 53
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/s25;->E(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
