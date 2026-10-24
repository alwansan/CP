.class public final enum Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;
.super Ljava/lang/Enum;
.source "WebOSTVService.java"

# interfaces
.implements Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Open"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;",
        ">;",
        "Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

.field public static final enum APP_TO_APP:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

.field public static final enum CONTROL_AUDIO:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

.field public static final enum CONTROL_INPUT_MEDIA_PLAYBACK:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

.field public static final enum LAUNCH:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

.field public static final enum LAUNCH_WEB:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const-string v1, "LAUNCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->LAUNCH:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    .line 2
    new-instance v1, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const-string v3, "LAUNCH_WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->LAUNCH_WEB:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    .line 3
    new-instance v3, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const-string v5, "APP_TO_APP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->APP_TO_APP:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    .line 4
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const-string v7, "CONTROL_AUDIO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->CONTROL_AUDIO:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    .line 5
    new-instance v7, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const-string v9, "CONTROL_INPUT_MEDIA_PLAYBACK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->CONTROL_INPUT_MEDIA_PLAYBACK:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->$VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->$VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    invoke-virtual {v0}, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$Open;

    return-object v0
.end method
