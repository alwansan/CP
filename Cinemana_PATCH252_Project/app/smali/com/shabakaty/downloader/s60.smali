.class public final synthetic Lcom/shabakaty/downloader/s60;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/u60;

.field public final synthetic t:Lcom/shabakaty/cinemana/domain/models/local/Comment;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/u60;Lcom/shabakaty/cinemana/domain/models/local/Comment;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/s60;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/s60;->s:Lcom/shabakaty/downloader/u60;

    iput-object p2, p0, Lcom/shabakaty/downloader/s60;->t:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget p2, p0, Lcom/shabakaty/downloader/s60;->r:I

    const-string v0, "commentNb"

    const-string v1, "videoNb"

    const-string v2, "$comment"

    const-string v3, "this$0"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/shabakaty/downloader/s60;->s:Lcom/shabakaty/downloader/u60;

    iget-object v4, p0, Lcom/shabakaty/downloader/s60;->t:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    sget v5, Lcom/shabakaty/downloader/u60;->S:I

    .line 1
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/g70;

    .line 3
    iget-object v2, p2, Lcom/shabakaty/downloader/g70;->h:Lcom/shabakaty/downloader/ox4;

    .line 4
    iget-object v3, v4, Lcom/shabakaty/cinemana/domain/models/local/Comment;->videoNb:Ljava/lang/String;

    .line 5
    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, v2, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v1, v2, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v5}, Lcom/shabakaty/downloader/k9;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 9
    iget-object v1, v2, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v3, Lcom/shabakaty/downloader/hx;

    const/16 v5, 0x14

    invoke-direct {v3, v1, v5}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 11
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/shabakaty/downloader/y60;

    invoke-direct {v1, p2, v4}, Lcom/shabakaty/downloader/y60;-><init>(Lcom/shabakaty/downloader/g70;Lcom/shabakaty/cinemana/domain/models/local/Comment;)V

    sget-object v2, Lcom/shabakaty/downloader/z60;->r:Lcom/shabakaty/downloader/z60;

    invoke-virtual {p2, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 14
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/s60;->s:Lcom/shabakaty/downloader/u60;

    iget-object v4, p0, Lcom/shabakaty/downloader/s60;->t:Lcom/shabakaty/cinemana/domain/models/local/Comment;

    sget v5, Lcom/shabakaty/downloader/u60;->S:I

    .line 15
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/shabakaty/downloader/aj;->f2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/g70;

    .line 17
    iget-object v2, p2, Lcom/shabakaty/downloader/g70;->h:Lcom/shabakaty/downloader/ox4;

    .line 18
    iget-object v3, v4, Lcom/shabakaty/cinemana/domain/models/local/Comment;->videoNb:Ljava/lang/String;

    .line 19
    iget-object v4, v4, Lcom/shabakaty/cinemana/domain/models/local/Comment;->commentNb:Ljava/lang/String;

    .line 20
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, v2, Lcom/shabakaty/downloader/ox4;->a:Lcom/shabakaty/downloader/k9;

    iget-object v1, v2, Lcom/shabakaty/downloader/ox4;->b:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v1}, Lcom/shabakaty/usermanagement/UserManagement;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/shabakaty/downloader/k9;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 23
    iget-object v1, v2, Lcom/shabakaty/downloader/ox4;->e:Lcom/shabakaty/downloader/qm2;

    new-instance v3, Lcom/shabakaty/downloader/hx;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/hx;-><init>(Lcom/shabakaty/downloader/qm2;I)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Lcom/shabakaty/downloader/v74;

    invoke-direct {v1, v0, v3}, Lcom/shabakaty/downloader/v74;-><init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V

    .line 25
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/ox4;->h(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/shabakaty/downloader/c70;->r:Lcom/shabakaty/downloader/c70;

    sget-object v2, Lcom/shabakaty/downloader/d70;->r:Lcom/shabakaty/downloader/d70;

    invoke-virtual {p2, v0, v1, v2}, Lcom/shabakaty/downloader/xk;->b(Lcom/shabakaty/downloader/f74;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/mu0;

    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
