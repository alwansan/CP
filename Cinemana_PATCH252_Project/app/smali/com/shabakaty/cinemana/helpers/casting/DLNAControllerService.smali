.class public final Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;
.super Landroid/app/Service;
.source "DLNAControllerService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;",
        "Landroid/app/Service;",
        "Lcom/shabakaty/downloader/tu0;",
        "dlnaEvent",
        "Lcom/shabakaty/downloader/qv4;",
        "onDlnaNotificationEvent",
        "Lcom/shabakaty/downloader/xb4;",
        "event",
        "onStartDlnaCastEvent",
        "<init>",
        "()V",
        "app_productionBetaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

.field public static H:Z


# instance fields
.field public A:Lcom/shabakaty/downloader/m03;

.field public B:Landroid/widget/RemoteViews;

.field public C:Landroid/app/NotificationManager;

.field public D:I

.field public E:Lcom/shabakaty/downloader/oh0;

.field public F:Lcom/shabakaty/downloader/n24;

.field public r:Lcom/shabakaty/downloader/mu0;

.field public s:Lcom/shabakaty/downloader/mu0;

.field public t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public u:Lcom/connectsdk/service/DLNAService;

.field public v:Lcom/connectsdk/device/ConnectableDevice;

.field public w:Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;

.field public x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public y:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    sget-object v0, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->Unknown:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->y:Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->z:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/oh0;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/oh0;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->E:Lcom/shabakaty/downloader/oh0;

    return-void
.end method

