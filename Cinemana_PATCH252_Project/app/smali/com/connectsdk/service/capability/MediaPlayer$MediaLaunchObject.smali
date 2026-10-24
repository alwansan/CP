.class public Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/capability/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLaunchObject"
.end annotation


# instance fields
.field public launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

.field public mediaControl:Lcom/connectsdk/service/capability/MediaControl;

.field public playlistControl:Lcom/connectsdk/service/capability/PlaylistControl;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/MediaControl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 3
    iput-object p2, p0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/MediaControl;Lcom/connectsdk/service/capability/PlaylistControl;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->launchSession:Lcom/connectsdk/service/sessions/LaunchSession;

    .line 6
    iput-object p2, p0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->mediaControl:Lcom/connectsdk/service/capability/MediaControl;

    .line 7
    iput-object p3, p0, Lcom/connectsdk/service/capability/MediaPlayer$MediaLaunchObject;->playlistControl:Lcom/connectsdk/service/capability/PlaylistControl;

    return-void
.end method
