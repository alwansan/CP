.class public Lcom/connectsdk/core/ProgramInfo;
.super Ljava/lang/Object;
.source "ProgramInfo.java"


# instance fields
.field private channelInfo:Lcom/connectsdk/core/ChannelInfo;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rawData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/connectsdk/core/ProgramInfo;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/connectsdk/core/ProgramInfo;

    .line 3
    iget-object v0, p1, Lcom/connectsdk/core/ProgramInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/connectsdk/core/ProgramInfo;->name:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getChannelInfo()Lcom/connectsdk/core/ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramInfo;->channelInfo:Lcom/connectsdk/core/ChannelInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/ProgramInfo;->rawData:Ljava/lang/Object;

    return-object v0
.end method

.method public setChannelInfo(Lcom/connectsdk/core/ChannelInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/ProgramInfo;->channelInfo:Lcom/connectsdk/core/ChannelInfo;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/ProgramInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/ProgramInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setRawData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/ProgramInfo;->rawData:Ljava/lang/Object;

    return-void
.end method