.method public static final c()Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/connectsdk/service/DeviceService;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/service/DeviceService;

    .line 2
    invoke-virtual {v0}, Lcom/connectsdk/service/DeviceService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "service.serviceName"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/downloader/re4;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->t:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dlnaButton"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lcom/shabakaty/downloader/m03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->A:Lcom/shabakaty/downloader/m03;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "notificationBuilder"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->B:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "notificationLayout"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/CapabilityFilter;

    const-string v1, "MediaPlayer.Play.Video"

    const-string v2, "MediaPlayer.Subtitle.WebVTT"

    const-string v3, "MediaPlayer.Subtitle.SRT"

    .line 2
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lcom/connectsdk/discovery/CapabilityFilter;-><init>([Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/connectsdk/discovery/CapabilityFilter;

    invoke-direct {v1}, Lcom/connectsdk/discovery/CapabilityFilter;-><init>()V

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-static {v3, v4, v2}, Lcom/shabakaty/downloader/t43;->f(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/t43;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/shabakaty/downloader/uv3;->a(Lcom/shabakaty/downloader/t43;)Lcom/shabakaty/downloader/t43;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/f00;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/f00;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;)V

    .line 8
    sget-object v4, Lcom/shabakaty/downloader/do1;->d:Lcom/shabakaty/downloader/xc0;

    sget-object v5, Lcom/shabakaty/downloader/do1;->c:Lcom/shabakaty/downloader/j2;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/shabakaty/downloader/t43;->d(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/t43;

    move-result-object v2

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/n5;->t:Lcom/shabakaty/downloader/n5;

    sget-object v6, Lcom/shabakaty/downloader/uh0;->s:Lcom/shabakaty/downloader/uh0;

    .line 10
    invoke-virtual {v2, v3, v6, v5, v4}, Lcom/shabakaty/downloader/t43;->h(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;

    move-result-object v2

    .line 11
    iput-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->s:Lcom/shabakaty/downloader/mu0;

    .line 12
    new-instance v2, Ljava/lang/Thread;

    .line 13
    new-instance v3, Lcom/shabakaty/downloader/hy1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/shabakaty/downloader/hy1;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;Landroid/content/Context;Lcom/connectsdk/discovery/CapabilityFilter;Lcom/connectsdk/discovery/CapabilityFilter;)V

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final g(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const/4 v1, 0x4

    const-string v2, "http://"

    const-string v3, "https://"

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v5

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->arTranslationFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0, v3, v2, v4, v1}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_1
    new-instance v6, Lcom/connectsdk/core/SubtitleInfo$Builder;

    invoke-direct {v6, v0}, Lcom/connectsdk/core/SubtitleInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6, v5}, Lcom/connectsdk/core/SubtitleInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/connectsdk/core/SubtitleInfo$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Lcom/connectsdk/core/SubtitleInfo$Builder;->setLanguage(Ljava/lang/String;)Lcom/connectsdk/core/SubtitleInfo$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Lcom/connectsdk/core/SubtitleInfo$Builder;->setLabel(Ljava/lang/String;)Lcom/connectsdk/core/SubtitleInfo$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/connectsdk/core/SubtitleInfo$Builder;->build()Lcom/connectsdk/core/SubtitleInfo;

    move-result-object v0

    .line 9
    new-instance v6, Lcom/connectsdk/core/MediaInfo$Builder;

    invoke-static {p1, v3, v2, v4, v1}, Lcom/shabakaty/downloader/ne4;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-direct {v6, v1, v2}, Lcom/connectsdk/core/MediaInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v1, :cond_2

    :goto_2
    move-object v1, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v6, v1}, Lcom/connectsdk/core/MediaInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_4

    :goto_4
    move-object v2, v5

    goto :goto_5

    .line 12
    :cond_4
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->description:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    .line 13
    :cond_5
    :goto_5
    invoke-virtual {v1, v2}, Lcom/connectsdk/core/MediaInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    if-nez v2, :cond_6

    goto :goto_6

    .line 15
    :cond_6
    iget-object v2, v2, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->imgMediumThumbObjUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v5, v2

    .line 16
    :goto_6
    invoke-virtual {v1, v5}, Lcom/connectsdk/core/MediaInfo$Builder;->setIcon(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/connectsdk/core/MediaInfo$Builder;->setSubtitleInfo(Lcom/connectsdk/core/SubtitleInfo;)Lcom/connectsdk/core/MediaInfo$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/connectsdk/core/MediaInfo$Builder;->build()Lcom/connectsdk/core/MediaInfo;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/DLNAService;->play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 20
    :goto_7
    iget-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Lcom/connectsdk/service/DLNAService;->getMediaPlayer()Lcom/connectsdk/service/capability/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_8

    .line 21
    :cond_a
    new-instance v2, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService$a;-><init>(Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, v0, v4, v2}, Lcom/connectsdk/service/capability/MediaPlayer;->playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    :goto_8
    return-void
.end method

.method public final h(Ljava/util/List;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    long-to-double v6, v6

    mul-double v4, v4, v6

    double-to-long v4, v4

    aput-wide v4, v0, v2

    if-le v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/ms1;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/ms1;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/ms1;->a()Lcom/shabakaty/downloader/e7;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "%s.androidInjector() returned null"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/shabakaty/downloader/iq6;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1, p0}, Lcom/shabakaty/downloader/e7;->a(Ljava/lang/Object;)V

    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "<set-?>"

    .line 9
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sput-object p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->G:Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->k(Ljava/lang/Object;)V

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "marti"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-class v3, Lcom/shabakaty/downloader/ms1;

    .line 16
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s does not implement %s"

    .line 17
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->s:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->r:Lcom/shabakaty/downloader/mu0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 3
    :goto_1
    invoke-static {}, Lcom/shabakaty/downloader/j51;->b()Lcom/shabakaty/downloader/j51;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/j51;->m(Ljava/lang/Object;)V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onDlnaNotificationEvent(Lcom/shabakaty/downloader/tu0;)V
    .locals 5
    .annotation runtime Lcom/shabakaty/downloader/cf4;
        threadMode = .enum Lcom/shabakaty/downloader/bn4;->s:Lcom/shabakaty/downloader/bn4;
    .end annotation

    const-string v0, "dlnaEvent"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/tu0;->b:Ljava/lang/Integer;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/helpers/casting/receivers/RemoteReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/tu0;->c:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3db

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Lcom/connectsdk/service/DLNAService;->play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    const-string p1, "pause"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->d()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 7
    :cond_2
    sget-object v1, Lcom/shabakaty/downloader/tu0;->d:Ljava/lang/Integer;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Lcom/connectsdk/service/DLNAService;->pause(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_1
    const-string p1, "play"

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 11
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->d()Lcom/shabakaty/downloader/m03;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 12
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/tu0;->e:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->u:Lcom/connectsdk/service/DLNAService;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/connectsdk/service/DLNAService;->disconnect()V

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->v:Lcom/connectsdk/device/ConnectableDevice;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/connectsdk/device/ConnectableDevice;->disconnect()V

    .line 16
    :goto_3
    sput-boolean v4, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->H:Z

    :cond_8
    :goto_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public final onStartDlnaCastEvent(Lcom/shabakaty/downloader/xb4;)V
    .locals 3
    .annotation runtime Lcom/shabakaty/downloader/cf4;
        threadMode = .enum Lcom/shabakaty/downloader/bn4;->s:Lcom/shabakaty/downloader/bn4;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/xb4;->a:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    const-string v1, "event.videoModel"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/shabakaty/downloader/xb4;->b:Ljava/lang/String;

    const-string v2, "event.videoUrl"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->x:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    .line 3
    iput-object v1, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->z:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/xb4;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/shabakaty/downloader/xb4;->c:Landroid/content/Context;

    const-string v1, "event.context"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->g(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/helpers/casting/DLNAControllerService;->C:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
