.class public final synthetic Lcom/shabakaty/downloader/bl2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/cl2;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/cl2;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/bl2;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/bl2;->s:Lcom/shabakaty/downloader/cl2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/bl2;->r:I

    const-string v1, "it"

    const-string v2, "User_State"

    const-string v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bl2;->s:Lcom/shabakaty/downloader/cl2;

    check-cast p1, Lcom/shabakaty/usermanagement/utils/LoginState;

    .line 1
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Login State changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl2;->n(Lcom/shabakaty/usermanagement/utils/LoginState;)V

    .line 4
    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cl2;->l()V

    .line 6
    :cond_0
    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne p1, v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cl2;->m()V

    :cond_1
    return-void

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bl2;->s:Lcom/shabakaty/downloader/cl2;

    check-cast p1, Ljava/lang/Throwable;

    .line 9
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Login State subscriber error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/vd5;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/cl2;->o(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
