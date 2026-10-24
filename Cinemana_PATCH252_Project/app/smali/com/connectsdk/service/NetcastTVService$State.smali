.class final enum Lcom/connectsdk/service/NetcastTVService$State;
.super Ljava/lang/Enum;
.source "NetcastTVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/NetcastTVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/NetcastTVService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum CONNECTING:Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum DISCONNECTING:Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum NONE:Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum PAIRED:Lcom/connectsdk/service/NetcastTVService$State;

.field public static final enum PAIRING:Lcom/connectsdk/service/NetcastTVService$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/service/NetcastTVService$State;->NONE:Lcom/connectsdk/service/NetcastTVService$State;

    .line 2
    new-instance v1, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v3, "INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/service/NetcastTVService$State;->INITIAL:Lcom/connectsdk/service/NetcastTVService$State;

    .line 3
    new-instance v3, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v5, "CONNECTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/service/NetcastTVService$State;->CONNECTING:Lcom/connectsdk/service/NetcastTVService$State;

    .line 4
    new-instance v5, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v7, "PAIRING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/service/NetcastTVService$State;->PAIRING:Lcom/connectsdk/service/NetcastTVService$State;

    .line 5
    new-instance v7, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v9, "PAIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/connectsdk/service/NetcastTVService$State;->PAIRED:Lcom/connectsdk/service/NetcastTVService$State;

    .line 6
    new-instance v9, Lcom/connectsdk/service/NetcastTVService$State;

    const-string v11, "DISCONNECTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/connectsdk/service/NetcastTVService$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/connectsdk/service/NetcastTVService$State;->DISCONNECTING:Lcom/connectsdk/service/NetcastTVService$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/connectsdk/service/NetcastTVService$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/connectsdk/service/NetcastTVService$State;->$VALUES:[Lcom/connectsdk/service/NetcastTVService$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/NetcastTVService$State;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/NetcastTVService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/NetcastTVService$State;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/NetcastTVService$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/NetcastTVService$State;->$VALUES:[Lcom/connectsdk/service/NetcastTVService$State;

    invoke-virtual {v0}, [Lcom/connectsdk/service/NetcastTVService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/NetcastTVService$State;

    return-object v0
.end method
