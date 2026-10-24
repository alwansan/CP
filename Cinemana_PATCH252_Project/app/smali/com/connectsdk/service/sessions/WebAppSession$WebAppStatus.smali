.class public final enum Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;
.super Ljava/lang/Enum;
.source "WebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/WebAppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebAppStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

.field public static final enum Background:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

.field public static final enum Closed:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

.field public static final enum Foreground:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

.field public static final enum Open:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

.field public static final enum Unknown:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->Unknown:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    .line 2
    new-instance v1, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const-string v3, "Open"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->Open:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    .line 3
    new-instance v3, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const-string v5, "Background"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->Background:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    .line 4
    new-instance v5, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const-string v7, "Foreground"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->Foreground:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    .line 5
    new-instance v7, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const-string v9, "Closed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->Closed:Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->$VALUES:[Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->$VALUES:[Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    invoke-virtual {v0}, [Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/sessions/WebAppSession$WebAppStatus;

    return-object v0
.end method
