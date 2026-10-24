.class public final enum Lcom/connectsdk/core/ImageInfo$ImageType;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/core/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/core/ImageInfo$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/core/ImageInfo$ImageType;

.field public static final enum Album_Art:Lcom/connectsdk/core/ImageInfo$ImageType;

.field public static final enum Thumb:Lcom/connectsdk/core/ImageInfo$ImageType;

.field public static final enum Unknown:Lcom/connectsdk/core/ImageInfo$ImageType;

.field public static final enum Video_Poster:Lcom/connectsdk/core/ImageInfo$ImageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/connectsdk/core/ImageInfo$ImageType;

    const-string v1, "Thumb"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/core/ImageInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/core/ImageInfo$ImageType;->Thumb:Lcom/connectsdk/core/ImageInfo$ImageType;

    new-instance v1, Lcom/connectsdk/core/ImageInfo$ImageType;

    const-string v3, "Video_Poster"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/core/ImageInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/core/ImageInfo$ImageType;->Video_Poster:Lcom/connectsdk/core/ImageInfo$ImageType;

    new-instance v3, Lcom/connectsdk/core/ImageInfo$ImageType;

    const-string v5, "Album_Art"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/core/ImageInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/core/ImageInfo$ImageType;->Album_Art:Lcom/connectsdk/core/ImageInfo$ImageType;

    new-instance v5, Lcom/connectsdk/core/ImageInfo$ImageType;

    const-string v7, "Unknown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/core/ImageInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/core/ImageInfo$ImageType;->Unknown:Lcom/connectsdk/core/ImageInfo$ImageType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/connectsdk/core/ImageInfo$ImageType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/connectsdk/core/ImageInfo$ImageType;->$VALUES:[Lcom/connectsdk/core/ImageInfo$ImageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/core/ImageInfo$ImageType;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/core/ImageInfo$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/core/ImageInfo$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/core/ImageInfo$ImageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/core/ImageInfo$ImageType;->$VALUES:[Lcom/connectsdk/core/ImageInfo$ImageType;

    invoke-virtual {v0}, [Lcom/connectsdk/core/ImageInfo$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/core/ImageInfo$ImageType;

    return-object v0
.end method
