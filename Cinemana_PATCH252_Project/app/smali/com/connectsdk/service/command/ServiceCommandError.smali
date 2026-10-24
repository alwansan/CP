.class public Lcom/connectsdk/service/command/ServiceCommandError;
.super Ljava/lang/Error;
.source "ServiceCommandError.java"


# static fields
.field private static final serialVersionUID:J = 0x3abb93b590df52ecL


# instance fields
.field public code:I

.field public payload:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/connectsdk/service/command/ServiceCommandError;->code:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lcom/connectsdk/service/command/ServiceCommandError;->code:I

    .line 7
    iput-object p3, p0, Lcom/connectsdk/service/command/ServiceCommandError;->payload:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getError(I)Lcom/connectsdk/service/command/ServiceCommandError;
    .locals 3

    const/16 v0, 0x190

    if-ne p0, v0, :cond_0

    const-string v0, "Bad Request"

    goto :goto_0

    :cond_0
    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    const-string v0, "Unauthorized"

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_2

    const-string v0, "Internal Server Error"

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_3

    const-string v0, "Service Unavailable"

    goto :goto_0

    :cond_3
    const-string v0, "Unknown Error"

    .line 1
    :goto_0
    new-instance v1, Lcom/connectsdk/service/command/ServiceCommandError;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/connectsdk/service/command/ServiceCommandError;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static notSupported()Lcom/connectsdk/service/command/ServiceCommandError;
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/command/NotSupportedServiceCommandError;

    invoke-direct {v0}, Lcom/connectsdk/service/command/NotSupportedServiceCommandError;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/command/ServiceCommandError;->code:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/command/ServiceCommandError;->payload:Ljava/lang/Object;

    return-object v0
.end method
