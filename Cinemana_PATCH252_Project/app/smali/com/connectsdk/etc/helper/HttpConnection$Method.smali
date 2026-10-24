.class public final enum Lcom/connectsdk/etc/helper/HttpConnection$Method;
.super Ljava/lang/Enum;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/etc/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/connectsdk/etc/helper/HttpConnection$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum DELETE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum GET:Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum POST:Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum PUT:Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum SUBSCRIBE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

.field public static final enum UNSUBSCRIBE:Lcom/connectsdk/etc/helper/HttpConnection$Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;->GET:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    .line 2
    new-instance v1, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/connectsdk/etc/helper/HttpConnection$Method;->POST:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    .line 3
    new-instance v3, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/connectsdk/etc/helper/HttpConnection$Method;->PUT:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    .line 4
    new-instance v5, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/connectsdk/etc/helper/HttpConnection$Method;->DELETE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    .line 5
    new-instance v7, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v9, "SUBSCRIBE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/connectsdk/etc/helper/HttpConnection$Method;->SUBSCRIBE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    .line 6
    new-instance v9, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const-string v11, "UNSUBSCRIBE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/connectsdk/etc/helper/HttpConnection$Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/connectsdk/etc/helper/HttpConnection$Method;->UNSUBSCRIBE:Lcom/connectsdk/etc/helper/HttpConnection$Method;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/connectsdk/etc/helper/HttpConnection$Method;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/connectsdk/etc/helper/HttpConnection$Method;->$VALUES:[Lcom/connectsdk/etc/helper/HttpConnection$Method;

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

.method public static valueOf(Ljava/lang/String;)Lcom/connectsdk/etc/helper/HttpConnection$Method;
    .locals 1

    .line 1
    const-class v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/etc/helper/HttpConnection$Method;

    return-object p0
.end method

.method public static values()[Lcom/connectsdk/etc/helper/HttpConnection$Method;
    .locals 1

    .line 1
    sget-object v0, Lcom/connectsdk/etc/helper/HttpConnection$Method;->$VALUES:[Lcom/connectsdk/etc/helper/HttpConnection$Method;

    invoke-virtual {v0}, [Lcom/connectsdk/etc/helper/HttpConnection$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/connectsdk/etc/helper/HttpConnection$Method;

    return-object v0
.end method
