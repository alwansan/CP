.class public interface abstract Lcom/connectsdk/service/capability/MediaControl;
.super Ljava/lang/Object;
.source "MediaControl.java"

# interfaces
.implements Lcom/connectsdk/service/capability/CapabilityMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/capability/MediaControl$DurationListener;,
        Lcom/connectsdk/service/capability/MediaControl$PositionListener;,
        Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;,
        Lcom/connectsdk/service/capability/MediaControl$PlayStateStatus;
    }
.end annotation


# static fields
.field public static final Any:Ljava/lang/String; = "MediaControl.Any"

.field public static final Capabilities:[Ljava/lang/String;

.field public static final Duration:Ljava/lang/String; = "MediaControl.Duration"

.field public static final FastForward:Ljava/lang/String; = "MediaControl.FastForward"

.field public static final Next:Ljava/lang/String; = "MediaControl.Next"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final Pause:Ljava/lang/String; = "MediaControl.Pause"

.field public static final Play:Ljava/lang/String; = "MediaControl.Play"

.field public static final PlayState:Ljava/lang/String; = "MediaControl.PlayState"

.field public static final PlayState_Subscribe:Ljava/lang/String; = "MediaControl.PlayState.Subscribe"

.field public static final Position:Ljava/lang/String; = "MediaControl.Position"

.field public static final Previous:Ljava/lang/String; = "MediaControl.Previous"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Rewind:Ljava/lang/String; = "MediaControl.Rewind"

.field public static final Seek:Ljava/lang/String; = "MediaControl.Seek"

.field public static final Stop:Ljava/lang/String; = "MediaControl.Stop"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "MediaControl.Play"

    const-string v1, "MediaControl.Pause"

    const-string v2, "MediaControl.Stop"

    const-string v3, "MediaControl.Rewind"

    const-string v4, "MediaControl.FastForward"

    const-string v5, "MediaControl.Seek"

    const-string v6, "MediaControl.Previous"

    const-string v7, "MediaControl.Next"

    const-string v8, "MediaControl.Duration"

    const-string v9, "MediaControl.PlayState"

    const-string v10, "MediaControl.PlayState.Subscribe"

    const-string v11, "MediaControl.Position"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/capability/MediaControl;->Capabilities:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract fastForward(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
.end method

.method public abstract getMediaControl()Lcom/connectsdk/service/capability/MediaControl;
.end method

.method public abstract getMediaControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
.end method

.method public abstract getPlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)V
.end method

.method public abstract getPosition(Lcom/connectsdk/service/capability/MediaControl$PositionListener;)V
.end method

.method public abstract next(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract pause(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract play(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract previous(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract rewind(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract seek(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stop(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract subscribePlayState(Lcom/connectsdk/service/capability/MediaControl$PlayStateListener;)Lcom/connectsdk/service/command/ServiceSubscription;
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
.end method
