.class public final synthetic Lcom/shabakaty/downloader/eh3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/fh3;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fh3;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/eh3;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/eh3;->s:Lcom/shabakaty/downloader/fh3;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/eh3;->s:Lcom/shabakaty/downloader/fh3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/eh3;->r:I

    const-string v1, "UserData"

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eh3;->s:Lcom/shabakaty/downloader/fh3;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fh3;->i:Lcom/shabakaty/downloader/ff3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/ff3;->b(Z)V

    const-string v0, "failed sending user data"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/eh3;->s:Lcom/shabakaty/downloader/fh3;

    .line 6
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/fh3;->i:Lcom/shabakaty/downloader/ff3;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ff3;->b(Z)V

    const-string p1, "sent user data to api"

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/eh3;->s:Lcom/shabakaty/downloader/fh3;

    check-cast p1, Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;

    .line 10
    iget-object v1, v0, Lcom/shabakaty/downloader/fh3;->o:Lcom/shabakaty/downloader/xv2;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;->firstName:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget-object v3, p1, Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;->lastName:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xk;->f()Lcom/shabakaty/downloader/vj;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/dh3;

    .line 17
    iget-object v2, p1, Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;->smallPicture:Ljava/lang/String;

    .line 18
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/dh3;->T0(Ljava/lang/String;)V

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/fh3;->q:Lcom/shabakaty/downloader/xv2;

    .line 20
    iget-object p1, p1, Lcom/shabakaty/cinemana/ui/profile_fragment/UserViewInfo;->largePicture:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
