.class public final synthetic Lcom/shabakaty/downloader/f00;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/xc0;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/by0;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/rm1;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tm1;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/f00;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    check-cast p1, Ljava/lang/Integer;

    sget p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->z:I

    .line 1
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->u:Lcom/shabakaty/downloader/qw;

    iget-object p1, p1, Lcom/shabakaty/downloader/qw;->M:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3
    iget-object p1, v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->u:Lcom/shabakaty/downloader/qw;

    iget-object p1, p1, Lcom/shabakaty/downloader/qw;->M:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p()V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 5
    :goto_0
    iput-object v2, v0, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->x:Lcom/shabakaty/downloader/mu0;

    return-void

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tm1;

    check-cast p1, Lcom/shabakaty/downloader/tj;

    const-string v1, "$onSuccess"

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/tj;->b:Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rm1;

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "$onError"

    .line 11
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    .line 12
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    .line 13
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    return-void

    .line 14
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    check-cast p1, Ljava/lang/Long;

    sget p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->E:I

    .line 15
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/connectsdk/service/DLNAService;->getMediaControl()Lcom/connectsdk/service/capability/MediaControl;

    move-result-object v2

    .line 19
    :goto_1
    iput-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    .line 20
    new-instance p1, Ljava/lang/Thread;

    .line 21
    new-instance v2, Lcom/shabakaty/downloader/bi0;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/bi0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;I)V

    .line 22
    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 24
    iget-object p1, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;->B:Lcom/connectsdk/service/capability/MediaControl;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/ii0;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ii0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;)V

    invoke-interface {p1, v1}, Lcom/connectsdk/service/capability/MediaControl;->getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V

    :goto_2
    return-void

    .line 25
    :pswitch_4
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    check-cast p1, Ljava/lang/Long;

    sget-object p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 26
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-boolean p1, Lcom/shabakaty/downloader/d15;->A:Z

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 28
    sget-boolean p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    if-eqz p1, :cond_3

    goto :goto_3

    .line 29
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v2, Lcom/shabakaty/downloader/zw;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/zw;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/j51;->i(Ljava/lang/Object;)V

    goto :goto_4

    .line 30
    :cond_4
    :goto_3
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    new-instance v2, Lcom/shabakaty/downloader/zw;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v1}, Lcom/shabakaty/downloader/zw;-><init>(Ljava/lang/Boolean;I)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/j51;->i(Ljava/lang/Object;)V

    .line 31
    :goto_4
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object p1

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/tu0;

    sget-object v2, Lcom/shabakaty/downloader/tu0;->f:Ljava/lang/Integer;

    .line 33
    iget-object v0, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    .line 34
    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/tu0;-><init>(Ljava/lang/Integer;Lcom/connectsdk/service/DLNAService;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/j51;->i(Ljava/lang/Object;)V

    return-void

    .line 35
    :pswitch_5
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/CinemanaApplication;

    check-cast p1, Lcom/shabakaty/usermanagement/utils/LoginState;

    sget v1, Lcom/shabakaty/cinemana/CinemanaApplication;->B:I

    .line 36
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->ZOMBIE:Lcom/shabakaty/usermanagement/utils/LoginState;

    if-ne p1, v1, :cond_5

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/CinemanaApplication;->j()Lcom/shabakaty/usermanagement/UserManagement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/usermanagement/UserManagement;->logout()Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 39
    sget-object v0, Lcom/shabakaty/downloader/ay3;->c:Lcom/shabakaty/downloader/wx3;

    .line 40
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/f74;->m(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/f74;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v1, Lcom/shabakaty/downloader/do1;->e:Lcom/shabakaty/downloader/xc0;

    .line 42
    new-instance v2, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 43
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    :cond_5
    return-void

    .line 44
    :goto_5
    iget-object v0, p0, Lcom/shabakaty/downloader/f00;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/by0;

    check-cast p1, Ljava/util/List;

    .line 45
    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/by0;->h:Lcom/shabakaty/downloader/xv2;

    .line 47
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
