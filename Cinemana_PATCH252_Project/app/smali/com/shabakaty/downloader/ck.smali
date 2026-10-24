.class public final synthetic Lcom/shabakaty/downloader/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_activity/CastButton;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/ExpandableTextView;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/utils/StatusView;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ek;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/u60;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/x60;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/zv0;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/epom_view/ui/EpomView;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/shabakaty/downloader/ck;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/shabakaty/downloader/ck;->r:I

    const/4 v0, 0x0

    const-string v1, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    const-string v0, "$imageDialog"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/utils/StatusView;

    sget v0, Lcom/shabakaty/cinemana/utils/StatusView;->N:I

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/StatusView;->getNavigator()Lcom/shabakaty/downloader/vj;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/vj;->o()V

    :goto_0
    return-void

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/utils/ExpandableTextView;

    sget v0, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->w:I

    .line 8
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p1, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->u:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->u:Z

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/utils/ExpandableTextView;->e()V

    return-void

    .line 11
    :pswitch_3
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/x60;

    sget v2, Lcom/shabakaty/downloader/x60;->I:I

    .line 12
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0, v0}, Lcom/shabakaty/downloader/ct0;->Y1(ZZ)V

    return-void

    .line 14
    :pswitch_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/u60;

    sget v0, Lcom/shabakaty/downloader/u60;->S:I

    .line 15
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/u60;->Q:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    return-void

    :cond_1
    const-string p1, "updateCommentDialog"

    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 17
    :pswitch_5
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/zv0;

    .line 18
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p1, Lcom/shabakaty/downloader/zv0;->e:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/rm1;

    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    return-void

    .line 20
    :pswitch_6
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;

    sget v2, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->S:I

    .line 21
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/WideVerticalVideosView;->getBinding()Lcom/shabakaty/downloader/i65;

    move-result-object p1

    iget-object p1, p1, Lcom/shabakaty/downloader/i65;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->t0(I)V

    return-void

    .line 23
    :pswitch_7
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;

    sget v0, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->T:I

    .line 24
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p1, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->K:Lcom/shabakaty/downloader/hn1;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .line 26
    :pswitch_8
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;

    sget v0, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->M:I

    .line 27
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/cinemana/ui/home_fragment/FranchisesView;->getSeeMoreClickListener()Lcom/shabakaty/downloader/rm1;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    :goto_2
    return-void

    .line 29
    :pswitch_9
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;

    .line 30
    invoke-static {}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    move-result-object v0

    .line 31
    iget-object v1, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->w:Landroidx/mediarouter/app/MediaRouteButton;

    .line 32
    iget-object v2, p1, Lcom/shabakaty/cinemana/ui/home_activity/CastButton;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 33
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "context"

    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mediaRouteButton"

    .line 34
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dlnaButton"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 36
    new-instance v3, Lcom/shabakaty/downloader/sh0;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/shabakaty/downloader/sh0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 37
    sget-boolean v4, Lcom/shabakaty/downloader/d15;->A:Z

    if-eqz v4, :cond_4

    .line 38
    invoke-static {v2}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 39
    invoke-static {v1}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 40
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteButton;->performClick()Z

    .line 41
    invoke-static {v1}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 42
    invoke-static {v2}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    goto/16 :goto_3

    .line 43
    :cond_4
    sget-boolean v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    if-eqz v1, :cond_7

    .line 44
    check-cast p1, Lcom/shabakaty/downloader/r9;

    .line 45
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120294

    .line 46
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, v1, Landroidx/appcompat/app/b$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const v2, 0x7f1200d4

    .line 48
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/ph0;

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/ph0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/b$a;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    const v2, 0x7f12004e

    .line 49
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/downloader/rh0;->s:Lcom/shabakaty/downloader/rh0;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/b$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 50
    iget-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->y:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    sget-object v3, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Playing:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-eq v2, v3, :cond_5

    .line 51
    sget-object v3, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Buffering:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-eq v2, v3, :cond_5

    .line 52
    sget-object v3, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Paused:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    if-ne v2, v3, :cond_6

    .line 53
    :cond_5
    iget-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-eqz v2, :cond_6

    .line 54
    iget-object v2, v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

    if-eqz v2, :cond_6

    const v2, 0x7f12020b

    .line 55
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/shabakaty/downloader/qh0;

    invoke-direct {v3, p1, v0}, Lcom/shabakaty/downloader/qh0;-><init>(Landroid/app/Activity;Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/b$a;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 56
    :cond_6
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 58
    :cond_7
    new-instance v0, Lcom/connectsdk/device/DevicePicker;

    check-cast p1, Lcom/shabakaty/downloader/r9;

    invoke-direct {v0, p1}, Lcom/connectsdk/device/DevicePicker;-><init>(Landroid/app/Activity;)V

    const-string p1, "Select Device"

    .line 59
    invoke-virtual {v0, p1, v3}, Lcom/connectsdk/device/DevicePicker;->getPickerDialog(Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "devicePicker.getPickerDi\u2026 deviceSelectionListener)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_3
    return-void

    .line 61
    :pswitch_a
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ek;

    sget v0, Lcom/shabakaty/downloader/ek;->x:I

    .line 62
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ek;->Z1()Z

    return-void

    .line 64
    :goto_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ck;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/epom_view/ui/EpomView;

    sget v0, Lcom/shabakaty/epom_view/ui/EpomView;->T:I

    .line 65
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/shabakaty/epom_view/ui/EpomView;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
