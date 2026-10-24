.class public final synthetic Lcom/shabakaty/downloader/ph0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ph0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/ph0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/jb;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/ph0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/jg3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ph0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/vg4;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/ph0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget p2, p0, Lcom/shabakaty/downloader/ph0;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p2, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/vg4;

    sget v4, Lcom/shabakaty/downloader/vg4;->x:I

    .line 1
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ih4;

    .line 3
    new-instance v4, Lcom/shabakaty/downloader/bh4;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/bh4;-><init>(Lcom/shabakaty/downloader/ih4;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/wl2;->a:Lcom/shabakaty/downloader/vl2;

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/zg4;

    invoke-direct {v4, p2}, Lcom/shabakaty/downloader/zg4;-><init>(Lcom/shabakaty/downloader/vg4;)V

    const-string p2, "context"

    .line 6
    invoke-static {v3, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/ug4;

    invoke-direct {p2, v3, v4}, Lcom/shabakaty/downloader/ug4;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/tm1;)V

    check-cast v2, Lcom/shabakaty/downloader/l92;

    .line 8
    invoke-virtual {v2, v0, v1, p2}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    .line 9
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    .line 10
    :pswitch_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/jb;

    sget v4, Lcom/shabakaty/downloader/jb;->x:I

    .line 11
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/rb;

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/qb;

    invoke-direct {v4, v3, v2}, Lcom/shabakaty/downloader/qb;-><init>(Lcom/shabakaty/downloader/rb;Lcom/shabakaty/downloader/ud0;)V

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/xk;->i(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/e92;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/mb;

    invoke-direct {v3, p2}, Lcom/shabakaty/downloader/mb;-><init>(Lcom/shabakaty/downloader/jb;)V

    check-cast v2, Lcom/shabakaty/downloader/l92;

    .line 15
    invoke-virtual {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l92;->x(ZZLcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/ou0;

    .line 16
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    .line 17
    :pswitch_2
    iget-object p2, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/jg3;

    sget v4, Lcom/shabakaty/downloader/jg3;->y:I

    .line 18
    invoke-static {p2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ui/home_activity/HomeActivity;

    .line 20
    invoke-virtual {v3}, Lcom/shabakaty/downloader/xi;->F()Lcom/shabakaty/downloader/xk;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/zu1;

    .line 21
    iget-object v4, v3, Lcom/shabakaty/downloader/zu1;->j:Lcom/shabakaty/usermanagement/UserManagement;

    invoke-virtual {v4}, Lcom/shabakaty/usermanagement/UserManagement;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    iget-object v4, v3, Lcom/shabakaty/downloader/zu1;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :goto_0
    const-string v4, "android_id"

    .line 23
    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v4, v3, Lcom/shabakaty/downloader/zu1;->l:Lcom/shabakaty/downloader/sx4;

    const-string v5, "deviceId"

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v4, v4, Lcom/shabakaty/downloader/sx4;->a:Lcom/shabakaty/downloader/k9;

    invoke-interface {v4, v2}, Lcom/shabakaty/downloader/k9;->B(Ljava/lang/String;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/shabakaty/downloader/uv3;->d(Lcom/shabakaty/downloader/f74;)Lcom/shabakaty/downloader/f74;

    move-result-object v2

    .line 27
    new-instance v4, Lcom/shabakaty/downloader/yu1;

    invoke-direct {v4, v3, v0}, Lcom/shabakaty/downloader/yu1;-><init>(Lcom/shabakaty/downloader/zu1;I)V

    new-instance v0, Lcom/shabakaty/downloader/yu1;

    invoke-direct {v0, v3, v1}, Lcom/shabakaty/downloader/yu1;-><init>(Lcom/shabakaty/downloader/zu1;I)V

    .line 28
    new-instance v1, Lcom/shabakaty/downloader/zc0;

    invoke-direct {v1, v4, v0}, Lcom/shabakaty/downloader/zc0;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;)V

    .line 29
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/f74;->a(Lcom/shabakaty/downloader/y74;)V

    .line 30
    iget-object v0, v3, Lcom/shabakaty/downloader/xk;->b:Lcom/shabakaty/downloader/c90;

    .line 31
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/tp6;->a(Lcom/shabakaty/downloader/mu0;Lcom/shabakaty/downloader/c90;)Lcom/shabakaty/downloader/mu0;

    .line 32
    :cond_1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/fh3;

    .line 33
    iget-object p2, p2, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 34
    invoke-static {p2}, Lcom/shabakaty/downloader/zi2;->i(Lcom/shabakaty/downloader/xv2;)V

    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    .line 36
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    sget-object p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 37
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p2, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p2, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p2}, Lcom/connectsdk/service/DLNAService;->disconnect()V

    .line 40
    :goto_1
    iget-object p2, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    if-nez p2, :cond_3

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p2}, Lcom/connectsdk/device/ConnectableDevice;->disconnect()V

    .line 42
    :goto_2
    sput-boolean v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    .line 43
    iget-object p1, p1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez p1, :cond_4

    goto :goto_3

    .line 44
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    :goto_3
    return-void

    .line 45
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ph0;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;

    .line 46
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;->g()Lcom/shabakaty/downloader/se0;

    move-result-object v4

    new-instance v7, Lcom/shabakaty/downloader/gv0;

    invoke-direct {v7, p1, v2}, Lcom/shabakaty/downloader/gv0;-><init>(Lcom/shabakaty/cinemana/utils/download/DownloadActionsHandlerScope;Lcom/shabakaty/downloader/ud0;)V

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
