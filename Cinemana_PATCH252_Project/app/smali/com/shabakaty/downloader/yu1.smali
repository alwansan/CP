.class public final synthetic Lcom/shabakaty/downloader/yu1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/zu1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/zu1;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/yu1;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yu1;->s:Lcom/shabakaty/downloader/zu1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/yu1;->r:I

    const-string v1, "UserData"

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/yu1;->s:Lcom/shabakaty/downloader/zu1;

    .line 1
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/zu1;->k:Lcom/shabakaty/downloader/ff3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ff3;->b(Z)V

    const-string v0, "logged out successfully"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/bv1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/bv1;-><init>(Lcom/shabakaty/downloader/zu1;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yu1;->s:Lcom/shabakaty/downloader/zu1;

    check-cast p1, Ljava/lang/Throwable;

    .line 6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/eu1;

    const v3, 0x7f12016d

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/vj;->q(I)V

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/zu1;->k:Lcom/shabakaty/downloader/ff3;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ff3;->b(Z)V

    const-string v0, "failed logging out: "

    .line 9
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "it"

    .line 10
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
