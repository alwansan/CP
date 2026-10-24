.class public final Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;
.super Ljava/lang/Object;
.source "UserManagementConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000fR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;",
        "",
        "",
        "baseUrl",
        "Ljava/lang/String;",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "Lcom/shabakaty/usermanagement/data/model/ClientInformation;",
        "clientInformation",
        "Lcom/shabakaty/usermanagement/data/model/ClientInformation;",
        "getClientInformation",
        "()Lcom/shabakaty/usermanagement/data/model/ClientInformation;",
        "",
        "isDebug",
        "Z",
        "()Z",
        "deviceFlowClientInformation",
        "getDeviceFlowClientInformation",
        "<init>",
        "(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/ClientInformation;ZLcom/shabakaty/usermanagement/data/model/ClientInformation;)V",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final baseUrl:Ljava/lang/String;

.field public final clientInformation:Lcom/shabakaty/usermanagement/data/model/ClientInformation;

.field public final deviceFlowClientInformation:Lcom/shabakaty/usermanagement/data/model/ClientInformation;

.field public final isDebug:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/ClientInformation;ZLcom/shabakaty/usermanagement/data/model/ClientInformation;)V
    .locals 1

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientInformation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->clientInformation:Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    iput-boolean p3, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->isDebug:Z

    iput-object p4, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->deviceFlowClientInformation:Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/ClientInformation;ZLcom/shabakaty/usermanagement/data/model/ClientInformation;ILcom/shabakaty/downloader/nn0;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;-><init>(Ljava/lang/String;Lcom/shabakaty/usermanagement/data/model/ClientInformation;ZLcom/shabakaty/usermanagement/data/model/ClientInformation;)V

    return-void
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientInformation()Lcom/shabakaty/usermanagement/data/model/ClientInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->clientInformation:Lcom/shabakaty/usermanagement/data/model/ClientInformation;

    return-object v0
.end method

.method public final isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/usermanagement/data/model/UserManagementConfiguration;->isDebug:Z

    return v0
.end method
