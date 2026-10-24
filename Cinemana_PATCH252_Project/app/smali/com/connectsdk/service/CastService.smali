.class public Lcom/connectsdk/service/CastService;
.super Lcom/connectsdk/service/DeviceService;
.source "CastService.java"

# interfaces
.implements Lcom/connectsdk/service/capability/MediaPlayer;
.implements Lcom/connectsdk/service/capability/MediaControl;
.implements Lcom/connectsdk/service/capability/VolumeControl;
.implements Lcom/connectsdk/service/capability/WebAppLauncher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;,
        Lcom/connectsdk/service/CastService$ConnectionFailedListener;,
        Lcom/connectsdk/service/CastService$ConnectionCallbacks;,
        Lcom/connectsdk/service/CastService$CastListener;,
        Lcom/connectsdk/service/CastService$CastClient;,
        Lcom/connectsdk/service/CastService$CastClientException;,
        Lcom/connectsdk/service/CastService$LaunchWebAppListener;,
        Lcom/connectsdk/service/CastService$ConnectionListener;
    }
.end annotation


# static fields
.field public static final CAST_SERVICE_MUTE_SUBSCRIPTION_NAME:Ljava/lang/String; = "mute"

.field public static final CAST_SERVICE_VOLUME_SUBSCRIPTION_NAME:Ljava/lang/String; = "volume"

.field public static final ID:Ljava/lang/String; = "Chromecast"

.field private static final MEDIA_TRACK_ID:J = 0x1L

.field public static final PLAY_STATE:Ljava/lang/String; = "PlayState"

.field public static applicationID:Ljava/lang/String; = "CC1AD845"


# instance fields
.field public castDevice:Lcom/google/android/gms/cast/CastDevice;

.field public commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/connectsdk/service/CastService$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field public currentAppId:Ljava/lang/String;

.field public currentMuteStatus:Z

.field public currentVolumeLevel:F

.field public launchingAppId:Ljava/lang/String;

.field public mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public mCastClient:Lcom/connectsdk/service/CastService$CastClient;

.field public mCastClientListener:Lcom/connectsdk/service/CastService$CastListener;

.field public mConnectionCallbacks:Lcom/connectsdk/service/CastService$ConnectionCallbacks;

.field public mConnectionFailedListener:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

.field public mMediaPlayer:Lcom/shabakaty/downloader/cr3;

.field public mWaitingForReconnect:Z

.field public sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/CastWebAppSession;",
            ">;"
        }
    .end annotation
.end field

.field public subscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/connectsdk/service/DeviceService;-><init>(Lcom/connectsdk/service/config/ServiceDescription;Lcom/connectsdk/service/config/ServiceConfig;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    new-instance p1, Lcom/connectsdk/service/CastService$CastClient;

    invoke-direct {p1}, Lcom/connectsdk/service/CastService$CastClient;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    .line 4
    new-instance p1, Lcom/connectsdk/service/CastService$CastListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/service/CastService$CastListener;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->mCastClientListener:Lcom/connectsdk/service/CastService$CastListener;

    .line 5
    new-instance p1, Lcom/connectsdk/service/CastService$ConnectionCallbacks;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/service/CastService$ConnectionCallbacks;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->mConnectionCallbacks:Lcom/connectsdk/service/CastService$ConnectionCallbacks;

    .line 6
    new-instance p1, Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/service/CastService$ConnectionFailedListener;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$1;)V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->mConnectionFailedListener:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->sessions:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    return-void
.end method

