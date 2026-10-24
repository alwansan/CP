.class public final enum Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
.super Ljava/lang/Enum;
.source "CapabilityMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/capability/CapabilityMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CapabilityPriorityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum LOW:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum NORMAL:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum NOT_SUPPORTED:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum VERY_HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

.field public static final enum VERY_LOW:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->NOT_SUPPORTED:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    .line 2
    new-instance v1, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->VERY_LOW:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    .line 3
    new-instance v3, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v5, "LOW"

    const/4 v6, 0x2

    const/16 v7, 0x19

    invoke-direct {v3, v5, v6, v7}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->LOW:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    .line 4
    new-instance v5, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v7, "NORMAL"

    const/4 v8, 0x3

    const/16 v9, 0x32

    invoke-direct {v5, v7, v8, v9}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->NORMAL:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    .line 5
    new-instance v7, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v9, "HIGH"

    const/4 v10, 0x4

    const/16 v11, 0x4b

    invoke-direct {v7, v9, v10, v11}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    .line 6
    new-instance v9, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const-string v11, "VERY_HIGH"

    const/4 v12, 0x5

    const/16 v13, 0x64

    invoke-direct {v9, v11, v12, v13}, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->VERY_HIGH:Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->$VALUES:[Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->$VALUES:[Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    invoke-virtual {v0}, [Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/capability/CapabilityMethods$CapabilityPriorityLevel;->value:I

    return v0
.end method
