.class public final synthetic Lcom/shabakaty/downloader/sh0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Landroidx/mediarouter/app/MediaRouteButton;

.field public final synthetic u:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sh0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iput-object p2, p0, Lcom/shabakaty/downloader/sh0;->s:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/downloader/sh0;->t:Landroidx/mediarouter/app/MediaRouteButton;

    iput-object p4, p0, Lcom/shabakaty/downloader/sh0;->u:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object p2, p0, Lcom/shabakaty/downloader/sh0;->r:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    iget-object p4, p0, Lcom/shabakaty/downloader/sh0;->s:Landroid/content/Context;

    iget-object p5, p0, Lcom/shabakaty/downloader/sh0;->t:Landroidx/mediarouter/app/MediaRouteButton;

    iget-object v0, p0, Lcom/shabakaty/downloader/sh0;->u:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    const-string v1, "this$0"

    .line 1
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$context"

    invoke-static {p4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$mediaRouteButton"

    invoke-static {p5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$dlnaButton"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const-string p3, "null cannot be cast to non-null type com.connectsdk.device.ConnectableDevice"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/connectsdk/device/ConnectableDevice;

    .line 3
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object p3

    const-string v1, "device.services"

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "DLNA"

    invoke-virtual {p2, v2, p3}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    .line 4
    :try_start_0
    new-instance p3, Lcom/connectsdk/service/DLNAService;

    .line 5
    invoke-virtual {p1, v2}, Lcom/connectsdk/device/ConnectableDevice;->getServiceByName(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService;

    move-result-object p5

    invoke-virtual {p5}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object p5

    .line 6
    invoke-virtual {p1, v2}, Lcom/connectsdk/device/ConnectableDevice;->getServiceByName(Ljava/lang/String;)Lcom/connectsdk/service/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceConfig()Lcom/connectsdk/service/config/ServiceConfig;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/connectsdk/service/upnp/DLNAHttpServer;

    invoke-direct {v1}, Lcom/connectsdk/service/upnp/DLNAHttpServer;-><init>()V

    .line 8
    invoke-direct {p3, p5, v0, p2, v1}, Lcom/connectsdk/service/DLNAService;-><init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;Landroid/content/Context;Lcom/connectsdk/service/upnp/DLNAHttpServer;)V

    .line 9
    iput-object p3, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    .line 10
    invoke-virtual {p1, p3}, Lcom/connectsdk/device/ConnectableDevice;->addService(Lcom/connectsdk/service/DeviceService;)V

    const p3, 0x7f1201a5

    .line 11
    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-static {p4, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 14
    iput-object p1, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    const/4 p3, 0x1

    .line 15
    sput-boolean p3, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    .line 16
    iget-object p3, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->E:Lcom/shabakaty/downloader/oh0;

    invoke-virtual {p1, p3}, Lcom/connectsdk/device/ConnectableDevice;->addListener(Lcom/connectsdk/device/ConnectableDeviceListener;)V

    .line 17
    iget-object p3, p2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p3, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p4, Lcom/shabakaty/downloader/xh0;

    invoke-direct {p4, p2}, Lcom/shabakaty/downloader/xh0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    invoke-virtual {p3, p4}, Lcom/connectsdk/service/DLNAService;->subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;

    .line 19
    :goto_1
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    const-string p2, "marti"

    const-string p3, ""

    .line 20
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Chromecast"

    invoke-virtual {p2, v2, p3}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->getServices()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "DIAL"

    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1201a6

    .line 24
    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 27
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 28
    invoke-static {p5}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    .line 29
    :try_start_1
    sget-object p1, Lcom/shabakaty/downloader/sw;->a:Ljava/util/List;

    const-string p1, "Must be called from the main thread."

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 32
    invoke-static {p4}, Lcom/shabakaty/downloader/tw;->e(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/tw;->b()Landroidx/mediarouter/media/f;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/f;)V

    .line 34
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/sw;->b:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_3
    invoke-virtual {p5}, Landroidx/mediarouter/app/MediaRouteButton;->performClick()Z

    .line 37
    invoke-static {p5}, Lcom/shabakaty/downloader/s45;->j(Landroid/view/View;)V

    .line 38
    invoke-static {v0}, Lcom/shabakaty/downloader/s45;->l(Landroid/view/View;)V

    :goto_4
    return-void
.end method
