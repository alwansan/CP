.class public final enum Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;
.super Ljava/lang/Enum;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PairingLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

.field public static final enum OFF:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

.field public static final enum ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->OFF:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    .line 2
    new-instance v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->ON:Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->$VALUES:[Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->$VALUES:[Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    invoke-virtual {v0}, [Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/discovery/DiscoveryManager$PairingLevel;

    return-object v0
.end method
