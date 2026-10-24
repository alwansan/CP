.class public final enum Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;
.super Ljava/lang/Enum;
.source "LaunchSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/LaunchSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchSessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

.field public static final enum App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

.field public static final enum ExternalInputPicker:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

.field public static final enum Media:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

.field public static final enum Unknown:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

.field public static final enum WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->Unknown:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    .line 2
    new-instance v1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const-string v3, "App"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->App:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    .line 3
    new-instance v3, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const-string v5, "ExternalInputPicker"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->ExternalInputPicker:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    .line 4
    new-instance v5, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const-string v7, "Media"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->Media:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    .line 5
    new-instance v7, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const-string v9, "WebApp"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->WebApp:Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->$VALUES:[Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->$VALUES:[Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    invoke-virtual {v0}, [Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/sessions/LaunchSession$LaunchSessionType;

    return-object v0
.end method
