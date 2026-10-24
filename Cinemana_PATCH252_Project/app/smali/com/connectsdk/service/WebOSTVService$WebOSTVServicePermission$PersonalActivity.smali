.class public final enum Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;
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
    name = "PersonalActivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;",
        ">;",
        "Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

.field public static final enum CONTROL_INPUT_TEXT:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

.field public static final enum CONTROL_MOUSE_AND_KEYBOARD:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

.field public static final enum READ_CURRENT_CHANNEL:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

.field public static final enum READ_RUNNING_APPS:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    const-string v1, "CONTROL_INPUT_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->CONTROL_INPUT_TEXT:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    .line 2
    new-instance v1, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    const-string v3, "CONTROL_MOUSE_AND_KEYBOARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->CONTROL_MOUSE_AND_KEYBOARD:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    .line 3
    new-instance v3, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    const-string v5, "READ_CURRENT_CHANNEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->READ_CURRENT_CHANNEL:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    .line 4
    new-instance v5, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    const-string v7, "READ_RUNNING_APPS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->READ_RUNNING_APPS:Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->$VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->$VALUES:[Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    invoke-virtual {v0}, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/WebOSTVService$WebOSTVServicePermission$PersonalActivity;

    return-object v0
.end method
