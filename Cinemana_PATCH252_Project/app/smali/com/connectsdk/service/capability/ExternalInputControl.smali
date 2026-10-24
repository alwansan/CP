.class public interface abstract Lcom/connectsdk/service/capability/ExternalInputControl;
.super Ljava/lang/Object;
.source "ExternalInputControl.java"

# interfaces
.implements Lcom/connectsdk/service/capability/CapabilityMethods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/capability/ExternalInputControl$ExternalInputListListener;
    }
.end annotation


# static fields
.field public static final Any:Ljava/lang/String; = "ExternalInputControl.Any"

.field public static final Capabilities:[Ljava/lang/String;

.field public static final List:Ljava/lang/String; = "ExternalInputControl.List"

.field public static final Picker_Close:Ljava/lang/String; = "ExternalInputControl.Picker.Close"

.field public static final Picker_Launch:Ljava/lang/String; = "ExternalInputControl.Picker.Launch"

.field public static final Set:Ljava/lang/String; = "ExternalInputControl.Set"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ExternalInputControl.Picker.Launch"

    const-string v1, "ExternalInputControl.Picker.Close"

    const-string v2, "ExternalInputControl.List"

    const-string v3, "ExternalInputControl.Set"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/connectsdk/service/capability/ExternalInputControl;->Capabilities:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract closeInputPicker(Lcom/connectsdk/service/sessions/LaunchSession;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/sessions/LaunchSession;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getExternalInput()Lcom/connectsdk/service/capability/ExternalInputControl;
.end method

.method public abstract getExternalInputControlPriorityLevel()Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
.end method

.method public abstract getExternalInputList(Lcom/connectsdk/service/capability/ExternalInputControl$ExternalInputListListener;)V
.end method

.method public abstract launchInputPicker(Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
.end method

.method public abstract setExternalInput(Lcom/connectsdk/core/ExternalInputInfo;Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/core/ExternalInputInfo;",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
