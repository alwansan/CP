.class public Lcom/connectsdk/service/config/ServiceConfig;
.super Ljava/lang/Object;
.source "ServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS:Ljava/lang/String; = "class"

.field public static final KEY_LAST_DETECT:Ljava/lang/String; = "lastDetection"

.field public static final KEY_UUID:Ljava/lang/String; = "UUID"


# instance fields
.field public connected:Z

.field private lastDetected:J

.field public listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

.field private serviceUUID:Ljava/lang/String;

.field public wasConnected:Z


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/config/ServiceConfig;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 11
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    .line 12
    iget-object v0, p1, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    .line 13
    iget-boolean v0, p1, Lcom/connectsdk/service/config/ServiceConfig;->connected:Z

    iput-boolean v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->connected:Z

    .line 14
    iget-boolean v0, p1, Lcom/connectsdk/service/config/ServiceConfig;->wasConnected:Z

    iput-boolean v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->wasConnected:Z

    .line 15
    iget-wide v0, p1, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    .line 16
    iget-object p1, p1, Lcom/connectsdk/service/config/ServiceConfig;->listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/config/ServiceDescription;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    .line 6
    invoke-virtual {p1}, Lcom/connectsdk/service/config/ServiceDescription;->getUUID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->connected:Z

    .line 8
    iput-boolean p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->wasConnected:Z

    .line 9
    invoke-static {}, Lcom/connectsdk/core/Util;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    .line 3
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 18
    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    const-string v0, "UUID"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    const-string v0, "lastDetection"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    return-void
.end method

.method public static getConfig(Lorg/json/JSONObject;)Lcom/connectsdk/service/config/ServiceConfig;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/connectsdk/service/config/ServiceConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    const-class v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/connectsdk/service/config/ServiceConfig;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public detect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/connectsdk/core/Util;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/connectsdk/service/config/ServiceConfig;->setLastDetected(J)V

    return-void
.end method

.method public getLastDetected()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    return-wide v0
.end method

.method public getListener()Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    return-object v0
.end method

.method public getServiceUUID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    return-object v0
.end method

.method public notifyUpdate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;->onServiceConfigUpdate(Lcom/connectsdk/service/config/ServiceConfig;)V

    :cond_0
    return-void
.end method

.method public setLastDetected(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public setListener(Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->listener:Lcom/connectsdk/service/config/ServiceConfig$ServiceConfigListener;

    return-void
.end method

.method public setServiceUUID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/connectsdk/service/config/ServiceConfig;->notifyUpdate()V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "class"

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastDetection"

    .line 3
    iget-wide v2, p0, Lcom/connectsdk/service/config/ServiceConfig;->lastDetected:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "UUID"

    .line 4
    iget-object v2, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/config/ServiceConfig;->serviceUUID:Ljava/lang/String;

    return-object v0
.end method
