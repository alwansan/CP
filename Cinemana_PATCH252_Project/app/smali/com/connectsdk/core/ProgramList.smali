.class public Lcom/connectsdk/core/ProgramList;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Lcom/connectsdk/core/JSONSerializable;


# instance fields
.field public channel:Lcom/connectsdk/core/ChannelInfo;

.field public programList:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/connectsdk/core/ChannelInfo;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/core/ProgramList;->channel:Lcom/connectsdk/core/ChannelInfo;

    .line 3
    iput-object p2, p0, Lcom/connectsdk/core/ProgramList;->programList:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/connectsdk/core/ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramList;->channel:Lcom/connectsdk/core/ChannelInfo;

    return-object v0
.end method

.method public getProgramList()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramList;->programList:Lorg/json/JSONArray;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/connectsdk/core/ProgramList;->channel:Lcom/connectsdk/core/ChannelInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "channel"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/connectsdk/core/ProgramList;->programList:Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v1, "programList"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
