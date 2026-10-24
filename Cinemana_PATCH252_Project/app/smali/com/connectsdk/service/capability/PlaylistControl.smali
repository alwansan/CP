.class public interface abstract Lcom/connectsdk/service/capability/PlaylistControl;
.super Ljava/lang/Object;
.source "PlaylistControl.java"

# interfaces
.implements Lcom/connectsdk/service/capability/CapabilityMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/capability/PlaylistControl$PlayMode;
    }
.end annotation


# static fields
.field public static final Any:Ljava/lang/String; = "PlaylistControl.Any"

.field public static final Capabilities:[Ljava/lang/String;

.field public static final JumpToTrack:Ljava/lang/String; = "PlaylistControl.JumpToTrack"

.field public static final Next:Ljava/lang/String; = "PlaylistControl.Next"

.field public static final Previous:Ljava/lang/String; = "PlaylistControl.Previous"

.field public static final SetPlayMode:Ljava/lang/String; = "PlaylistControl.SetPlayMode"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "PlaylistControl.Previous"

    const-string v1, "PlaylistControl.Next"

    const-string v2, "PlaylistControl.JumpToTrack"

    const-string v3, "PlaylistControl.SetPlayMode"

    .line 1
    filled-new-array {v0, v1, v2, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/capability/PlaylistControl;->Capabilities:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getPlaylistControl()Lcom/connectsdk/service/capability/PlaylistControl;
.end method

.method public abstract getPlaylistControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
.end method

.method public abstract jumpToTrack(JLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
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
.end method

.method public abstract setPlayMode(Lcom/connectsdk/service/capability/PlaylistControl$PlayMode;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/PlaylistControl$PlayMode;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
