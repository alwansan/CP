.class public Lcom/connectsdk/service/config/ServiceDescription;
.super Ljava/lang/Object;
.source "ServiceDescription.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final KEY_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_FRIENDLY:Ljava/lang/String; = "friendlyName"

.field public static final KEY_IP_ADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final KEY_MODEL_NAME:Ljava/lang/String; = "modelName"

.field public static final KEY_MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field public static final KEY_PORT:Ljava/lang/String; = "port"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public UUID:Ljava/lang/String;

.field public applicationURL:Ljava/lang/String;

.field public device:Ljava/lang/Object;

.field public friendlyName:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public lastDetection:J

.field public locationXML:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public modelDescription:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public modelNumber:Ljava/lang/String;

.field public port:I

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public serviceFilter:Ljava/lang/String;

.field public serviceID:Ljava/lang/String;

.field public serviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/provider/ssdp/Service;",
            ">;"
        }
    .end annotation
.end field

.field public serviceURI:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->lastDetection:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->lastDetection:J

    .line 5
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->lastDetection:J

    const-string v0, "filter"

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    const-string v0, "ipAddress"

    .line 11
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    const-string v0, "uuid"

    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    const-string v0, "friendlyName"

    .line 13
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->friendlyName:Ljava/lang/String;

    const-string v0, "modelName"

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelName:Ljava/lang/String;

    const-string v0, "modelNumber"

    .line 15
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelNumber:Ljava/lang/String;

    const-string v0, "port"

    const/4 v2, -0x1

    .line 16
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->port:I

    const-string v0, "version"

    .line 17
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->version:Ljava/lang/String;

    const-string v0, "serviceId"

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceID:Ljava/lang/String;

    return-void
.end method

.method public static getDescription(Lorg/json/JSONObject;)Lcom/connectsdk/service/config/ServiceDescription;
    .locals 1

    .line 1
    new-instance v0, Lcom/connectsdk/service/config/ServiceDescription;

    invoke-direct {v0, p0}, Lcom/connectsdk/service/config/ServiceDescription;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/connectsdk/service/config/ServiceDescription;
    .locals 2

    .line 2
    new-instance v0, Lcom/connectsdk/service/config/ServiceDescription;

    invoke-direct {v0}, Lcom/connectsdk/service/config/ServiceDescription;-><init>()V

    .line 3
    iget v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->port:I

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setPort(I)V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setIpAddress(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setUUID(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :catch_2
    :try_start_3
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setVersion(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 8
    :catch_3
    :try_start_4
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setFriendlyName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 9
    :catch_4
    :try_start_5
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setManufacturer(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 10
    :catch_5
    :try_start_6
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setModelName(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6

    .line 11
    :catch_6
    :try_start_7
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setModelNumber(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7

    .line 12
    :catch_7
    :try_start_8
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setModelDescription(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_8

    .line 13
    :catch_8
    :try_start_9
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->applicationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setApplicationURL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9

    .line 14
    :catch_9
    :try_start_a
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->locationXML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setLocationXML(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_a

    .line 15
    :catch_a
    :try_start_b
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_b

    .line 16
    :catch_b
    :try_start_c
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceList(Ljava/util/List;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_c

    .line 17
    :catch_c
    :try_start_d
    iget-object v1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/connectsdk/service/config/ServiceDescription;->setServiceFilter(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceDescription;->clone()Lcom/connectsdk/service/config/ServiceDescription;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->applicationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->device:Ljava/lang/Object;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDetection()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->lastDetection:J

    return-wide v0
.end method

.method public getLocationXML()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->locationXML:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->port:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceFilter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/provider/ssdp/Service;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceList:Ljava/util/List;

    return-object v0
.end method

.method public getServiceURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceDescription;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->applicationURL:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->device:Ljava/lang/Object;

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public setLastDetection(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->lastDetection:J

    return-void
.end method

.method public setLocationXML(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->locationXML:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelDescription:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelNumber:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->port:I

    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public setServiceFilter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceID:Ljava/lang/String;

    return-void
.end method

.method public setServiceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/connectsdk/discovery/provider/ssdp/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceList:Ljava/util/List;

    return-void
.end method

.method public setServiceURI(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceURI:Ljava/lang/String;

    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceDescription;->version:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "filter"

    .line 2
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceFilter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ipAddress"

    .line 3
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    .line 4
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "friendlyName"

    .line 5
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modelName"

    .line 6
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modelNumber"

    .line 7
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->modelNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "port"

    .line 8
    iget v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    .line 9
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serviceId"

    .line 10
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceDescription;->serviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
