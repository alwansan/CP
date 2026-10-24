.class public interface abstract Lcom/connectsdk/service/capability/TVControl;
.super Ljava/lang/Object;
.source "TVControl.java"

# interfaces
.implements Lcom/connectsdk/service/capability/CapabilityMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/capability/TVControl$ProgramListListener;,
        Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;,
        Lcom/connectsdk/service/capability/TVControl$ChannelListListener;,
        Lcom/connectsdk/service/capability/TVControl$ChannelListener;,
        Lcom/connectsdk/service/capability/TVControl$State3DModeListener;
    }
.end annotation


# static fields
.field public static final Any:Ljava/lang/String; = "TVControl.Any"

.field public static final Capabilities:[Ljava/lang/String;

.field public static final Channel_Down:Ljava/lang/String; = "TVControl.Channel.Down"

.field public static final Channel_Get:Ljava/lang/String; = "TVControl.Channel.Get"

.field public static final Channel_List:Ljava/lang/String; = "TVControl.Channel.List"

.field public static final Channel_Set:Ljava/lang/String; = "TVControl.Channel.Set"

.field public static final Channel_Subscribe:Ljava/lang/String; = "TVControl.Channel.Subscribe"

.field public static final Channel_Up:Ljava/lang/String; = "TVControl.Channel.Up"

.field public static final Get_3D:Ljava/lang/String; = "TVControl.3D.Get"

.field public static final Program_Get:Ljava/lang/String; = "TVControl.Program.Get"

.field public static final Program_List:Ljava/lang/String; = "TVControl.Program.List"

.field public static final Program_List_Subscribe:Ljava/lang/String; = "TVControl.Program.List.Subscribe"

.field public static final Program_Subscribe:Ljava/lang/String; = "TVControl.Program.Subscribe"

.field public static final Set_3D:Ljava/lang/String; = "TVControl.3D.Set"

.field public static final Subscribe_3D:Ljava/lang/String; = "TVControl.3D.Subscribe"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "TVControl.Channel.Get"

    const-string v1, "TVControl.Channel.Set"

    const-string v2, "TVControl.Channel.Up"

    const-string v3, "TVControl.Channel.Down"

    const-string v4, "TVControl.Channel.List"

    const-string v5, "TVControl.Channel.Subscribe"

    const-string v6, "TVControl.Program.Get"

    const-string v7, "TVControl.Program.List"

    const-string v8, "TVControl.Program.Subscribe"

    const-string v9, "TVControl.Program.List.Subscribe"

    const-string v10, "TVControl.3D.Get"

    const-string v11, "TVControl.3D.Set"

    const-string v12, "TVControl.3D.Subscribe"

    .line 1
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/capability/TVControl;->Capabilities:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract channelDown(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract channelUp(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)V
.end method

.method public abstract getChannelList(Lcom/connectsdk/service/capability/TVControl$ChannelListListener;)V
.end method

.method public abstract getCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)V
.end method

.method public abstract getProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)V
.end method

.method public abstract getProgramList(Lcom/connectsdk/service/capability/TVControl$ProgramListListener;)V
.end method

.method public abstract getTVControl()Lcom/connectsdk/service/capability/TVControl;
.end method

.method public abstract getTVControlCapabilityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
.end method

.method public abstract set3DEnabled(ZLcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setChannel(Lcom/connectsdk/core/ChannelInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/core/ChannelInfo;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract subscribe3DEnabled(Lcom/connectsdk/service/capability/TVControl$State3DModeListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$State3DModeListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeCurrentChannel(Lcom/connectsdk/service/capability/TVControl$ChannelListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ChannelListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeProgramInfo(Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ProgramInfoListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeProgramList(Lcom/connectsdk/service/capability/TVControl$ProgramListListener;)Lcom/connectsdk/service/command/ServiceSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/TVControl$ProgramListListener;",
            ")",
            "Lcom/connectsdk/service/command/ServiceSubscription<",
            "Lcom/connectsdk/service/capability/TVControl$ProgramListListener;",
            ">;"
        }
    .end annotation
.end method