.method public static synthetic access$300(Lcom/connectsdk/service/CastService;Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/connectsdk/service/CastService;->loadMedia(Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$ConnectionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/CastService;->detachMediaPlayer()V

    return-void
.end method

.method public static synthetic access$600(Lcom/connectsdk/service/CastService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/service/CastService;->attachMediaPlayer()V

    return-void
.end method

.method private addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private attachMediaPlayer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->createMediaPlayer()Lcom/shabakaty/downloader/cr3;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    .line 3
    new-instance v1, Lcom/connectsdk/service/CastService$6;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/CastService$6;-><init>(Lcom/connectsdk/service/CastService;)V

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/cr3;->e:Lcom/shabakaty/downloader/cr3$c;

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    new-instance v1, Lcom/connectsdk/service/CastService$7;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/CastService$7;-><init>(Lcom/connectsdk/service/CastService;)V

    .line 6
    iput-object v1, v0, Lcom/shabakaty/downloader/cr3;->d:Lcom/shabakaty/downloader/cr3$b;

    .line 7
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v2, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Lcom/connectsdk/service/CastService$CastClient;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/shabakaty/downloader/cr3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Exception while creating media channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private detachMediaPlayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/l56;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v1, v0}, Lcom/connectsdk/service/CastService$CastClient;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/connectsdk/service/CastService$CastClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v2, "Exception while launching application"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    return-void
.end method

.method public static discoveryFilter()Lcom/connectsdk/discovery/DiscoveryFilter;
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryFilter;

    const-string v1, "Chromecast"

    invoke-direct {v0, v1, v1}, Lcom/connectsdk/discovery/DiscoveryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getApplicationID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/CastService;->applicationID:Ljava/lang/String;

    return-object v0
.end method

.method private loadMedia(Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    iget-object v9, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v10, Lcom/shabakaty/downloader/sw5;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/sw5;-><init>(Lcom/shabakaty/downloader/cr3;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ[JLorg/json/JSONObject;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/connectsdk/service/CastService$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/connectsdk/service/CastService$10;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/WebAppSession;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const-string v1, "Unable to load"

    invoke-direct {p1, p2, v1, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method private playMedia(Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;

    new-instance v1, Lcom/connectsdk/service/CastService$8;

    invoke-direct {v1, p0, p1, p3}, Lcom/connectsdk/service/CastService$8;-><init>(Lcom/connectsdk/service/CastService;Lcom/google/android/gms/cast/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    invoke-direct {v0, p0, v1}, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V

    .line 47
    iput-object p2, p0, Lcom/connectsdk/service/CastService;->launchingAppId:Ljava/lang/String;

    .line 48
    new-instance p1, Lcom/connectsdk/service/CastService$9;

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/connectsdk/service/CastService$9;-><init>(Lcom/connectsdk/service/CastService;Ljava/lang/String;Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method private playMedia(Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 33

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ip2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    move-object/from16 v3, p4

    .line 2
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    move-object/from16 v3, p5

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 4
    invoke-static/range {p6 .. p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/shabakaty/downloader/s55;

    const/16 v4, 0x64

    invoke-direct {v3, v2, v4, v4}, Lcom/shabakaty/downloader/s55;-><init>(Landroid/net/Uri;II)V

    .line 6
    iget-object v2, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/connectsdk/core/SubtitleInfo;->getLabel()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/connectsdk/core/SubtitleInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/connectsdk/core/SubtitleInfo;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/connectsdk/core/SubtitleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 12
    new-instance v14, Lcom/google/android/gms/cast/MediaTrack;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 13
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    new-instance v3, Lcom/google/android/gms/cast/MediaInfo;

    move-object v15, v3

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v16, p1

    .line 15
    invoke-direct/range {v15 .. v32}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 16
    iget-object v4, v3, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 17
    iget-object v5, v4, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v6, p3

    .line 18
    iput-object v6, v5, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 19
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v4, v4, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 21
    iput v1, v4, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 22
    iget-object v1, v3, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 23
    iget-object v4, v1, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 24
    iput-object v0, v4, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    const-wide/16 v4, 0x3e8

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 27
    iput-wide v4, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    const/4 v0, 0x0

    .line 28
    iget-object v1, v3, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 30
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    .line 31
    iput-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/connectsdk/service/CastService;->applicationID:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    invoke-direct {v1, v3, v0, v2}, Lcom/connectsdk/service/CastService;->playMedia(Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void

    :cond_2
    move-object/from16 v1, p0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "contentID cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/connectsdk/service/CastService$ConnectionListener;->onConnected()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->connect()V

    .line 4
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static setApplicationID(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/connectsdk/service/CastService;->applicationID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public closeMedia(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/CastService$11;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public closeWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/connectsdk/service/CastService$18;

    invoke-direct {p1, p0, p2}, Lcom/connectsdk/service/CastService$18;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public connect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->castDevice:Lcom/google/android/gms/cast/CastDevice;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/DeviceService;->getServiceDescription()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/connectsdk/service/config/ServiceDescription;->getDevice()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/CastDevice;

    iput-object v0, p0, Lcom/connectsdk/service/CastService;->castDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->createApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_2
    return-void
.end method

.method public createApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->castDevice:Lcom/google/android/gms/cast/CastDevice;

    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mCastClientListener:Lcom/connectsdk/service/CastService$CastListener;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/nw$c$a;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/nw$c$a;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/shabakaty/downloader/nw$d;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;

    invoke-static {}, Lcom/connectsdk/discovery/DiscoveryManager;->getInstance()Lcom/connectsdk/discovery/DiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/connectsdk/discovery/DiscoveryManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/shabakaty/downloader/nw;->a:Lcom/google/android/gms/common/api/a;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/nw$c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/shabakaty/downloader/nw$c;-><init>(Lcom/shabakaty/downloader/nw$c$a;Lcom/shabakaty/downloader/h56;)V

    const-string v2, "Api must not be null"

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    const-string v2, "Base client builder must not be null"

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/a$e;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 10
    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mConnectionCallbacks:Lcom/connectsdk/service/CastService$ConnectionCallbacks;

    const-string v2, "Listener must not be null"

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mConnectionFailedListener:Lcom/connectsdk/service/CastService$ConnectionFailedListener;

    .line 16
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public createMediaPlayer()Lcom/shabakaty/downloader/cr3;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cr3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/cr3;-><init>()V

    return-object v0
.end method

.method public disconnect()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/connectsdk/service/CastService;->mWaitingForReconnect:Z

    .line 2
    invoke-direct {p0}, Lcom/connectsdk/service/CastService;->detachMediaPlayer()V

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->commandQueue:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v2, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v2}, Lcom/connectsdk/service/CastService$CastClient;->leaveApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_0
    .catch Lcom/connectsdk/service/CastService$CastClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/connectsdk/core/Util;->T:Ljava/lang/String;

    const-string v3, "Closing application error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Lcom/connectsdk/service/CastService$1;

    invoke-direct {v1, p0}, Lcom/connectsdk/service/CastService$1;-><init>(Lcom/connectsdk/service/CastService;)V

    invoke-static {v1}, Lcom/connectsdk/core/Util;->runOnUI(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    iput-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public displayImage(Lcom/connectsdk/core/MediaInfo;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/connectsdk/core/ImageInfo;

    .line 32
    invoke-virtual {p1}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v10, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    move-object v5, p0

    move-object v11, p2

    .line 33
    invoke-virtual/range {v5 .. v11}, Lcom/connectsdk/service/CastService;->displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 21

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ip2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ip2;-><init>(I)V

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    move-object/from16 v2, p3

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    move-object/from16 v2, p4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ip2;->E1(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 4
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/s55;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v3, v3}, Lcom/shabakaty/downloader/s55;-><init>(Landroid/net/Uri;II)V

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    move-object v3, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v4, p1

    .line 8
    invoke-direct/range {v3 .. v20}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/shabakaty/downloader/ip2;JLjava/util/List;Lcom/shabakaty/downloader/dm4;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/shabakaty/downloader/zz4;JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 10
    iget-object v3, v2, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v4, p2

    .line 11
    iput-object v4, v3, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    const/4 v3, 0x0

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    iput v3, v2, Lcom/google/android/gms/cast/MediaInfo;->s:I

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 16
    iget-object v3, v2, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 17
    iput-object v0, v3, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 19
    iget-object v0, v2, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 20
    iput-wide v3, v0, Lcom/google/android/gms/cast/MediaInfo;->v:J

    const/4 v0, 0x0

    .line 21
    iget-object v2, v1, Lcom/google/android/gms/cast/MediaInfo;->H:Lcom/google/android/gms/cast/MediaInfo$a;

    .line 22
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaInfo$a;->a:Lcom/google/android/gms/cast/MediaInfo;

    .line 23
    iput-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->G:Lorg/json/JSONObject;

    .line 24
    sget-object v0, Lcom/connectsdk/service/CastService;->applicationID:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-direct {v2, v1, v0, v3}, Lcom/connectsdk/service/CastService;->playMedia(Lcom/google/android/gms/cast/MediaInfo;Ljava/lang/String;Lcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void

    :cond_1
    move-object/from16 v2, p0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fastForward(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->f()J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const-string v2, "There is no media currently available"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public getMediaControl()Lcom/connectsdk/service/capability/MediaControl;
    .locals 0

    return-object p0
.end method

.method public getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->a()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->a()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 4
    iget-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->a()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 6
    iget-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->a()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    if-eqz v0, :cond_2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 9
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.google.android.gms.cast.metadata.SUBTITLE"

    .line 10
    invoke-virtual {v0, v6}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/s55;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/s55;->s:Landroid/net/Uri;

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v2, Lcom/connectsdk/core/ImageInfo;

    invoke-direct {v2, v0}, Lcom/connectsdk/core/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    :cond_1
    move-object v8, v2

    move-object v7, v6

    move-object v6, v3

    goto :goto_0

    :cond_2
    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    .line 19
    :goto_0
    new-instance v0, Lcom/connectsdk/core/MediaInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/connectsdk/core/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 20
    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const-string v3, "Media Info is null"

    invoke-direct {v0, v1, v3, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_1
    return-void
.end method

.method public getMediaPlayer()Lcom/connectsdk/service/capability/MediaPlayer;
    .locals 0

    return-object p0
.end method

.method public getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getMute(Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/service/CastService;->currentMuteStatus:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/shabakaty/downloader/dr2;->v:I

    .line 4
    invoke-static {v0}, Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;->convertPlayerStateToPlayStateStatus(I)Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "There is no media currently available"

    invoke-direct {v0, v1, v3, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/cr3;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, Lcom/shabakaty/downloader/cr3;->b:Lcom/shabakaty/downloader/oh5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/oh5;->d()J

    move-result-wide v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 7
    :cond_0
    new-instance v0, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v1, 0x0

    const-string v2, "There is no media currently available"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    return-void
.end method

.method public getPriorityLevel(Ljava/lang/Class;)Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/connectsdk/service/capability/CapabilityMethods;",
            ">;)",
            "Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/connectsdk/service/capability/MediaPlayer;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->getMediaPlayerCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/connectsdk/service/capability/MediaControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Lcom/connectsdk/service/capability/VolumeControl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->getVolumeControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Lcom/connectsdk/service/capability/WebAppLauncher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/connectsdk/service/CastService;->getWebAppLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget-object p1, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->NOT_SUPPORTED:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object p1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Chromecast"

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    return-object v0
.end method

.method public getVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/CastService;->currentVolumeLevel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postSuccess(Lcom/connectsdk/service/capability/listeners/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public getVolumeControl()Lcom/connectsdk/service/capability/VolumeControl;
    .locals 0

    return-object p0
.end method

.method public getVolumeControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public getWebAppLauncher()Lcom/connectsdk/service/capability/WebAppLauncher;
    .locals 0

    return-object p0
.end method

.method public getWebAppLauncherCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/connectsdk/service/DeviceService;->connected:Z

    return v0
.end method

.method public isWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public joinApplication(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$15;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$15;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;

    new-instance v1, Lcom/connectsdk/service/CastService$16;

    invoke-direct {v1, p0, p2}, Lcom/connectsdk/service/CastService$16;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    invoke-direct {v0, p0, v1}, Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V

    .line 2
    invoke-virtual {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/connectsdk/service/CastService;->launchingAppId:Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/connectsdk/service/CastService$17;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/connectsdk/service/CastService$17;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/CastService$ApplicationConnectionResultCallback;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public joinWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/connectsdk/service/sessions/LaunchSession;->launchSessionForAppId(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {p1, v0}, Lcom/connectsdk/service/sessions/LaunchSession;->setSessionType(Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/connectsdk/service/sessions/LaunchSession;->setService(Lcom/connectsdk/service/DeviceService;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/connectsdk/service/CastService;->joinWebApp(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/connectsdk/service/CastService;->launchWebApp(Ljava/lang/String;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;Lorg/json/JSONObject;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public launchWebApp(Ljava/lang/String;ZLcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V
    .locals 7

    .line 2
    iput-object p1, p0, Lcom/connectsdk/service/CastService;->launchingAppId:Ljava/lang/String;

    .line 3
    new-instance v5, Lcom/connectsdk/service/CastService$12;

    invoke-direct {v5, p0, p3}, Lcom/connectsdk/service/CastService$12;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;)V

    .line 4
    new-instance v6, Lcom/connectsdk/service/CastService$13;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/connectsdk/service/CastService$13;-><init>(Lcom/connectsdk/service/CastService;ZLjava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$LaunchListener;Lcom/connectsdk/service/CastService$LaunchWebAppListener;)V

    .line 5
    invoke-direct {p0, v6}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public next(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public pause(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$3;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$3;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public pinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$2;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$2;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public playMedia(Lcom/connectsdk/core/MediaInfo;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 10

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mCastClient:Lcom/connectsdk/service/CastService$CastClient;

    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/CastService$CastClient;->getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/connectsdk/service/CastService$CastClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getSubtitleInfo()Lcom/connectsdk/core/SubtitleInfo;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 42
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/connectsdk/core/MediaInfo;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/connectsdk/core/ImageInfo;

    .line 44
    invoke-virtual {v0}, Lcom/connectsdk/core/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_1
    move-object v1, p0

    move v8, p2

    move-object v9, p3

    .line 45
    invoke-direct/range {v1 .. v9}, Lcom/connectsdk/service/CastService;->playMedia(Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public playMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V
    .locals 9

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 34
    invoke-direct/range {v0 .. v8}, Lcom/connectsdk/service/CastService;->playMedia(Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/connectsdk/service/capability/MediaPlayer$LaunchListener;)V

    return-void
.end method

.method public previous(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public requestStatus(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    iget-object v1, p0, Lcom/connectsdk/service/CastService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/cr3;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/shabakaty/downloader/nb3;

    move-result-object v0

    new-instance v1, Lcom/connectsdk/service/CastService$14;

    invoke-direct {v1, p0, p1}, Lcom/connectsdk/service/CastService$14;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nb3;->c(Lcom/shabakaty/downloader/gt3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "There is no media currently available"

    .line 4
    invoke-static {v0, v2, v1, p1}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    :goto_0
    return-void
.end method

.method public rewind(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->mMediaPlayer:Lcom/shabakaty/downloader/cr3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cr3;->b()Lcom/shabakaty/downloader/dr2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/connectsdk/service/CastService$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/connectsdk/service/CastService$5;-><init>(Lcom/connectsdk/service/CastService;JLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "There is no media currently available"

    .line 4
    invoke-static {p1, v0, p2, p3}, Lcom/shabakaty/downloader/ww;->a(ILjava/lang/String;Ljava/lang/Object;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    return-void
.end method

.method public setMute(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/CastService$22;-><init>(Lcom/connectsdk/service/CastService;ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public setSubscriptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    return-void
.end method

.method public setVolume(FLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/connectsdk/service/CastService$21;-><init>(Lcom/connectsdk/service/CastService;FLcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public stop(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$4;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$4;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->runCommand(Lcom/connectsdk/service/CastService$ConnectionListener;)V

    return-void
.end method

.method public subscribeIsWebAppPinned(Ljava/lang/String;Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/sessions/WebAppSession$WebAppPinStatusListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public subscribeMediaInfo(Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/MediaPlayer$MediaInfoListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "info"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
.end method

.method public subscribeMute(Lcom/connectsdk/service/capability/VolumeControl$MuteListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/VolumeControl$MuteListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/VolumeControl$MuteListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "mute"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
.end method

.method public subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "PlayState"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
.end method

.method public subscribeVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/command/URLServiceSubscription;

    const-string v1, "volume"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/connectsdk/service/command/URLServiceSubscription;-><init>(Lcom/connectsdk/service/command/ServiceCommand$ServiceCommandProcessor;Ljava/lang/String;Lorg/json/JSONObject;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/connectsdk/service/command/URLServiceSubscription;->addListener(Lcom/connectsdk/service/capability/listeners/ResponseListener;)Lcom/connectsdk/service/capability/listeners/ResponseListener;

    .line 3
    invoke-direct {p0, v0}, Lcom/connectsdk/service/CastService;->addSubscription(Lcom/connectsdk/service/command/URLServiceSubscription;)V

    return-object v0
.end method

.method public unPinWebApp(Ljava/lang/String;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/connectsdk/service/command/ServiceCommandError;->notSupported()Lcom/connectsdk/service/command/ServiceCommandError;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/connectsdk/core/Util;->postError(Lcom/connectsdk/service/capability/listeners/ErrorListener;Lcom/connectsdk/service/command/ServiceCommandError;)V

    return-void
.end method

.method public unsubscribe(Lcom/connectsdk/service/command/URLServiceSubscription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/command/URLServiceSubscription<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/CastService;->subscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCapabilities()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/connectsdk/service/capability/MediaPlayer;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "MediaPlayer.Subtitle.WebVTT"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/connectsdk/service/capability/VolumeControl;->Capabilities:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "MediaControl.Play"

    const-string v2, "MediaControl.Pause"

    const-string v3, "MediaControl.Stop"

    const-string v4, "MediaControl.Duration"

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MediaControl.Seek"

    const-string v2, "MediaControl.Position"

    const-string v3, "MediaControl.PlayState"

    const-string v4, "MediaControl.PlayState.Subscribe"

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WebAppLauncher.Launch"

    const-string v2, "WebAppLauncher.Message.Send"

    const-string v3, "WebAppLauncher.Message.Receive"

    const-string v4, "WebAppLauncher.Message.Send.JSON"

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WebAppLauncher.Message.Receive.JSON"

    const-string v2, "WebAppLauncher.Connect"

    const-string v3, "WebAppLauncher.Disconnect"

    const-string v4, "WebAppLauncher.Join"

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/a5;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WebAppLauncher.Close"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, v0}, Lcom/connectsdk/service/DeviceService;->setCapabilities(Ljava/util/List;)V

    return-void
.end method

.method public volumeDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$20;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$20;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/CastService;->getVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V

    return-void
.end method

.method public volumeUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/connectsdk/service/CastService$19;

    invoke-direct {v0, p0, p1}, Lcom/connectsdk/service/CastService$19;-><init>(Lcom/connectsdk/service/CastService;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V

    invoke-virtual {p0, v0}, Lcom/connectsdk/service/CastService;->getVolume(Lcom/connectsdk/service/capability/VolumeControl$VolumeListener;)V

    return-void
.end method
