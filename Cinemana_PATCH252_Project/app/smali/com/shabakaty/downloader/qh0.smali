.class public final synthetic Lcom/shabakaty/downloader/qh0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/qh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/qh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/qh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ew0;Lcom/shabakaty/downloader/gz0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/qh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget p2, p0, Lcom/shabakaty/downloader/qh0;->r:I

    const/4 v0, 0x0

    const-string v1, "this$0"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/bx0;

    iget-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    sget v2, Lcom/shabakaty/downloader/bx0;->z:I

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$cinemanaDownloadItem"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v2

    new-instance v5, Lcom/shabakaty/downloader/hx0;

    invoke-direct {v5, p1, p2, v0}, Lcom/shabakaty/downloader/hx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/ud0;)V

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ew0;

    iget-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/downloader/gz0;

    sget v2, Lcom/shabakaty/downloader/ew0;->x:I

    .line 4
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$downloadsCollectionItem"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hj;->c2()Lcom/shabakaty/downloader/xk;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/jz0;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xk;->e()Lcom/shabakaty/downloader/se0;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/iz0;

    invoke-direct {v4, p1, p2, v0}, Lcom/shabakaty/downloader/iz0;-><init>(Lcom/shabakaty/downloader/jz0;Lcom/shabakaty/downloader/gz0;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    return-void

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    sget-object v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const-string v0, "$activity"

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControlsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    iget-object v1, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v2, "VideoModelArg"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    iget-object v1, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    iget-object p2, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->z:Ljava/lang/String;

    const-string v1, "VIDEO_URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/shabakaty/downloader/qh0;->s:Ljava/lang/Object;

    check-cast p2, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;

    iget-object v0, p0, Lcom/shabakaty/downloader/qh0;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget v2, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->v:I

    .line 18
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$userCode"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, v0}, Lcom/shabakaty/cinemana/ui/qr_login/QrLoginActivity;->k0(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
